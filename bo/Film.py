from bo.Acteur import getActeurBy
from dbc.mysqlDBC import getConnection

mydb = getConnection()
myCursor = mydb.cursor()


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
    SELECT_ALL_FILMS = "SELECT * FROM film"
    myCursor.execute(SELECT_ALL_FILMS)
    les_films = myCursor.fetchall()
    films_json = {"films": []}
    for row in les_films:
        le_film = result_as_film_json(row)
        films_json['films'].append(le_film)
    return films_json


def getFilmById(id):
    SELECT_ONE_FILM = "SELECT * FROM film WHERE ID = ?".replace('?', format(id))
    myCursor.execute(SELECT_ONE_FILM)
    result = myCursor.fetchall()
    films_json = {}
    if len(result) != 0:
        films_json = result_as_film_json(result[0])
    return films_json
