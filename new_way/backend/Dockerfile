FROM python:3.6
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY . /code/
ENV FLASK_APP app1.py
CMD flask run --host=0.0.0.0
 