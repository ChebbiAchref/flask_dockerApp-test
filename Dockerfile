FROM python:3.9-slim
WORKDIR /app
RUN pip install flask flask-mysql
COPY . /app
EXPOSE 8080
CMD ["flask", "run", "--host=0.0.0.0", "--port=8080"]

#ENTYPOINT FLASK_APP=./app.py flask run

