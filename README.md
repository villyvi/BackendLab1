# Лабораторна 1 — Технології серверного ПЗ (Flask healthcheck)

## Мета
Налаштувати шаблон проекту, створити healthcheck endpoint, налаштувати Docker та docker-compose, задеплоїти (render.com).

## Локальний запуск (варіант A — без Docker)
python3 -m venv env
.\env\Scripts\Activate.ps1
pip install -r requirements.txt

to start through the terminal j use these btchs:
$env:FLASK_APP = "labapp:app"
flask run --host=0.0.0.0 -p 8080

## Локальний запуск (варіант B — Docker)
docker build . -t lab1-flask:latest
docker run -it --rm -p 8080:8080 -e PORT=8080 lab1-flask:latest


## docker-compose
docker build . -t backendlab1:latest
docker-compose build
docker-compose up


## Перевірка
http://localhost:8080
http://localhost:8080/healthcheck
http://127.0.0.1:8080/

## Git 
git init
git add .
git commit -m "Lab1"
git remote add origin https://github.com/villyvi/BackendLab1.git 
git push -u origin main


## Деплой (render.com)
1. Спочатку реєстрація ака підключення гіту
2. Deploy
3. https://backendlab1-1-37ur.onrender.com