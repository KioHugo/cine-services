from flask import Flask
from flask_restplus import Resource, Api
from flask_cors import CORS

from bo.Acteur import *
from bo.Serie import *
from bo.Film import *

app = Flask(__name__)
api = Api(app)

CORS(app, resources={r"/*": {"origins": "*"}})

serie_ns = api.namespace('Serie', description='Actions sur les series')
film_ns = api.namespace('Film', description='Actions sur les films')
acteur_ns = api.namespace('Acteur', description='Actions sur les acteurs')

@serie_ns.route('/series')
class Series(Resource):
    def get(self):
        ''' Affiche toutes les séries '''
        data = getAllSeries()
        if data == False:
            api.abort(404)
        else:
            return data


@serie_ns.route('/serie/<id>')
class SerieById(Resource):
    def get(self, id):
        ''' Affiche un série en fonction de son id '''
        data = getSerieById(id)
        if data == False:
            api.abort(404)
        else:
            return data


@film_ns.route('/films')
class Film(Resource):
    def get(self):
        ''' Affiche tous les films '''
        data = getAllFilms()
        if data == False:
            api.abort(404)
        else:
            return data


@film_ns.route('/film/<id>')
class FilmById(Resource):
    def get(self, id):
        ''' Affiche un film en fonction de son id '''
        data = getFilmById(id)
        if data == False:
            api.abort(404)
        else:
            return data


@acteur_ns.route('/acteurs')
class Acteur(Resource):
    def get(self):
        ''' Affiche tous les acteurs '''
        data = getAllActeur()
        if data == False:
            api.abort(404)
        else:
            return data


@acteur_ns.route('/acteur/<id>')
class ActeurById(Resource):
    def get(self, id):
        ''' Affiche un acteur en fonction de son id '''
        data = getActeurById(id)
        if data == False:
            api.abort(404)
        else:
            return data


if __name__ == '__main__':
    # app.run(debug=True, host='192.168.43.140')
    app.run(debug=True, threaded=True, port=472)
