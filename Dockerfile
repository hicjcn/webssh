FROM python:3.7-slim

ADD . /code

WORKDIR /code

RUN pip install -r requirements.txt -i http://pypi.douban.com/simple --trusted-host pypi.douban.com

COPY cert.crt cert.crt

COPY cert.key cert.key

CMD ["python", "run.py", "--address='0.0.0.0'", "--certfile='cert.crt'", "--keyfile='cert.key'"]
