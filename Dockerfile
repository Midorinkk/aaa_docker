FROM python:3.8

ENV FLASK_APP=server

WORKDIR app
COPY . /app
RUN pip install -r requirements.txt

EXPOSE 8080

CMD flask run -h 0.0.0.0 -p 8080

