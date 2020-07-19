FROM ubuntu:bionic
WORKDIR /code
RUN apt update
COPY requirements.txt /code/
RUN apt install -y software-properties-common
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt update
RUN apt install python3.8
RUN apt install -y default-libmysqlclient-dev python3-pip 	
RUN pip3 install -r requirements.txt
COPY . /code/
RUN export LC_ALL=C.UTF-8   && export LANG=C.UTF-8 
ENV FLASK_APP app.py
CMD flask run --host=0.0.0.0
 