FROM python:3.7-alpine
RUN apt-get update && apt-get upgrade -y
RUN apt-get install python3 python3-pip git -y
RUN git clone https://github.com/ribas28/Crud-python-raizen.git
RUN pip3 install -r requirements.txt
RUN python3 -m flask db init && python3 -m flask db migrate && python3 -m flask db upgrade

CMD [“python3”, “main.py”]
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

EXPOSE 5000
ENTRYPOINT ["./boot.sh" ]