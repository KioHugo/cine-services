from flask import Flask
from flask_restplus import Resource, Api
import mysql.connector

app = Flask(__name__)
api = Api(app)

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="pwd",
    database="projet-cine"
)
mycursor = mydb.cursor()


@api.route('/series')
class Series(Resource):
    SELECT_ALL_SERIES = "SELECT * FROM serie"

    def get(self):
        mycursor.execute(self.SELECT_ALL_SERIES)
        les_series = mycursor.fetchall()
        series_json = {"series": []}
        for series in les_series:
            la_serie = {
                "id": str(series[0]),
                "nom": str(series[1].decode()),
                "description": str(series[2].decode())
            }
            series_json['series'].append(la_serie)

        return series_json


@api.route('/serie/<id>')
class Serie(Resource):
    SELECT_ONE_SERIE = "SELECT * FROM serie WHERE ID = ?"

    def get(self, id):
        self.SELECT_ONE_SERIE = self.SELECT_ONE_SERIE.replace('?', format(id))
        mycursor.execute(self.SELECT_ONE_SERIE)
        result = mycursor.fetchall()
        series_json = {}
        if len(result) != 0:
            series_json = {
                "id": str(result[0][0]),
                "nom": str(result[0][1].decode()),
                "description": str(result[0][2].decode())
            }
        return series_json
