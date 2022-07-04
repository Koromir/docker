FROM ubuntu:20.04

WORKDIR /home

RUN apt-get update && apt-get install -y \
	python3.7 \
	python3-pip \
	&& \
	apt-get clean

LABEL Maintainer="Konrad"
		
COPY python_HELLO_WORLD.py ./

CMD [ "python3", "/home/python_HELLO_WORLD.py" ]
