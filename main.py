from flask import Flask
from flask_restplus import Resource, Api
import mysql.connector

app = Flask(__name__)
api = Api(app)

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="root",
    database="projet-cine"
)
mycursor = mydb.cursor()

SELECT_ALL_SERIES = "SELECT * FROM serie"


@api.route('/series', '/serie')
class Series(Resource):
    def get(self):
        mycursor.execute(SELECT_ALL_SERIES)
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


if __name__ == '__main__':
    app.run(debug=True)
