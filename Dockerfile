FROM python:3.7-slim

ADD . /code

WORKDIR /code

RUN pip install -r requirements.txt

COPY cert.crt /home/cert.crt

COPY cert.key /home/cert.key

CMD ["python", "run.py", "--address='0.0.0.0'", "--certfile='/home/cert.crt'", "--keyfile='/home/cert.key'"]
