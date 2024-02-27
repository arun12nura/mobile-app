from flask import Blueprint

# Initialize the routes package
routes_bp = Blueprint('routes', __name__)

# Import route modules
from . import login, createaccount

