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
            "id": "31",
            "nom": "Downey JR",
            "prenom": "Robert"
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

        self.assertEqual(acteur, {})

    def testGetActeurByWrongId(self):
        try:
            acteur = requests.get('http://127.0.0.1:472/acteur/wrongId')
        except requests.exceptions.HTTPError as err:
            print("404 Page not found ", err)

        self.assertEqual(acteur.status_code, 404)
