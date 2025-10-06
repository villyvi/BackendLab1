# Copilot Instructions for lab1 Flask Healthcheck Project

## Project Overview
- This is a minimal Flask web service for healthcheck endpoint demonstration and Docker deployment.
- Main app code is in `app/` (`__init__.py` creates the Flask app, `views.py` defines routes).
- Designed for easy local and containerized development, and deployment to render.com.

## Architecture & Key Files
- `app/__init__.py`: Initializes Flask app as `app`. Imports routes from `app/views.py`.
- `app/views.py`: Define all Flask routes (e.g., `/healthcheck`).
- `requirements.txt`: Python dependencies (Flask, etc.).
- `Dockerfile`, `docker-compose.yml`: Containerization and multi-service orchestration.
- `README.md`: Setup, run, and deployment instructions (always check for workflow details).

## Developer Workflows
- **Local dev (venv):**
  - Create venv: `python3 -m venv env`
  - Activate: `source env/bin/activate` (Linux/macOS) or `env\Scripts\Activate.ps1` (Windows PowerShell)
  - Install deps: `pip install -r requirements.txt`
  - Run: `flask run --host=0.0.0.0 -p 8080` (set `FLASK_APP=app`)
- **Docker:**
  - Build: `docker build . -t lab1-flask:latest`
  - Run: `docker run -it --rm -p 8080:8080 -e PORT=8080 lab1-flask:latest`
- **docker-compose:**
  - Build: `docker-compose build`
  - Up: `docker-compose up`
- **Healthcheck:**
  - Endpoint: `GET /healthcheck` (returns status)

## Conventions & Patterns
- All routes should be defined in `app/views.py` and imported via `app/__init__.py`.
- Flask app is always named `app` (for `FLASK_APP` env var and Docker entrypoint).
- Use port 8080 for local and container runs.
- Minimal code structure: avoid unnecessary files or submodules.
- Commit messages follow: `chore:`, `feat:`, `docs:` prefixes.

## Integration Points
- No database or external API integration in this template.
- Designed for stateless healthcheck and easy container deployment.
- Render.com deploys using Dockerfile and `flask --app app run ...`.

## Examples
- To run locally (Windows PowerShell):
  ```powershell
  $env:FLASK_APP = "app"
  flask run --host=0.0.0.0 -p 8080
  ```
- To run in Docker:
  ```bash
  docker build . -t lab1-flask:latest
  docker run -it --rm -p 8080:8080 -e PORT=8080 lab1-flask:latest
  ```

## References
- See `README.md` for full setup and deployment details.
- Key files: `app/__init__.py`, `app/views.py`, `Dockerfile`, `docker-compose.yml`, `requirements.txt`.

---
If any section is unclear or missing, please provide feedback for improvement.