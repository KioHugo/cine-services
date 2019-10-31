from flask import Flask
from flask_restplus import Resource, Api
from jdbc import getMycursor
import jdbc
import mysql.connector

app = Flask(__name__)
api = Api(app)

SELECT_ALL_FILMS = "SELECT * FROM film"

mycursor = getMycursor()


@api.route('/films')
class Films(Resource):
    def get(self):
        mycursor.execute(SELECT_ALL_FILMS)
        les_films = mycursor.fetchall()
        films_json = {"films": []}
        for series in les_films:
            le_film = {
                "id": str(series[0]),
                "nom": str(series[1].decode()),
                "description": str(series[2].decode())
            }
            films_json['films'].append(le_film)

        return films_json


if __name__ == '__main__':
    app.run(debug=True)
