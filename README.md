# Лабораторна 1 — Технології серверного ПЗ (Flask healthcheck)

## Мета
Налаштувати шаблон проекту, створити healthcheck endpoint, налаштувати Docker та docker-compose, задеплоїти (render.com).

## Локальний запуск (варіант A — без Docker)
python3 -m venv env
.\env\Scripts\Activate.ps1
pip install -r requirements.txt
$env:FLASK_APP = "labapp:app"
flask run --host=0.0.0.0 -p 8080

## Локальний запуск (варіант B — Docker)
docker build . -t lab1-flask:latest
docker run -it --rm -p 8080:8080 -e PORT=8080 lab1-flask:latest


## docker-compose
docker-compose build
docker-compose up


## Перевірка
http://localhost:8080
http://localhost:8080/healthcheck

## Git коміти
- chore: project scaffold (flask app skeleton)
- feat: add basic flask app and healthcheck endpoint
- chore: add Dockerfile and docker-compose configuration
- docs: add README with setup and deployment instructions

## Деплой (render.com)
1. Підключи GitHub repo
2. Build: використовує Dockerfile
3. Start: `flask --app app run --host=0.0.0.0 -p $PORT`
4. Перевір `<url>/healthcheck`
