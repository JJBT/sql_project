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
        query = f"SHOW TABLES;"
        cursor.execute(query)
        result = cursor.fetchall()
        tables = [
            table
            for obj in result
            for table in obj.values()
        ]
    return tables
