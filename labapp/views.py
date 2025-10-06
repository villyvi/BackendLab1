from labapp import app
from flask import jsonify
from datetime import datetime

@app.route("/")
def index():
    return jsonify({
        "message": "Драстє. Лабораторна 1 від PinkFluffyUnicorn123. Далі /healthcheck"
    })

@app.route("/healthcheck", methods=["GET"])
def healthcheck():
    return jsonify({
        "status": "ok",
        "timestamp": datetime.utcnow().isoformat() + "Z"
    }), 200
