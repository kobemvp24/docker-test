FROM python:latest
LABEL maintaner="a591254807@gmail.com"
COPY . /app
WORKDIR /app
RUN yum -y install httpd
RUN pip install flask redis
EXPOSE 5000
CMD [ "python", "app.py" ]
