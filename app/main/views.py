from flask import request, jsonify, render_template
from app.main import bp, services, forms


@bp.route("/", methods=["GET", "POST"])
def index():
    """
    Main page. With buttons and tables. Different procedures
    """
    if request.method == "POST":
        data = services.show_table(request.get_json()['table'])
        return jsonify(data)
    return jsonify(services.get_all_tables())
