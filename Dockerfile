FROM python:3.11.3-slim-bullseye

WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

COPY requirements.txt .

RUN python -m pip install --upgrade pip \
 && python -m pip install -r requirements.txt

COPY . /app

EXPOSE 8080

ENV FLASK_APP=labapp:app
CMD exec flask run --host=0.0.0.0 -p ${PORT}
