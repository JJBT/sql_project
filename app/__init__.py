from flask import Flask
from flask_cors import CORS
from config import Config


def create_app(config=Config):
    """
    Returns flask app. To run app input: $ flask run
    """
    app = Flask(__name__)
    app.config.from_object(Config)

    from app.main import bp as main_bp

    app.register_blueprint(main_bp)
    CORS(app)

    return app
