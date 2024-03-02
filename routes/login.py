from flask import Blueprint, request, jsonify, session
import pymysql.cursors
import logging

# Create a blueprint for the login routes
login_bp = Blueprint('login', __name__)

logger = logging.getLogger(__name__)

# MySQL database connection configuration
connection = pymysql.connect(
    host='mobappdatabase.cxiakawm0dik.ap-south-1.rds.amazonaws.com',
    user='admin',
    password='ArunRaji91!',
    database='dosdatabase',
    cursorclass=pymysql.cursors.DictCursor
)

@login_bp.route('/login', methods=['POST'])
def login():
    # Get JSON data from the request
    data = request.json

    # Check if required fields are present in the request data
    if not all(key in data for key in ('userMobileNo', 'password')):
        return jsonify({"success": False, "message": "Missing required fields"}), 400

    user_mobile_no = data['userMobileNo']
    password = data['password']

    try:
        with connection.cursor() as cursor:
            # Query to fetch user details including id and check if mobile number and password match
            sql = "SELECT id FROM doslogin WHERE userMobileNo = %s AND password = %s"
            cursor.execute(sql, (user_mobile_no, password))
            user = cursor.fetchone()

            if user:
                # Set permanent session with user's ID
                session.permanent = True
                session['user_id'] = user['id']
                return jsonify({"success": True, "message": "Login successful", "user_id": user['id']})
            else:
                return jsonify({"success": False, "message": "Invalid mobile number or password"}), 401
    except pymysql.MySQLError as e:
        return jsonify({"success": False, "message": "Database error: " + str(e)}), 500
    except Exception as e:
        return jsonify({"success": False, "message": "Internal server error: " + str(e)}), 500

