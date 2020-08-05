In this directory are [geojson](https://en.wikipedia.org/wiki/GeoJSON) files for the boundaries of various ecclesiastical and secular regions in the world.

United States diocese boundaries are from [this KMZ](https://www.arcgis.com/home/item.html?id=69960b690e6e4cb3aef6fc2e5ad39456), which was then converted to geojson using [this service](https://mygeodata.cloud/converter/kmz-to-json), then split using [geojsplit](https://github.com/woodb/geojsplit).

[Country](https://github.com/datasets/geo-countries/blob/master/data/countries.geojson) and [state](https://github.com/mapbox/mapboxgl-jupyter/blob/master/examples/data/us-states.geojson) boundaries were similarly processed.
