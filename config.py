import os
import pymysql
from pymysql.cursors import DictCursor


class Config(object):
    SECRET_KEY = os.getenv("SECRET_KEY", "hard_key")
    CSRF_ENABLED = True
    CONNECTION = pymysql.connect(
        host=os.getenv("DATABASE_HOST", "localhost"),
        user=os.getenv("DATABASE_USER"),
        password=os.getenv("DATABASE_PASSWORD"),
        port=os.getenv("DATABASE_PORT", 3306),
        db=os.getenv("DATABASE_NAME"),
        cursorclass=DictCursor,
    )
