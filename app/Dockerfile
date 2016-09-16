FROM python:3.5

ENV PYTHONUNBUFFERED 1

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY requirements.txt /usr/src/app/

RUN pip install -r requirements.txt

COPY . /usr/src/app/

ARG PUID=1000
ARG PGID=1000
RUN groupadd -g $PGID cpuser && \
    useradd -u $PUID -g cpuser -m cpuser

CMD gunicorn --reload app.wsgi:application -w 2 -b 0.0.0.0:8000
