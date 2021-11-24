FROM registry.cn-hangzhou.aliyuncs.com/abuxliu/flask:1.1.2

MAINTAINER abuxliu <abuxliu@gmail.com>

ENV LANG zh_CN.UTF-8

WORKDIR /usr/local/application

COPY . .

CMD ["python", "main.py"]
