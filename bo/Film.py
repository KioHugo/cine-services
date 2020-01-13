from bo.Acteur import getActeurBy
from dbc.mysqlDBC import getConnection
from flask_restplus import fields


mydb = getConnection()
myCursor = mydb.cursor()
SELECT_ALL_FILMS = "SELECT * FROM film"
SELECT_ONE_FILM = "SELECT * FROM film WHERE ID = ?"


def result_as_film_json(result):
    le_film = {
        "id": str(result[0]),
        "nom": str(result[1].decode()),
        "description": str(result[2].decode()),
        "url": str(result[3].decode()),
        "id_categorie": str(result[4]),
        "acteur_list": None
    }
    try:
        les_auteurs = getActeurBy(str(le_film['id']), 'film')
        le_film['acteur_list'] = les_auteurs
    except:
        pass
        # print("Impossible de charger la liste des acteurs pour la série " + str(la_serie['id']))
    return le_film


def getAllFilms():
    try:
        myCursor.execute(SELECT_ALL_FILMS)
        les_films = myCursor.fetchall()
    except:
        return False
    films_json = {"films": []}
    for row in les_films:
        le_film = result_as_film_json(row)
        films_json['films'].append(le_film)
    return films_json


def getFilmById(id):
    request = SELECT_ONE_FILM.replace('?', format(id))
    try:
        myCursor.execute(request)
        result = myCursor.fetchall()
    except:
        return False
    films_json = {}
    if len(result) != 0:
        films_json = result_as_film_json(result[0])
    return films_json


def get_model_film(namespace, acteur_list):
    film_model = namespace.model('Film', {
        'id': fields.Integer(description='Id du film'),
        'nom': fields.String(description='Nom du film'),
        'description': fields.String(description='Description du film'),
        'url': fields.String(description='Url vers l\'affiche du film'),
        'id_categorie': fields.String(description='Id de la catégorie du film'),
        'acteurs_list': fields.List(fields.Nested(acteur_list))
    })
    film_list_model = namespace.model('Films', {
        'films': fields.List(fields.Nested(film_model))
    })
    return [film_model, film_list_model]