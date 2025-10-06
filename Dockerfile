FROM python:3.11-slim

WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

COPY requirements.txt .

RUN python -m pip install --upgrade pip \
 && python -m pip install -r requirements.txt

COPY . /app

EXPOSE 8080

CMD ["sh", "-c", "flask --app app --debug run --host=0.0.0.0 -p ${PORT:-8080}"]
