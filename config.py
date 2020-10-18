import os


class Config(object):
    SECRET_KEY = os.getenv("SECRET_KEY", "hard_key")
