import os
import pymysql
from pymysql.cursors import DictCursor


class Config(object):
    SECRET_KEY = os.getenv("SEecho ""CRET_KEY", "hard_key")
    # CONNECTION = pymysql.connect(
    #     host=os.getenv("DATABASE_HOST", 'localhost'),
    #     user=os.getenv("DATABASE_USER"),
    #     password=os.getenv("DATABASE_PASSWORD"),
    #     port=os.getenv("DATABASE_PORT", 3306),
    #     cursorclass=DictCursor
    # )
