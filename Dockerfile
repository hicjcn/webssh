FROM python:3.7-slim
ADD . /code
WORKDIR /code
RUN pip install -r requirements.txt
COPY /root/cert/Apache/ /home/
CMD ["python", "run.py", "--address='0.0.0.0'", "--certfile='/home/2_hw.jcera.cn.crt'", "--keyfile='/home/3_hw.jcera.cn.key'"]
