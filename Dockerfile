
FROM python:3.65-slim

WORKDIR /app

COPY ./app

RUN pip install --trusted-host pypi.python.org -r requirements.txt

EXPOSE 80

ENV NAME MovieRecommender

CMV ["python", "MovieRecommender"]
