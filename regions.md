# Regions

## Endpoints
* [regions.json](/catholicdata/regions.json), which contains all regions
* [regions_ecclesiastical.json](/catholicdata/regions_ecclesiastical.json), which contains only ecclesiastical regions
* [regions_ecclesiastical_current.json](/catholicdata/regions_ecclesiastical_current.json), which contains only current (non-suppressed) ecclesiastical regions

## Structure:
```
[
  {
    id: "regions/ecclesiastical/us/or/portland",
    name: "Archdiocese of Portland Oregon",
    type: "Ecclesiastical",
    subtype: "Archdiocese",
    location: {
      country: "United States",
      state: "Oregon",
      city: "Portland",
      timezone: -8,
      latitude: 45.523452,
      longitude: -122.676207,
      geojson: "https://tomreitz.github.io/catholicdata/regions/ecclesiastical/us-or-portland.geojson"
    },
    contact: {
      address: "2838 East Burnside Street\nPortland, Oregon 97214-1830",
      website: "https://archdpdx.org/",
      email: "info@archdpdx.org",
      phone: "+1-503-234-5334",
      fax: "+1-503-234-2545"
    },
    wikipedia: "https://en.wikipedia.org/wiki/Roman_Catholic_Archdiocese_of_Portland_in_Oregon",
    social: {
      facebook: "https://www.facebook.com/archdpdx",
      twitter: "https://twitter.com/archdpdx"
    },
    events: [
      {
        event: "Erected",
        date: "1842-12-01",
        description: "Vicariate Apostolic of Oregon Territory"
      },
      {
        event: "Elevated",
        date: "1846-07-24",
        description: "Diocese of Oregon City"
      },
      {
        event: "Elevated",
        date: "1850-07-29",
        description: "Archdiocese of Oregon City"
      },
      {
        event: "Renamed",
        date: "1928-09-26",
        description: "Archdiocese of Portland in Oregon"
      }
    ]
  },
  ...
]
```

## Details
When present, *location.geojson* is the URL to GeoJSON describing the region boundary.

The *type*s of Regions include
* Secular
* Ecclesiastical

The *subtype*s of *Secular* regions include
* Country
* State
* Province

The *subtype*s of *Ecclesiastical* regions include
* Archdiocese
* Diocese
* Archeparchy
* Eparchy
* Military Ordinariate
* Apostolic Administration
* Apostolic Prefecture
* Apostolic Vicariate
* Prelature
* Personal Prelature
* Personal Ordinariate
* Territorial Prelature
* Secretariat

Event types for regions include
* Erected, when a region is first created or recognized
* Elevated, when an Ecclesiastical region's subtype is upgraded
* Renamed, when a region's name is changed
* Split, when a region is split into two new regions
* United, when a region is joined with another region
* Absorbed, when a region ceases to exist because it became part of another region
* Supressed, when a region ceased to exist and its territory is unted with another region

## Notes
* Dates throughout take the form YYYY-MM-DD, YYYY-MM (when only the year and month are known), or YYYY (when only the year is known). Dates may be appended with (c.) to indicate that an exact date is not known. We append rather than prepend to avoid issues with sorting by date. Example: "0045 (c.)".
* The *contact* object throughout may contain elements including *address1* and *address2* (mailing address), *website* (URL), *email*, *phone* (with country code), *fax* (with country code)
* The *social* object throughout may contain elements including *facebook* (URL), *twitter* (handle), *instagram* (URL), and *youtube* (URL).

[Back to homepage.](/catholicdata/)
