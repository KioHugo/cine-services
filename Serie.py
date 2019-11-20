import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="pwd",
    database="projet-cine"
)
myCursor = mydb.cursor()


def result_as_serie_json(result):
    la_serie = {
        "id": str(result[0]),
        "nom": str(result[1].decode()),
        "description": str(result[2].decode()),
        "img_url": str(result[3].decode())
    }
    return la_serie


def getAllSeries():
    SELECT_ALL_SERIES = "SELECT * FROM serie"
    myCursor.execute(SELECT_ALL_SERIES)
    les_series = myCursor.fetchall()
    series_json = {"series": []}
    for row in les_series:
        la_serie = result_as_serie_json(row)
        series_json['series'].append(la_serie)
    return series_json


def getSerieById(id):
    SELECT_ONE_SERIE = "SELECT * FROM serie WHERE ID = ?".replace('?', format(id))
    myCursor.execute(SELECT_ONE_SERIE)
    result = myCursor.fetchall()
    series_json = {}
    if len(result) != 0:
        series_json = result_as_serie_json(result[0])
    return series_json
