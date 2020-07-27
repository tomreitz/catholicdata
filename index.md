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
      google_place_id: "ChIJVVVKWJ4gTk0RMIJOaRo3LV8" // see https://developers.google.com/places/place-id
    },
    contact: {
      facebook: "https://www.facebook.com/mqtcathedral/",
      email: "secretary@stpetercathedral.org"
    }
  },
  ...
]
```

## [regions.json](https://tomreitz.github.io/catholicdata/regions.json)
Structure:
```
[
  {
    id: "regions/ecclesiastical/us/or/ardiocese-portland",
    name: "Archdiocese of Portland Oregon",
    type: "Archdiocese",
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
        jurisdiction: "regions/us/or/archdiocese-of-portland"
      }
    ],
    past_assignments: [
      {
        title: "Bishop of Marquette, Michigan",
        date_appointed: "2005-12-13",
        date_installed: "2006-01-25",
        date_left: "2013-04-02",
        jurisdiction: "regions/us/mi/diocese-of-marquette"
      }
    ],
    contact: {
      facebook: "https://www.facebook.com/bishopalexandersample/",
      twitter: "https://twitter.com/ArchbishpSample"
    }
  }
]
```

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
    region: "regions/civil/us/mi/houghton",
    description: "Masters of Science in Metallurgical Engineering"
  },
  ...
]
```
Event types include:
* (for places) { established, rebuilt, renovated, destroyed, closed }
* (for regions) { established, absorbed, split }
* (for organizations) { established, disbanded }
* (for people) { born, education_began, education_completed, education_withdrew, military_began, military_withdrew, diaconate_ordination, presbyteral_ordination, incardination, episcopal_consecration, married, moved, retired, died }
