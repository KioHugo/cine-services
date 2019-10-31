from flask import Flask
from flask_restplus import Resource, Api
from Series import *

app = Flask(__name__)
api = Api(app)


@api.route('/series')
class Series(Resource):
    def get(self):
        return getAllSeries()


@api.route('/serie/<id>')
class Serie(Resource):
    def get(self, id):
        return getSerieById(id)


if __name__ == '__main__':
    app.run(debug=True)
