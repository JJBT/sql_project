from flask import request, jsonify, render_template
from flask_cors import cross_origin
from app.main import bp, services


@bp.route("/", methods=["GET", "POST"])
@cross_origin()
def index():
    status = {"status": "Hello, World"}
    return jsonify(status)


@bp.route("/refresh_db", methods=["GET"])
@cross_origin()
def refresh_db():
    status = services.refresh_db()
    return jsonify(status)


@bp.route("/get_all_tables", methods=["GET"])
@cross_origin()
def get_tables():
    data = services.get_all_tables()
    return jsonify(data)


@bp.route("/show_table", methods=["POST"])
@cross_origin()
def show_table():
    params = request.get_json(force=True)
    table_name = params['table']
    data = services.show_table(table_name)
    return jsonify(data)


@bp.route("/get_columns", methods=["POST"])
@cross_origin()
def get_cols():
    params = request.get_json(force=True)
    table_name = params['table']
    data = services.get_columns(table_name)
    return jsonify(data)


@bp.route("/delete_rows", methods=["POST"])
@cross_origin()
def delete_rows():
    params = request.get_json(force=True)
    table_name = params['table']
    ids = params['ids']
    status = services.delete_rows(table_name, ids)
    return jsonify(status)


@bp.route("/insert_row", methods=["POST"])
@cross_origin()
def insert_row():
    params = request.get_json(force=True)
    table_name = params['table']
    obj = params['values']
    status = services.insert_row(table_name, obj)
    return jsonify(status)


@bp.route("/update_row", methods=["POST"])
@cross_origin()
def update_row():
    params = request.get_json(force=True)
    table_name = params['table']
    obj = params['values']
    status = services.update_row(table_name, obj)
    return jsonify(status)


@bp.route("/search", methods=["POST"])
@cross_origin()
def search():
    params = request.get_json(force=True)
    table_name = params['table']
    column = params['column']
    search_request = params['request']
    data = services.search(table_name, column, search_request)
    return jsonify(data)


# ========= CUSTOM QUERY ===================


@bp.route("/query", methods=["POST"])
@cross_origin()
def custom_query():
    params = request.get_json(force=True)
    proc_name = params['proc']
    args = params.get('args', None)
    data = services.custom_query(proc_name, args)
    return jsonify(data)
