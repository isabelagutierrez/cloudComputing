import os
import socket
from datetime import datetime
from flask import Flask, jsonify

app = Flask(__name__)

@app.route("/")
def index():
    return jsonify({
        "mensaje": "API Flask en Docker",
        "hostname_contenedor": socket.gethostname(),
        "hostname_ec2": os.environ.get("HOST_HOSTNAME", "desconocido"),
        "hora_actual": datetime.now().isoformat(timespec="seconds"),
    })

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)