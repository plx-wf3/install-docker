FROM ubuntu

RUN apt upgrade
RUN apt -y install python python-pip vim
RUN pip install flask
COPY app.py /opt

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0