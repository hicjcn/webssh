FROM python:3.7-slim

ADD . /code

WORKDIR /code

RUN pip install -r requirements.txt -i http://pypi.douban.com/simple --trusted-host pypi.douban.com

CMD ["python", "run.py", "--address='0.0.0.0'", "--port=80", "--sslport=443", "--certfile='/code/cert.crt'", "--keyfile='/code/cert.key'"]
#CMD ["pwd"]
