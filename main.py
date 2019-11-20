from flask import Flask
from flask_restplus import Resource, Api
from bo.Serie import *
from bo.Film import *

app = Flask(__name__)
api = Api(app)


@api.route('/series')
class Series(Resource):
    def get(self):
        return getAllSeries()


@api.route('/serie/<id>')
class Series(Resource):
    def get(self, id):
        return getSerieById(id)


@api.route('/films')
class Film(Resource):
    def get(self):
        return getAllFilms()


@api.route('/film/<id>')
class Film(Resource):
    def get(self, id):
        return getFilmById(id)


if __name__ == '__main__':
    app.run(debug=True)
