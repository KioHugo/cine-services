from bo.Acteur import getActeurBy
from dbc.mysqlDBC import getConnection

mydb = getConnection()
myCursor = mydb.cursor()
SELECT_ALL_SERIES = "SELECT * FROM serie"
SELECT_ONE_SERIE = "SELECT * FROM serie WHERE ID = ?"


def result_as_serie_json(result):
    la_serie = {
        "id": str(result[0]),
        "nom": str(result[1].decode()),
        "description": str(result[2].decode()),
        "url": str(result[3].decode()),
        "id_categorie": str(result[4]),
        "acteur_list": None
    }
    try:
        les_auteurs = getActeurBy(str(la_serie['id']), 'serie')
        la_serie['acteur_list'] = les_auteurs
    except:
        pass
        # print("Impossible de charger la liste des acteurs pour la série " + str(la_serie['id']))
    return la_serie


def getAllSeries():
    try:
        myCursor.execute(SELECT_ALL_SERIES)
        les_series = myCursor.fetchall()
    except:
        return False
    series_json = {"series": []}
    for row in les_series:
        la_serie = result_as_serie_json(row)
        series_json['series'].append(la_serie)
    return series_json


def getSerieById(id):
    request = SELECT_ONE_SERIE.replace('?', format(id))
    try:
        myCursor.execute(request)
        result = myCursor.fetchall()
    except:
        return False
    series_json = {}
    if len(result) != 0:
        series_json = result_as_serie_json(result[0])
    return series_json
