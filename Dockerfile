FROM python:3.9-slim-buster
RUN mkdir /app
WORKDIR /app

RUN apk update && apk upgrade

COPY . /
RUN pip install -r requirements.txt
CMD ["python","manage.py","runserver","0.0.0.0:8000"]
