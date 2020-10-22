from flask import request, jsonify, render_template
from app.main import bp, services


@bp.route("/get_all_tables", methods=["GET"])
def get_tables():
    if request.method == "GET":
        data = services.get_all_tables()
        return jsonify(data)


@bp.route("/show_table", methods=["POST"])
def show_table():
    if request.method == "POST":
        table_name = request.get_json()['table']
        data = services.show_table(table_name)
        return jsonify(data)


@bp.route("/get_columns", methods=["POST"])
def get_cols():
    if request.method == "POST":
        table_name = request.get_json()['table']
        data = services.get_columns(table_name)
        return jsonify(data)
