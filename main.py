from flask import Flask
from flask_restplus import Resource, Api
from flask_cors import CORS

from bo.Acteur import *
from bo.Serie import *
from bo.Film import *

app = Flask(__name__)
api = Api(app)

CORS(app, resources={r"/*": {"origins": "*"}})


@api.route('/series')
class Series(Resource):
    def get(self):
        return getAllSeries()


@api.route('/serie/<id>')
class SerieById(Resource):
    def get(self, id):
        return getSerieById(id)


@api.route('/films')
class Film(Resource):
    def get(self):
        return getAllFilms()


@api.route('/film/<id>')
class FilmById(Resource):
    def get(self, id):
        return getFilmById(id)


@api.route('/acteur')
class Acteur(Resource):
    def get(self):
        return getAllActeur()


@api.route('/acteur/<id>')
class ActeurById(Resource):
    def get(self, id):
        return getActeurById(id)


if __name__ == '__main__':
    app.run(debug=True, host='192.168.43.140')
