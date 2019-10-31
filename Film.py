import mysql.connector
import json
from flask import Flask
from flask_restplus import Resource, Api

app = Flask(__name__)
api = Api(app)

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="pwd",
    database="projet-cine"
)

mycursor = mydb.cursor()

mycursor.execute("SELECT * FROM film")

myresult = mycursor.fetchall()

for x in myresult:
    print(str((x[1]).decode()))
    print(x)

json_film = {film:[]}