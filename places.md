# Places

## Endpoints
* [places.json](/catholicdata/places.json), which contains all places
* [places_basilicas.json](/catholicdata/places_basilicas.json), which contains Basilicas only
* [places_cathedrals.json](/catholicdata/places_cathedrals.json), which contains Cathedrals only

## Structure:
```
[
  {
    id: "places/us/mi/marquette/st-peter-cathedral",
    type: "Cathedral",
    name: "St. Peter Cathedral",
    image: "https://upload.wikimedia.org/wikipedia/commons/0/03/Marquettecathedral.jpg",
    location: {
      country: "United States",
      state: "Michigan",
      city: "Marquette",
      address: "311 W Baraga Ave.",
      zip: 49855,
      latitude: 46.5410832,
      longitude: -87.3988471,
      google_place_id: "ChIJVVVKWJ4gTk0RMIJOaRo3LV8"
    },
    contact: {
      facebook: "https://www.facebook.com/mqtcathedral/",
      email: "secretary@stpetercathedral.org"
    },
    events: [
      {
        event: "Construction began",
        date: "1881-06-19",
        description: "",
	source: "https://stpetercathedral.org/about/history/"
      },
      {
        event: "Construction completed",
        date: "1890-07-27",
        description: "",
	source: "https://stpetercathedral.org/about/history/"
      },
      {
        event: "Damaged",
        date: "1935-11-03",
        description: "Fire",
	source: "https://stpetercathedral.org/about/history/;https://news.google.com/newspapers?nid=110&dat=19351104&id=dsk0AAAAIBAJ&sjid=hUADAAAAIBAJ&pg=2201,4772951&hl=en"
      },
      {
        event: "Restoration began",
        date: "1936",
        description: "",
	source: "https://stpetercathedral.org/about/history/"
      },
      {
        event: "Restoration completed",
        date: "1938",
        description: "",
	source: "https://stpetercathedral.org/about/history/"
      }
    ]
  },
  ...
]
```

## Details
When present, *location.google_place_id* is a [Google Place ID](https://developers.google.com/places/place-id) (for use with Google Maps).

The *type*s of places include
* Major Basilica
* Minor Basilica
* National Shrine
* Cathedral
* Church
* Shrine
* Chapel
* Mission
* Abbey
* Monastery
* Convent
* University
* School
* Office
* Other

Event types for places include
* Established
* Construction began
* Construction completed
* Destroyed
* Damaged
* Restoration began
* Restoration completed
* Closed

## Notes
* Dates throughout take the form YYYY-MM-DD, YYYY-MM (when only the year and month are known), or YYYY (when only the year is known). Dates may be appended with (c.) to indicate that an exact date is not known. We append rather than prepend to avoid issues with sorting by date. Example: "0045 (c.)".

[Back to homepage.](/catholicdata/)
