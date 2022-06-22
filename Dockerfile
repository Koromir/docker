FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
	python3.7 \
	python3-pip \
	&& \
	apt-get clean

LABEL Maintainer="Konrad"
		
WORKDIR /home

COPY python_HELLO_WORLD.py ./

EXPOSE 80/tcp

CMD ["python", "./python_HELLO_WORLD.py"]
