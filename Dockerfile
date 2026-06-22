#base image 
FROM python:3.8-slim-bullseye

#WORDIR

WORKDIR /app

#COPY

COPY . /app

#RUN

RUN apt-get update -y && apt-get install awscli -y
RUN pip install -r requirements.txt

#CMD

CMD ["python3","application.py"]
