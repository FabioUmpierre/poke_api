import sqlite3
from prettytable import from_db_cursor

connection = sqlite3.connect(".db")
cursor = connection.cursor()
cursor.execute("SELECT field1, field2, field3 FROM my_table")
mytable = from_db_cursor(cursor)