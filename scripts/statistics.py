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
fd = open('scripts/statistics.sql', 'r')
sql = fd.read()
fd.close()

# fetch all stats
cur = conn.cursor()
cur.execute(sql)
rows = cur.fetchall()

# create markdown table output
print("| Statistic | Count | Percent |")
print("| --------- | ----- | ------- |")
data = []
for row in rows:
    print("| " + row[0] + " | " + str(row[1]) + " | " + row[2] + " |")

# close database connection
if conn:
    conn.close()
