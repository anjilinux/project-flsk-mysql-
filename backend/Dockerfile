FROM ubuntu:bionic
WORKDIR /code
RUN apt update
COPY requirements.txt /code/
RUN apt install -y default-libmysqlclient-dev python3-pip 	
RUN pip3 install -r requirements.txt
COPY . /code/
ENV FLASK_APP app.py
CMD flask run --host=0.0.0.0
 