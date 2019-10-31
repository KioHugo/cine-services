import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="root",
    database="projet-cine"
)
mycursor = mydb.cursor()



def resut_as_serie_json(result):
    la_serie = {
        "id": str(result[0]),
        "nom": str(result[1].decode()),
        "description": str(result[2].decode()),
        "img_url": str(result[3].decode())
    }
    return la_serie


def getAllSeries():
    SELECT_ALL_SERIES = "SELECT * FROM serie"
    mycursor.execute(SELECT_ALL_SERIES)
    les_series = mycursor.fetchall()
    series_json = {"series": []}
    for row in les_series:
        la_serie = resut_as_serie_json(row)
        series_json['series'].append(la_serie)
    return series_json


def getSerieById(id):
    SELECT_ONE_SERIE = "SELECT * FROM serie WHERE ID = ?".replace('?', format(id))
    mycursor.execute(SELECT_ONE_SERIE)
    result = mycursor.fetchall()
    series_json = {}
    if len(result) != 0:
        series_json = resut_as_serie_json(result[0])
    return series_json
