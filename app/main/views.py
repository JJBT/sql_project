from flask import request, jsonify, render_template
from flask_cors import cross_origin
from app.main import bp, services


@bp.route("/", methods=["GET", "POST"])
@cross_origin()
def index():
    status = {"status": "Hello, World"}
    return jsonify(status)


@bp.route("/get_all_tables", methods=["GET"])
@cross_origin()
def get_tables():
    data = services.get_all_tables()
    return jsonify(data)


@bp.route("/show_table", methods=["POST"])
@cross_origin()
def show_table():
    params = request.get_json()
    print(params)
    table_name = params['table']
    data = services.show_table(table_name)
    return jsonify(data)


@bp.route("/get_columns", methods=["POST"])
@cross_origin()
def get_cols():
    params = request.get_json()
    table_name = params['table']
    data = services.get_columns(table_name)
    return jsonify(data)


@bp.route("/delete_rows", methods=["POST"])
@cross_origin()
def delete_rows():
    params = request.get_json()
    table_name = params['table']
    ids = params['ids']
    status = services.delete_rows(table_name, ids)
    return jsonify(status)


@bp.route("/insert_row", methods=["POST"])
@cross_origin()
def insert_row():
    params = request.get_json()
    table_name = params['table']
    obj = params['values']
    status = services.insert_row(table_name, obj)
    return jsonify(status)


@bp.route("/update_row", methods=["POST"])
@cross_origin()
def update_row():
    params = request.get_json()
    table_name = params['table']
    obj = params['values']
    status = services.update_row(table_name, obj)
    return jsonify(status)
