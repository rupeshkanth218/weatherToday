FROM python:3.9-slim-buster
RUN mkdir /app
WORKDIR /app
ADD . /app/

COPY ./requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt
CMD ["python","manage.py","runserver","0.0.0.0:8000"]
