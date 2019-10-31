import mysql.connector

def getMycursor():

    mydb = mysql.connector.connect(
        host="localhost",
        user="root",
        passwd="pwd",
        database="projet-cine"
    )
    cursor = mydb.cursor()
    return cursor
