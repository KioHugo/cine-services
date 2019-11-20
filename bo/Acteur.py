from dbc.mysqlDBC import getConnection

mydb = getConnection()
myCursor = mydb.cursor()

SELECT_ALL_ACTEUR = "SELECT * FROM acteur"
SELECT_ACTEUR_BY_ID = "SELECT * FROM acteur WHERE id = ?"


def result_as_auteur_json(result):
    acteur = {
        "id": str(result[0]),
        "nom": str(result[1].decode()),
        "prenom": str(result[2].decode())
    }
    return acteur


def getAllActeur():
    myCursor.execute(SELECT_ALL_ACTEUR)
    les_auteurs = myCursor.fetchall()
    auteurs_json = {"auteurs": []}
    for row in les_auteurs:
        la_serie = result_as_auteur_json(row)
        auteurs_json['auteurs'].append(la_serie)
    return auteurs_json


def getActeurById(id):
    request = SELECT_ACTEUR_BY_ID.replace('?', format(id))
    myCursor.execute(request)
    result = myCursor.fetchall()
    acteur_json = {}
    if len(result) != 0:
        acteur_json = result_as_auteur_json(result[0])
    return acteur_json
