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
myCursor = mydb.cursor()


@api.route('/films')
class Films(Resource):
    SELECT_ALL_FILMS = "SELECT * FROM film"

    def get(self):
        myCursor.execute(self.SELECT_ALL_FILMS)
        les_films = myCursor.fetchall()
        films_json = {"films": []}
        for film in les_films:
            le_film = {
                "id": str(film[0]),
                "nom": str(film[1].decode()),
                "description": str(film[2].decode())
            }
            films_json['films'].append(le_film)

        return films_json


@api.route('/film/<id>')
class Film(Resource):
    SELECT_ONE_FILM = "SELECT * FROM film WHERE ID = ?"

    def get(self, id):
        self.SELECT_ONE_FILM = self.SELECT_ONE_FILM.replace('?', format(id))
        myCursor.execute(self.SELECT_ONE_FILM)
        result = myCursor.fetchall()
        films_json = {}
        if len(result) != 0:
            films_json = {
                "id": str(result[0][0]),
                "nom": str(result[0][1].decode()),
                "description": str(result[0][2].decode())
            }
        return films_json
