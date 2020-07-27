# catholicdata

## [places.json](https://tomreitz.github.io/catholicdata/places.json)
Structure:
```
[
  {
    id: "places/us/mi/marquette/st-peter-cathedral",
    type: "Cathedral",
    name: "St. Peter Cathedral",
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
    }
  },
  ...
]
```
Details:
* *type* takes values like { Major Basilica, Minor Basilica, Cathedral, Church, University, School, Convent, Chapel, Office }
* *location.google_place_id* is a [Goole Place ID](https://developers.google.com/places/place-id) (for use with Google Maps)
* The *contact* object may contain { facebook (URL), twitter (handle), instagram (URL), email }

## [regions.json](https://tomreitz.github.io/catholicdata/regions.json)
Structure:
```
[
  {
    id: "regions/ecclesiastical/us/or/ardiocese-portland",
    name: "Archdiocese of Portland Oregon",
    type: "Ecclesiastical",
    subtype: "Archdiocese",
    location: {
      country: "United States",
      state: "Oregon",
      city: "Portland",
      latitude: 29.83742,
      longitude: -83.94729,
      geojson: "..."
    },
    contact: {
      address1: "2838 East Burnside Street",
      address2: "Portland, Oregon 97214-1830",
      website: "https://archdpdx.org/",
      email: "info@archdpdx.org",
      phone: "+1-503-234-5334",
      fax: "+1-503-234-2545",
      facebook: "https://www.facebook.com/archdpdx",
      twitter: "archdpdx"
    }
  },
  ...
]
```
Details:
* *type* takes values { Ecclesiastical, Secular }
* For *type=Ecclesiastical*, subtype takes values like { Archdiocese, Diocese, Archeparchy, Eparchy, Military Ordinariate, Apostolic Administration, Apostolic Prefecture, Apostolic Vicariate, Prelature, Personal Prelature, Personal Ordinariate, Territorial Prelature, Secretariat }
* For *type=Secular*, subtype takes values like { Country, State, Province, County, City }
* *location.geojson* (when present) is the URL to GeoJSON describing the region boundary
* The *contact* object may contain { address1 and address2 (mailing address), website (URL), email, phone (with country code), fax (with country code), facebook (URL), twitter (handle), instagram (URL) }

## [people_living.json](https://tomreitz.github.io/catholicdata/people_living.json) and [people_deceased.json](https://tomreitz.github.io/catholicdata/people_deceased.json)
Structure:
```
[
  {
    id: "people/alexander-king-sample",
    type: "Archbishop",
    title: "Archbishop",
    name: "Alexander King Sample",
    current_assignments: [
      {
        title: "Archbishop of Portland, Oregon",
        date_appointed: "2013-01-29",
        date_installed: "2013-04-02",
        date_left: null,
        jurisdiction: "regions/ecclesiastical/us/or/archdiocese-of-portland"
      }
    ],
    past_assignments: [
      {
        title: "Bishop of Marquette, Michigan",
        date_appointed: "2005-12-13",
        date_installed: "2006-01-25",
        date_left: "2013-04-02",
        jurisdiction: "regions/ecclesiastical/us/mi/diocese-of-marquette"
      }
    ],
    contact: {
      facebook: "https://www.facebook.com/bishopalexandersample/",
      twitter: "https://twitter.com/ArchbishpSample"
    }
  }
]
```
Details:
* *current_assignments[\*].jurisdiction* and *past_assignments[\*].jurisdiction* contain IDs of [regions](#regionsjson)
* The contact object may contain { facebook (URL), twitter (handle), instagram (URL), email }

## [organizations.json](https://tomreitz.github.io/catholicdata/organizations.json)
Structure:
```
{
	id: "organizations/little-sisters-of-the-poor",
	type: "Pontifical Institute",
	name: "Little Sisters of the Poor"
}
```

## *events_19xx.json* ([17th](https://tomreitz.github.io/catholicdata/events_17xx.json), [18th](https://tomreitz.github.io/catholicdata/events_18xx.json), [19th](https://tomreitz.github.io/catholicdata/events_19xx.json), [20th](https://tomreitz.github.io/catholicdata/events_20xx.json))
(Separate files exist for events of each century.)
Structure:
```
[
  {
    entity: "people/alexander-king-sample",
    event: "education_completed",
    date: "1978",
    place: "places/us/mi/michigan-technological-university"
    region: "regions/secular/us/mi/houghton",
    description: "Masters of Science in Metallurgical Engineering"
  },
  ...
]
```
Event types include:
* (for places) { established, rebuilt, renovated, destroyed, closed }
* (for regions) { established, absorbed, split }
* (for organizations) { established, disbanded }
* (for people) { Born, Education began, Education completed, Education withdrew, Military began, Military withdrew, Diaconate Ordination, Presbyteral Ordination, Incardination, Episcopal Consecration, Episcopal Installation, Married, Moved, Retired, Died }


## Other notes
* Dates throughout take the form YYYY-MM-DD, or YYYY (when only the year is known)
