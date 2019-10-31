from flask import Flask
from flask_restplus import Resource, Api

app = Flask(__name__)
api = Api(app)


@api.route('/hello')
class HelloWorld(Resource):
    def get(self):
        return {'hello': 'world'}


@api.route('/series')
class HelloWorld(Resource):
    def get(self):
        return {'series': [
            {
                'nom': 'daybreak'
            }
        ]}


if __name__ == '__main__':
    app.run(debug=True)
