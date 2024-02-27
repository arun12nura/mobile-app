from flask import Blueprint, request, jsonify
import pymysql.cursors

# Create a blueprint for the create account routes
createaccount_bp = Blueprint('createaccount', __name__)

# MySQL database connection configuration
connection = pymysql.connect(
    host='mobappdatabase.cxiakawm0dik.ap-south-1.rds.amazonaws.com',
    user='admin',
    password='ArunRaji91!',
    database='dosdatabase',
    cursorclass=pymysql.cursors.DictCursor
)


@createaccount_bp.route('/create_account', methods=['POST'])
def create_account():
    data = request.json
    # Check if all required fields are present in the request
    if not all(key in data for key in ('userMobileNo', 'password', 'username')):
        return jsonify({"success": False, "message": "Missing required fields"}), 400

    userMobileNo = data['userMobileNo']
    password = data['password']
    username = data['username']

    try:
        with connection.cursor() as cursor:
            # Check if mobile number already exists
            sql_check = "SELECT * FROM doslogin WHERE userMobileNo = %s"
            cursor.execute(sql_check, (userMobileNo,))
            existing_user = cursor.fetchone()
            if existing_user:
                return jsonify({"success": False, "message": "Account already exists for this mobile number"}), 400

            # Insert new user into the database
            sql_insert = "INSERT INTO doslogin (userMobileNo, password, username) VALUES (%s, %s, %s)"
            cursor.execute(sql_insert, (userMobileNo, password, username))
            connection.commit()

            return jsonify({"success": True, "message": "Account created successfully"})
    except Exception as e:
        return jsonify({"success": False, "message": str(e)}), 500
