FROM python:3.5

ENV PYTHONUNBUFFERED 1

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY requirements.txt /usr/src/app/

RUN pip install -r requirements.txt

COPY app /usr/src/app/

CMD gunicorn --reload Quiz.wsgi:application -w 2 -b 0.0.0.0:8000
