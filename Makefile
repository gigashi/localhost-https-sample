all:

run-nginx: cert/server.key cert/server.pem
	@echo 'access >> https://127-0-0-1.my.local-ip.co'
	docker-compose up

cert/server.key:
	mkdir -pv cert
	curl -s http://local-ip.co/cert/server.key > cert/server.key

cert/server.pem:
	mkdir -pv cert
	curl -s http://local-ip.co/cert/server.pem > cert/server.pem

clean:
	docker-compose down
	rm -f cert/*