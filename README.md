## cine-services
###### Package python
- pip install flask-restplus
- pip install -U flask-cors
- pip install mysql
- pip install mysql-connector

###### Routes python

- `/films` : [GET] Affiche tous les films
- `/film/<id>` : [GET] Affiche un film en fonction de son id
```JSON
  {
    'id': ''
    'nom': ''
    'description': ''
    'url': ''
    'id_categorie': ''
    'acteurs_list': [
      {
        'url': '',
        'id': ''
      }
     ]
  }
```

- `/series` : [GET] Affiche toutes les séries
- `/serie/<id>` : [GET] Affiche une série en fonction de son id
```JSON
  {
    'id': ''
    'nom': ''
    'description': ''
    'url': ''
    'id_categorie': ''
    'acteurs_list': [
      {
        'url': '',
        'id': ''
      }
     ]
  }
```

- `/acteurs` : [GET] Affiche tous les acteurs
- `/acteur/<id>` : [GET] Affiche un acteur en fonction de son id
```JSON
  {
    'id': ,
    'nom': ,
    'prenom': ,
    'description': 
  }
```
