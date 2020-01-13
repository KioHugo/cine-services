from dbc.mysqlDBC import getConnection
from flask_restplus import fields

mydb = getConnection()
myCursor = mydb.cursor()

SELECT_ALL_ACTEUR = "SELECT * FROM acteur"
SELECT_ACTEUR_BY_ID = "SELECT * FROM acteur WHERE id = ?"
SELECT_ACTEUR_BY_SERIE = "SELECT * FROM serie_acteur WHERE id_serie = '?'"
SELECT_ACTEUR_BY_FILM = "SELECT * FROM film_acteur WHERE id_film = '?'"


def result_as_acteur_json(result):
    acteur = {
        "id": str(result[0]),
        "nom": str(result[1].decode()),
        "prenom": str(result[2].decode()),
        "url": str(result[3].decode()),
        "description": str(result[4].decode())
    }
    return acteur


def getAllActeur():
    try:
        myCursor.execute(SELECT_ALL_ACTEUR)
        les_acteurs = myCursor.fetchall()
    except:
        return False
    acteurs_json = {"acteurs": []}
    for row in les_acteurs:
        le_acteur = result_as_acteur_json(row)
        acteurs_json['acteurs'].append(le_acteur)
    return acteurs_json


def getActeurBy(id, type):
    if type == "serie":
        request = SELECT_ACTEUR_BY_SERIE.replace('?', format(id))
    elif type == "film":
        request = SELECT_ACTEUR_BY_FILM.replace('?', format(id))
    else:
        return {}
    try:
        myCursor.execute(request)
        les_acteurs = myCursor.fetchall()
    except:
        return False
    acteurs_json = []
    for row in les_acteurs:
        le_acteur = {
            'id': str(row[1]),
            'url': 'http://192.162.43.140/acteur/' + str(row[1])
        }
        acteurs_json.append(le_acteur)
    return acteurs_json


def getActeurById(id):
    request = SELECT_ACTEUR_BY_ID.replace('?', format(id))
    try:
        myCursor.execute(request)
        result = myCursor.fetchall()
    except:
        return False
    acteur_json = {}
    if len(result) != 0:
        acteur_json = result_as_acteur_json(result[0])
    return acteur_json


def get_model_acteur(namespace):
    acteur_model = namespace.model('Acteur', {
        'id': fields.Integer(description='id de l\'acteur'),
        'nom': fields.String(description='Nom de l \'acteur'),
        'prenom': fields.String(description='Prénom de l \'acteur'),
        'url': fields.String(description='Url vers l\'image de l\'acteur'),
        'description': fields.String(description='Description de l\'acteur'),
    })
    acteur_list_model = namespace.model('Acteurs', {
        'acteurs': fields.List(fields.Nested(acteur_model))
    })
    acteur_list_id_model = namespace.model('Acteur id list', {
        'url': fields.String(description='Url de requête pour l\'acteur'),
        'id': fields.Integer(description='Id de l\'acteur')
    })
    return [acteur_model, acteur_list_model, acteur_list_id_model]
