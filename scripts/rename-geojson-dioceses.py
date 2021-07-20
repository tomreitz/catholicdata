import os
import json

# renames geojson files (created using geojsplit: ) according to their place name
for filename in os.listdir("geojson/ecclesiastical/"):
    if filename.endswith(".geojson"):
        with open("geojson/ecclesiastical/"+filename) as json_file:
            data = json.load(json_file)
            #print(data)
            new_name = "usa-" + data["features"][0]["properties"]["Name"].replace(" ","-") + "-" + data["features"][0]["properties"]["Diocese"].replace(" ","-") + ".geojson"
            os.rename("geojson/ecclesiastical/"+filename, "geojson/ecclesiastical/"+new_name.lower())
