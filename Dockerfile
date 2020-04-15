FROM python:3.7-slim

ADD . /code

WORKDIR /code

RUN pip install -r requirements.txt

COPY cert.crt /code/cert.crt

COPY cert.key /code/cert.key

CMD ["python", "run.py", "--address='0.0.0.0'", "--certfile='/code/cert.crt'", "--keyfile='/code/cert.key'"]
