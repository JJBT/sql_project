from flask import request, jsonify
from app.main import bp


@bp.route("/", methods=['GET'])
def index():
    """
    Main page. With buttons and tables. Different procedures
    """
    return jsonify({"message": "ok!"})
