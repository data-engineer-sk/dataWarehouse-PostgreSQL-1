# Connector to PostgreSQL Database
import psycopg2
import os
from dotenv import load_dotenv

def get_env_variables():
    load_dotenv()
    HOST = os.environ.get("postgre_host")
    USER = os.environ.get("postgre_user")
    PASSWORD = os.environ.get("postgre_pass")
    DB_NAME = os.environ.get("postgre_db")

    return HOST, USER, PASSWORD, DB_NAME

def post_conn():

    try:
        inHOST, inUSER, inPASSWORD, inDATABASE = get_env_variables()

        connection = psycopg2.connect (
            database=inDATABASE,
            user=inUSER,
            password=inPASSWORD,
            host=inHOST,
            port='5432'
        )
    except Error as e:
        print("Error while connecting to MySQL", e)

    return connection