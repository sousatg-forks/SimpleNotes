build:
	docker build -t sousatg/simplenotes .

run:
	docker run -p 8001:8001 -e PORT=8001 sousatg/simplenotes

push:
	docker push sousatg/simplenotes