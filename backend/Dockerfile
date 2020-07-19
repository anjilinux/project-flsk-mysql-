FROM ubuntu
WORKDIR /code
COPY requirements.txt /code/
RUN apt update
RUN apt install -y lilibmysqlclient-dev python3-pip 	
RUN pip3 install -r requirements.txt
COPY . /code/
ENV FLASK_APP app.py
CMD flask run --host=0.0.0.0
 