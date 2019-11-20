from dbc.mysqlDBC import getConnection

mydb = getConnection()
myCursor = mydb.cursor()

SELECT_ALL_ACTEUR = "SELECT * FROM acteur"
SELECT_ACTEUR_BY_ID = "SELECT * FROM acteur WHERE id = ?"


def result_as_acteur_json(result):
    acteur = {
        "id": str(result[0]),
        "nom": str(result[1].decode()),
        "prenom": str(result[2].decode())
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
