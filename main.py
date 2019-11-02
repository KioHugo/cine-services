from flask import Flask
from flask_restplus import Resource, Api
import Serie as serie_func
import Film as film_func

app = Flask(__name__)
api = Api(app)


@api.route('/series')
class Series(Resource):
    def get(self):
        return serie_func.Series(Resource).get()


@api.route('/serie/<id>')
class Serie(Resource):
    def get(self, id):
        return serie_func.Serie(Resource).get(id)


@api.route('/films')
class Films(Resource):
    def get(self):
        return film_func.Films(Resource).get()


@api.route('/film/<id>')
class Film(Resource):
    def get(self, id):
        return film_func.Film(Resource).get(id)


if __name__ == '__main__':
    app.run(debug=True)
