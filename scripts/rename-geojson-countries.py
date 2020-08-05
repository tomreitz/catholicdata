import os
import json

# renames geojson files (created using geojsplit: ) according to their place name
for filename in os.listdir("geojson/secular/countries/"):
    if filename.endswith(".geojson"):
        with open("geojson/secular/countries/"+filename) as json_file:
            data = json.load(json_file)
            #print(data)
            new_name = data["features"][0]["properties"]["ADMIN"].replace(" ","-") + ".geojson"
            #print("Would rename "+filename+" to "+new_name.lower())
            os.rename("geojson/secular/countries/"+filename, "geojson/secular/countries/"+new_name.lower())
