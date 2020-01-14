from flask import Flask
from flask_restplus import Resource, Api
from flask_cors import CORS

from bo.Acteur import *
from bo.Serie import *
from bo.Film import *

app = Flask(__name__)
api = Api(app,
          version="1.0.0",
          title="Cine-service",
          description="API pour intéragir avec des films des séries et des acteurs"
         )

CORS(app, resources={r"/*": {"origins": "*"}})

acteur_ns = api.namespace('acteur', description='Actions sur les acteurs')
acteur_model = get_model_acteur(acteur_ns)

serie_ns = api.namespace('serie', description='Actions sur les series')
serie_model = get_model_serie(serie_ns, acteur_model[2])

film_ns = api.namespace('film', description='Actions sur les films')
film_model = get_model_film(film_ns, acteur_model[2])


@serie_ns.route('s/')
class Series(Resource):
    @serie_ns.doc('getAllSeries()')
    @serie_ns.marshal_with(serie_model[1])
    def get(self):
        ''' Affiche toutes les séries '''
        data = getAllSeries()
        if data == False:
            api.abort(404)
        else:
            return data


@serie_ns.route('/<id>')
@serie_ns.param('id', description='Id de la série', type="int")
class SerieById(Resource):
    @serie_ns.doc('getSerieById(id)')
    @serie_ns.marshal_with(serie_model[0])
    def get(self, id):
        ''' Affiche un série en fonction de son id '''
        data = getSerieById(id)
        if data == False:
            api.abort(404)
        else:
            return data


@film_ns.route('s/')
class Film(Resource):
    @film_ns.doc('getAllFilms()')
    @film_ns.marshal_with(film_model[1])
    def get(self):
        ''' Affiche tous les films '''
        data = getAllFilms()
        if data == False:
            api.abort(404)
        else:
            return data


@film_ns.route('/<id>')
@film_ns.param('id', description='Id du film', type="int")
class FilmById(Resource):
    @film_ns.doc('getFilmById(id)')
    @film_ns.marshal_with(film_model[0])
    def get(self, id):
        ''' Affiche un film en fonction de son id '''
        data = getFilmById(id)
        if data == False:
            api.abort(404)
        else:
            return data


@acteur_ns.route('s/')
class Acteur(Resource):
    @acteur_ns.doc('getAllActeur()')
    @acteur_ns.marshal_with(acteur_model[1])
    def get(self):
        ''' Affiche tous les acteurs '''
        data = getAllActeur()
        if data == False:
            api.abort(404)
        else:
            return data


@acteur_ns.route('/<id>')
@acteur_ns.param('id', description='Id de l\'acteur', type="int")
class ActeurById(Resource):
    @acteur_ns.doc('getActeurById(id)')
    @acteur_ns.marshal_with(acteur_model[0])
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
