import os
import json

# renames geojson files (created using geojsplit: ) according to their place name
for filename in os.listdir("geojson/secular/states/"):
    if filename.endswith(".geojson"):
        with open("geojson/secular/states/"+filename) as json_file:
            data = json.load(json_file)
            #print(data)
            new_name = "usa-" + data["features"][0]["properties"]["name"].replace(" ","-") + ".geojson"
            #print("Would rename "+filename+" to "+new_name.lower())
            os.rename("geojson/secular/states/"+filename, "geojson/secular/states/"+new_name.lower())
