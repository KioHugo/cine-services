import unittest
import requests
import json


class ActeurTest(unittest.TestCase):

    def runTests(self):
        self.testGetAllActeur()
        self.testGetActeurById()
        self.testGetActeurByNoExistingId()
        self.testGetActeurByNullId()
        self.testGetActeurByWrongId()

    def testGetAllActeur(self):
        acteurs = requests.get('http://127.0.0.1:472/acteurs').json()
        # for x in acteurs["acteurs"]:
        #     print(x["nom"])

        self.assertIsNotNone(acteurs)

    def testGetActeurById(self):
        acteurAttendu = {
          "id": 31,
          "nom": "Downey JR",
          "prenom": "Robert",
          "url": "https://img-4.linternaute.com/sNQzFil47Avexd1NnvVRwVQrE3w=/1000x/smart/613ac5a99cba46da83722e86c6eed610/ccmcms-linternaute/10763274.jpg",
          "description": "Robert Downey Jr. /ˈɹɑbɚt ˈdaʊni ˈd͡ʒunjɚ/1 est un acteur américain, né le 4 avril 1965 à New York. Révélé à la fin des années 1980, il est nommé pour l'Oscar du meilleur acteur en 1993 pour son interprétation de Charlie Chaplin dans Chaplin, mais connaît ensuite un passage à vide du fait de graves problèmes de drogue et d'alcool qui le conduisent en prison. Rétabli, il opère un retour en force et devient, en 2008, l'interprète d'Iron Man dans les films des studios Marvel, un premier film qui se trouve à l'origine de la création de l'Univers cinématographique Marvel. Ce rôle, qu'il interprète dans la trilogie Iron Man ainsi que dans les films des séries Avengers, Captain America et Spider-Man lui vaut d'être l'un des acteurs les mieux payés au monde2."
        }
        acteur = requests.get('http://127.0.0.1:472/acteur/31').json()

        # self.assertEqual(acteur["nom"], acteurAttendu["nom"])
        self.assertEqual(acteur, acteurAttendu)

    def testGetActeurByNullId(self):
        try:
            acteur = requests.get('http://127.0.0.1:472/acteur/')
        except requests.exceptions.HTTPError as err:
            print("404 Page not found ", err)

        self.assertEqual(acteur.status_code, 404)

    def testGetActeurByNoExistingId(self):
        acteur = requests.get('http://127.0.0.1:472/acteur/9999999').json()

        acteurAttendu = {
          "id": None,
          "nom": None,
          "prenom": None,
          "url": None,
          "description": None
        }

        self.assertEqual(acteur, acteurAttendu)

    def testGetActeurByWrongId(self):
        try:
            acteur = requests.get('http://127.0.0.1:472/acteur/wrongId')
        except requests.exceptions.HTTPError as err:
            print("404 Page not found ", err)

        self.assertEqual(acteur.status_code, 404)
