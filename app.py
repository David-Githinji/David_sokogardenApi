from flask import *
import pymysql

app = Flask(__name__)

# sign up api-> create an account
@app.route("/api/signup", methods=["POST"])
def signup():
    username = request.form['username']
    email = request.form['email']
    phone = request.form['phone']
    password = request.form['password']

    print(username, email, phone, password)
    # create a connection to database
    connection = pymysql.connect(host= "localhost", user="root", password="", database="david_sokogarden")

    # create a cursor
    cursor = connection.cursor()

    # create sql query
    sql = "insert into users (username, email, phone, password) values (%s, %s, %s, %s)"
    # data to be saved
    data = (username, email, phone, password)
    print(data)

    # execute the query
    cursor.execute(sql, data)
    # save the data in the db
    connection.commit()
    return jsonify({"message": "user sign up succesfully"})


@app.route("/api/signin", methods = ["POST"])
def signin():
    email = request.form["email"]
    password = request.form["password"]
    print(email, password)

    connection = pymysql.connect(host="localhost", user="root", password="", database="githinji_sokogarden")
    cursor=connection.cursor(pymysql.cursors.DictCursor)
    sql = "select user_id, username, email, phone from users where email = %s and password = %s"
    data = (email, password)
    cursor.execute(sql, data)
    if cursor.rowcount == 0:
        return jsonify({"message": "invalid credentials"})
    else:
        user=cursor.fetchone()
        return jsonify({"message": "Login successful", "user":user})


if __name__ == "__main__":
    app.run(debug=True)