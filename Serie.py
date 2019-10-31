from flask import Flask
from flask_restplus import Resource, Api
from jdbc import getMycursor
import jdbc
import mysql.connector

app = Flask(__name__)
api = Api(app)

mycursor = getMycursor()


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


if __name__ == '__main__':
    app.run(debug=True)
