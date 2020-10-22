from flask import request, jsonify, render_template
from app.main import bp, services


@bp.route("/", methods=["GET", "POST"])
def index():
    return jsonify({"message": "Hello, World"})


@bp.route("/get_all_tables", methods=["GET"])
def get_tables():
    data = services.get_all_tables()
    return jsonify(data)


@bp.route("/show_table", methods=["POST"])
def show_table():
    table_name = request.get_json()['table']
    data = services.show_table(table_name)
    return jsonify(data)


@bp.route("/get_columns", methods=["POST"])
def get_cols():
    table_name = request.get_json()['table']
    data = services.get_columns(table_name)
    return jsonify(data)


@bp.route("/delete_rows", methods=["POST"])
def delete_rows():
    params = request.get_json()
    table_name = params['table']
    ids = params['ids']
    status = services.delete_rows(table_name, ids)
    return jsonify(status)


@bp.route("/insert_row", methods=["POST"])
def insert_row():
    params = request.get_json()
    table_name = params['table']
    obj = params['values']
    status = services.insert_row(table_name, obj)
    return jsonify(status)


@bp.route("/update_row", methods=["POST"])
def update_row():
    params = request.get_json()
    table_name = params['table']
    obj = params['values']
    status = services.update_row(table_name, obj)
    return jsonify(status)
