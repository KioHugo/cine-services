import unittest
import requests
import json


class FilmTest(unittest.TestCase):

    def runTests(self):
        self.testGetAllFilm()
        self.testGetFilmById()
        self.testGetFilmByNoExistingId()
        self.testGetFilmByNullId()
        self.testGetFilmByWrongId()

    def testGetAllFilm(self):
        films = requests.get('http://127.0.0.1:5000/films').json()
        # for x in films["films"]:
        #     print(x["nom"])

        self.assertIsNotNone(films)

    def testGetFilmById(self):
        filmAttendu = {
          "id": "3",
          "nom": "Casino Royale",
          "description": "Après avoir commis un incident diplomatique, James Bond est envoyé en vacances. Il se trouve alors sur la piste du Chiffre, le banquier du terrorisme international.",
          "url": "https://media.senscritique.com/media/000012408254/160/Casino_Royale.jpg",
          "id_categorie": "1",
          "acteur_list": [
        {
          "id": "20",
          "url": "http://192.162.43.140/acteur/20"
        },
        {
          "id": "21",
          "url": "http://192.162.43.140/acteur/21"
        },
        {
          "id": "41",
          "url": "http://192.162.43.140/acteur/41"
        }
      ]
    }
        film = requests.get('http://127.0.0.1:5000/film/3').json()

        self.assertEqual(film, filmAttendu)

    def testGetFilmByNullId(self):
        try:
            film = requests.get('http://127.0.0.1:5000/film/')
        except requests.exceptions.HTTPError as err:
            print("404 Page not found ", err)

        self.assertEqual(film.status_code, 404)

    def testGetFilmByNoExistingId(self):
        film = requests.get('http://127.0.0.1:5000/film/999').json()

        self.assertEqual(film, {})

    def testGetFilmByWrongId(self):
        try:
            film = requests.get('http://127.0.0.1:5000/film/wrongId')
        except requests.exceptions.HTTPError as err:
            print("404 Page not found ", err)

        self.assertEqual(film.status_code, 404)
