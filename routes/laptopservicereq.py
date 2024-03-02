from flask import Blueprint, request, jsonify, session
import pymysql.cursors

# Create a blueprint for the laptop service request routes
laptopservicereq_bp = Blueprint('laptopservicereq', __name__)

# MySQL database connection configuration
connection = pymysql.connect(
    host='mobappdatabase.cxiakawm0dik.ap-south-1.rds.amazonaws.com',
    user='admin',
    password='ArunRaji91!',
    database='dosdatabase',
    cursorclass=pymysql.cursors.DictCursor
)

@laptopservicereq_bp.route('/laptopservicereq', methods=['POST'])
def submit_service():
    # Retrieve data from the request
    data = request.json

    # Extracting data from the request
    system_type = data.get('system_type')
    brand_name = data.get('brand_name')
    model_name = data.get('model_name')
    warranty_details = data.get('warranty_details')
    issues = data.get('issues')
    doslogin_id=data.get('doslogin_id')

    # Check if all fields are provided
    if not all([system_type, brand_name, model_name, warranty_details, issues, doslogin_id]):
        return jsonify({"success": False, "message": "All fields are required"}), 400

    # Set categories to "Computer" by default
    categories = "Computer" if system_type in ["Laptop", "PC"] else None

    # Retrieving user ID from the session
    # user_id = session.get('user_id')

    try:
        with connection.cursor() as cursor:
            # Insert data into dosservice table
            sql = "INSERT INTO dosservice (system_type, brand_name, model_name, warranty, issuedetails, doslogin_id, categories) VALUES (%s, %s, %s, %s, %s, %s, %s)"
            cursor.execute(sql, (system_type, brand_name, model_name, warranty_details, issues, doslogin_id, categories))

            # Commit changes to the database
            connection.commit()

        return jsonify({"success": True, "message": "Service submitted successfully"})
    except pymysql.MySQLError as e:
        return jsonify({"success": False, "message": "Database error: " + str(e)}), 500
    except Exception as e:
        return jsonify({"success": False, "message": "Internal server error: " + str(e)}), 500

