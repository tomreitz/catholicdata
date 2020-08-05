import json
import sqlite3
from sqlite3 import Error


def clean_nones(value):
    if isinstance(value, list):
        return [clean_nones(x) for x in value if x is not None]
    elif isinstance(value, dict):
        return {
            key: clean_nones(val)
            for key, val in value.items()
            if val is not None
        }
    else:
        return value


# connect to SQLite database
conn = None
try:
    conn = sqlite3.connect(r"./database.db")
except Error as e:
    print(e)

# load SQL from file
fd = open('scripts/people.sql', 'r')
sql = fd.read()
fd.close()

# fetch all people
cur = conn.cursor()
cur.execute(sql)
rows = cur.fetchall()

# create JSON output
data = []
for row in rows:
    #print(json.loads(row[0]).assignments)
    #break
    data.append(json.loads(row[0]))

# output data as JSON
print(json.dumps({'people':clean_nones(data)},indent=2))

# close database connection
if conn:
    conn.close()
