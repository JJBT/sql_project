from flask import current_app


def show_table(
    table_name: str,
) -> dict:
    """
    Returns all rows in table
    """
    conn = current_app.config.get("CONNECTION")

    with conn.cursor() as cursor:
        query = f"SELECT * FROM {table_name};"
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
    """
    Returns all tables (names)
    """
    conn = current_app.config.get("CONNECTION")

    with conn.cursor() as cursor:
        query = f"SHOW TABLES;"
        cursor.execute(query)
        result = cursor.fetchall()
        tables = [
            table
            for obj in result
            for table in obj.values()
        ]
    return tables
