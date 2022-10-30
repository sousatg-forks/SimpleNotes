FROM python:3.8

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN apt-get update &&\
    apt-get install -y binutils libproj-dev gdal-bin

RUN apt-get -y install curl
HEALTHCHECK --interval=5s --timeout=3s --retries=3 \
    CMD curl -f http://localhost:80 || exit 1

#RUN pip3 install --upgrade pip

WORKDIR /app

COPY requirements.txt requirements.txt

RUN python -m pip install -r requirements.txt

COPY . .

RUN pip install gunicorn

# CMD "gunicorn -c simplenotes/gunicorn.conf.py simplenotes.wsgi"
CMD ["gunicorn"  , "-b", "0.0.0.0:8001", "simplenotes.wsgi:application"]