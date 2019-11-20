import configparser
import mysql.connector

config = configparser.ConfigParser()
config.read('./dbc/bdd.ini')


def getConnection():
    return mysql.connector.connect(
        host=config['mysqlDB']['host'],
        user=config['mysqlDB']['user'],
        passwd=config['mysqlDB']['pass'],
        db=config['mysqlDB']['db'])
