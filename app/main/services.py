from flask import current_app
from subprocess import check_output


def show_table(table_name):
    conn = current_app.config.get("CONNECTION")

    with conn.cursor() as cursor:
        query = f"""SELECT * FROM {table_name};"""
        cursor.execute(query)
        rows = cursor.fetchall()

    columns = get_columns(table_name)
    result = {
        'columns': columns,
        'rows': rows
    }
    return result


def get_columns(table_name):
    columns = {
        'Team': ['id', 'division', 'plays', 'points'],
        'Contract': ['id', 'salary', 'duration'],
        'Coach': ['id', 'name', 'age', 'xp', 'type', 'idTeam', 'idContract'],
        'Player': ['id', 'name', 'age', 'transfer_cost', 'position', 'idTeam', 'idContract'],
        'Doctor': ['id', 'name', 'age', 'spec'],
        'Disease': ['id', 'idPlayer', 'idDoctor', 'type', 'settlement', 'discharge']
    }
    return columns[table_name]


def get_all_tables():
    conn = current_app.config.get("CONNECTION")

    with conn.cursor() as cursor:
        query = f"""SHOW TABLES;"""
        cursor.execute(query)
        result = cursor.fetchall()
        tables = [
            table
            for obj in result
            for table in obj.values()
        ]
    return tables


def delete_rows(table_name, ids):
    conn = current_app.config.get("CONNECTION")

    with conn.cursor() as cursor:
        ids = list(map(str, ids))
        query = f"""DELETE FROM {table_name} where id in ( {','.join(ids)} );"""
        cursor.execute(query)
        status = {'status': 'ok'}
    return status


def insert_row(table_name, obj):
    conn = current_app.config.get("CONNECTION")

    with conn.cursor() as cursor:
        columns = get_columns(table_name)
        if 'id' in columns:
            columns.remove('id')

        data = [obj[column] for column in columns]
        data = list(map(lambda x: "'" + str(x) + "'", data))
        query = f"""INSERT INTO {table_name} ( {','.join(columns)} ) VALUES ( {','.join(data)} ) ;"""
        cursor.execute(query)
        status = {'status': 'ok'}
    return status


def update_row(table_name, obj):
    conn = current_app.config.get("CONNECTION")

    with conn.cursor() as cursor:
        iid = obj['id']
        del obj['id']

        data = [key + " = " + "'" + str(obj[key]) + "'" for key in obj]

        query = f"""UPDATE {table_name} SET {','.join(data)} WHERE id = {iid} ;"""
        cursor.execute(query)
        status = {'status': 'ok'}
    return status


