import logging
from flask import Flask
from routes import login, createaccount, laptopservicereq
from logging.handlers import RotatingFileHandler

app = Flask(__name__)

# Set the secret key for the session
app.secret_key = 'MnbcdIfABAFD12jvd'

log_formatter = logging.Formatter('%(asctime)s %(levelname)s: %(message)s [in %(pathname)s:%(lineno)d]')
log_handler = RotatingFileHandler('flask.log', maxBytes=10000, backupCount=1)
log_handler.setFormatter(log_formatter)
log_handler.setLevel(logging.INFO)
app.logger.addHandler(log_handler)

# Register the routes
app.register_blueprint(login.login_bp)
app.register_blueprint(createaccount.createaccount_bp)
app.register_blueprint(laptopservicereq.laptopservicereq_bp)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)

