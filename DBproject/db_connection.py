import json
import mysql.connector
from mysql.connector import Error

def connect_to_db():
    with open('config.json', 'r') as f:
        config = json.load(f)
    try:
        db = mysql.connector.connect(
            host=config['host'],
            user=config['user'],
            password=config['password'],
            database=config['database']
        )
        return db
    except Error as e:
        print(f"Database connection failed: {e}")
        return None
