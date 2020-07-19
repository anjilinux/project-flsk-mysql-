FROM python
WORKDIR /code
RUN apt update
COPY requirements.txt /code/
RUN apt install -y default-libmysqlclient-dev 	
RUN pip3 install -r requirements.txt
COPY . /code/
RUN export LC_ALL=C.UTF-8   && export LANG=C.UTF-8 
ENV FLASK_APP app.py
CMD flask run --host=0.0.0.0
 