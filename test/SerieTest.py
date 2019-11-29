import unittest
import requests
import json


class SerieTest(unittest.TestCase):

    def runTests(self):
        self.testGetAllSerie()
        self.testGetSerieById()
        self.testGetSerieByNoExistingId()
        self.testGetSerieByNullId()
        self.testGetSerieByWrongId()

    def testGetAllSerie(self):
        series = requests.get('http://127.0.0.1:5000/series').json()
        # for x in series["series"]:
        #     print(x["nom"])

        self.assertIsNotNone(series)

    def testGetSerieById(self):
        serieAttendu = {
          "id": "10",
          "nom": "Peaky Blinders",
          "description": "En 1919, à Birmingham, soldats, révolutionnaires politiques et criminels combattent pour se faire une place dans le paysage industriel de l'après-Guerre. Le Parlement s'attend à une violente révolte, et Winston Churchill mobilise des forces spéciales pour contenir les menaces. La famille Shelby compte parmi les membres les plus redoutables. Surnommés les \"Peaky Blinders\" par rapport à leur utilisation de lames de rasoir cachées dans leurs casquettes, ils tirent principalement leur argent de paris et de vol. Tommy Shelby, le plus dangereux de tous, va devoir faire face à l'arrivée de Campbell, un impitoyable chef de la police qui a pour mission de nettoyer la ville.",
          "url": "https://media.senscritique.com/media/000005979274/160/Peaky_Blinders.jpg",
          "id_categorie": "1",
          "acteur_list": [
        {
          "id": "50",
          "url": "http://192.162.43.140/acteur/50"
        },
        {
          "id": "51",
          "url": "http://192.162.43.140/acteur/51"
        }
      ]
    }
        serie = requests.get('http://127.0.0.1:5000/serie/10').json()

        self.assertEqual(serie, serieAttendu)

    def testGetSerieByNullId(self):
        try:
            serie = requests.get('http://127.0.0.1:5000/serie/')
        except requests.exceptions.HTTPError as err:
            print("404 Page not found ", err)

        self.assertEqual(serie.status_code, 404)

    def testGetSerieByNoExistingId(self):
        serie = requests.get('http://127.0.0.1:5000/serie/999').json()

        self.assertEqual(serie, {})

    def testGetSerieByWrongId(self):
        try:
            serie = requests.get('http://127.0.0.1:5000/serie/wrongId')
        except requests.exceptions.HTTPError as err:
            print("404 Page not found ", err)

        self.assertEqual(serie.status_code, 404)
