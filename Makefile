build:
	docker build -t adolphlwq/sonarqube-maven:latest
run:
	docker run -d -p 9000:9000 -p 9092:9092 --name sonar adolphlwq/sonarqube-maven:latest
stop:
	docker stop sonar
clean: stop
	docker rm sonar