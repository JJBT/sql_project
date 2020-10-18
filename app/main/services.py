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
        result = cursor.fetchall()
    return result


def get_all_tables():
    """
    Returns all tables (names)
    """
    conn = current_app.config.get("CONNECTION")

    with conn.cursor() as cursor:
        query = "show tables;"
        cursor.execute(query)
        result = cursor.fetchall()
        tables = [(i.get("Tables_in_project", "Unknow"), i.get("Tables_in_project", "Unknow")) for i in result]
    return tables
