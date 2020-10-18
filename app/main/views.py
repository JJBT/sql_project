from flask import request, jsonify
from app.main import bp


@bp.route("/", methods=['GET'])
def index():
    return jsonify({"message": "ok"})
