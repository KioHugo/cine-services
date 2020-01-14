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
        data = getAllSeries()
        if data == False:
            api.abort(404)
        else:
            return data


@api.route('/serie/<id>')
class SerieById(Resource):
    def get(self, id):
        data = getSerieById(id)
        if data == False:
            api.abort(404)
        else:
            return data


@api.route('/films')
class Film(Resource):
    def get(self):
        data = getAllFilms()
        if data == False:
            api.abort(404)
        else:
            return data


@api.route('/film/<id>')
class FilmById(Resource):
    def get(self, id):
        data = getFilmById(id)
        if data == False:
            api.abort(404)
        else:
            return data


@api.route('/acteurs')
class Acteur(Resource):
    def get(self):
        data = getAllActeur()
        if data == False:
            api.abort(404)
        else:
            return data


@api.route('/acteur/<id>')
class ActeurById(Resource):
    def get(self, id):
        data = getActeurById(id)
        if data == False:
            api.abort(404)
        else:
            return data


if __name__ == '__main__':
    # app.run(debug=True, host='192.168.43.140')
    app.run(debug=True, threaded=True, port=472)
