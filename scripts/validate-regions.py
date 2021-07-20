import json
import sqlite3
from sqlite3 import Error


# connect to SQLite database
conn = None
try:
    conn = sqlite3.connect(r"./database.db")
except Error as e:
    print(e)

# load SQL from file
fd = open('scripts/validate-regions.sql', 'r')
sql = fd.read()
fd.close()

# fetch all stats
cur = conn.cursor()
cur.execute(sql)
rows = cur.fetchall()

# create output
if len(rows)>0:
    print("Regions validation errors: ")
    for row in rows:
        print(*row, sep = " | ")

# close database connection
if conn:
    conn.close()
