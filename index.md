# catholicdata

With over a billion members and 400,000 priests, the Catholic Church is one of the largest organizations in the world. And with a history reaching back over 2,000 years, it is also one of the oldest.

By gathering Catholic information into a comprehensive database, we hope to facilitate the study of the rich history of the Church, to foster the development of technical tools such as apps and visualizations, and to bring people to a deeper understanding of Catholicism.

This site collects and curates information about people, places, regions, events, organizations, and literature of the Catholic Church (both Latin and Eastern Rites). As often as possible, we obtain information from official Church sources such as Vatican press releases and Diocesan announcements.

One can measure the maturity of any dataset in terms of its breadth, depth, and accuracy. By breadth, we mean how comprehensive is the data; by depth, we mean how many possible data points are actually collected and available; and by accuracy, we mean how free is the data from factual errors and typos. This dataset currently includes:
* 1,250 bishops (all current bishops of the US, UK, and several other countries, plus a few others)
* 2,700 dioceses (all current geographic dioceses, but few titular ones)

We plan to add the following further information:
* Historical dioceses, of which there are around 6,000
* Additional people, including
    * all Popes (266)
    * many saints (thousands)
    * all living bishops (an additiona 4,300) and known deceased bishops (many thousands)
    * a small number of other notable Catholics
* Many notable Catholic places, including Basilicas (over 1,000), Cathedrals (over 3,000), and Abbeys/Priories (over 3,000)
* Papal encyclicals and church council documents
* Events, such as
    * Erection or supression of regions
    * Births, ordinations, retirements, and deaths of people
    * Construction, restoration, and closure of places
    * Founding and disbanding of organizations


-----

## [regions.json](/catholicdata/regions.json)
Structure:
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
      latitude: 29.83742,
      longitude: -83.94729,
      geojson: "https://tomreitz.github.io/catholicdata/regions/ecclesiastical/us-or-portland.geojson"
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

-----

## [people.json](/catholicdata/people.json)
Structure:
```
[
  {
    id: "people/alexander-sample",
    rank: "Bishop",
    title: "Archbishop",
    status: "Active",
    name: "Alexander King Sample",
    display_name: "Archbishop Alexander King Sample",
    deceased: false,
    assignments: [
      {
        title: "Archbishop of Portland, Oregon",
	modifier: "",
	date_appointed: "2013-01-29",
        date_installed: "2013-04-02",
        date_left: null,
        jurisdiction: "regions/ecclesiastical/us/or/portland"
      },
      {
        title: "Bishop of Marquette, Michigan",
	modifier: "",
	date_appointed: "2005-12-13",
        date_installed: "2006-01-25",
        date_left: "2013-04-02",
        jurisdiction: "regions/ecclesiastical/us/mi/marquette"
      }
    ],
    contact: {
      facebook: "https://www.facebook.com/bishopalexandersample/",
      twitter: "https://twitter.com/ArchbishpSample"
    },
    events: [
      {
        event: "Born",
        date: "1960-11-07",
        place: "places/us/mt/kalispell"
        region: "regions/secular/us/mt",
        description: ""
      },
      {
        event: "Education completed",
        date: "1978",
        place: "places/us/mi/michigan-technological-university"
        region: "regions/secular/us/mi",
        description: "Masters of Science in Metallurgical Engineering"
      },
      {
        event: "Presbyteral Ordination",
        date: "1990-06-01",
        place: "places/us/mi/marquette/st-peter-cathedral"
        region: "regions/ecclesiastical/us/mi/marquette",
        description: ""
      },
      {
        event: "Episcopal Appointment",
        date: "2005-12-13",
        description: "Appointed 12th Bishop of Marquette Michigan"
      },
      {
        event: "Episcopal Consecration",
        date: "2006-01-25",
        place: "places/us/mi/marquette/st-peter-cathedral"
        region: "regions/ecclesiastical/us/mi/marquette",
        description: "Ordained 12th Bishop of Marquette Michigan"
      },
      {
        event: "Episcopal Appointment",
        date: "2013-01-29",
        description: "Appointed 11th Archbishop of Portland Oregon"
      },
      {
        event: "Episcopal Installation",
        date: "2013-04-02",
        place: "places/us/or/portland/chiles-center-arena"
        region: "regions/ecclesiastical/us/or/portland",
        description: "Installed as 11th Archbishop of Portland Oregon"
      }
    ]
  }
]
```
The *assignments[\*].jurisdiction* refers to the ID of a [regions](#regionsjson).

The *rank*s of persons in the Church include
* Clergy, or those men ordained to religious orders
    * Bishop, a successor of the Apostles
        * Pope, who is successor of St. Peter, Vicar of Christ, and head of the Universal Catholic Church
        * Patriarch, who is head of a particular Eastern Catholic Church in communion with Rome
        * Major archbishop, who is head of a smaller Eastern Catholic Church
        * Cardinal, who is appointed by the Pope and is *usually* an Archbishop or Bishop, although priests can also be Cardinals
        * Primate, who is usually (Arch)bishop of the first or oldest (Arch)diocese in a country
        * Metropolitan bishop, who is an Archbishop but holds some additional authority
        * Archbishop, who is the bishop of an Archdiocese (which is typically a larger diocese)
        * Bishop, who is head of a diocese (usually a geographic one, although possibly a titular one)
    * Priest, a (nearly always unmarried) pastor of souls who can consecrate the Eucharist
    * Deacon, a (possibly married) man who assists in ministering to the people of God
* Layperson, or the unordained
* Religious, or a member of a religious order or organization &mdash; may be ordained or unordained

The *title*s of persons in the Church include
* (for Bishops)
    * Abbot, who is the bishop or a religious order
* (for Priests)
    * Monsignor, who is a priest given a honorific title by the Pope
* (for Religious)
    * Mother, who is the head of an order of religious women
    * Sister, who is a female member of a religious order or organization
    * Brother, who is an unordained male member of a religious order or organization
* Blessed, who is a [beatified](https://en.wikipedia.org/wiki/Beatification) person
* Saint, who is a [canonized](https://en.wikipedia.org/wiki/Canonization) person

More details about the [Hierarchy of the Catholic Church](https://en.wikipedia.org/wiki/Hierarchy_of_the_Catholic_Church).

The *status*es of persons in the Church include
* Elect, for assignments that have been announced by have not yet taken effect
* Active
* Emeritus, for former assignments of a retired person

Assignment *modifier*s include
* (none)
* Auxiliary
* Coajutor

Event *type*s for persons include
* Born
* Education began
* Education completed
* Education withdrew
* Military service began
* Military service withdrew
* Diaconate Ordination
* Presbyteral Ordination
* Incardination
* Episcopal Appointment
* Episcopal Consecration
* Episcopal Installation
* Married
* Moved
* Retired
* Died

-----

## [places.json](/catholicdata/places.json)
Structure:
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

-----

## [organizations.json](/catholicdata/organizations.json)
Structure:
```
[
  {
    id: "organizations/little-sisters-of-the-poor",
    type: "Pontifical Institute",
    name: "Little Sisters of the Poor",
    contact: {
      facebook: "https://www.facebook.com/Little-Sisters-of-the-Poor-United-States-1512750945687722/",
      youtube: "https://www.youtube.com/channel/UCtXYBcbkxh7W8v8UR7CgvHQ"
    },
    events: [
      {
        event: "Founded",
        date: "1839",
	founder: "people/jeanne-jugan",
        description: "",
	source: "https://en.wikipedia.org/wiki/Little_Sisters_of_the_Poor"
      }
    ]
  },
  ...
]
```
<!--- see http://www.catholic-hierarchy.org/country/xrel.html -->
Event types for organizations include
* Founded
* Disbanded

-----

## [literature.json](/catholicdata/literature.json)
Structure:
```
[
  {
    id: "literature/papal-encyclicals/redemptor-hominis",
    type: "Encyclical",
    language: "la",
    title: "Redemptor hominis",
    title_en: "The Redeemer of Man",
    author: "people/karol-józef-wojtyła",
    date: "1979-03-04",
    summary: "On Jesus' Redemption of the world; the central importance of the human person; the Pope's plan of governance",
    source: "http://www.vatican.va/content/john-paul-ii/la/encyclicals/documents/hf_jp-ii_enc_04031979_redemptor-hominis.html",
    source_en: "http://www.vatican.va/content/john-paul-ii/en/encyclicals/documents/hf_jp-ii_enc_04031979_redemptor-hominis.html"
  },
  ...
]
```
The *language* is an [ISO 639-1 language code](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes).
The *source* is a URL where the full text can be found.

Literature *type*s include
* Papal documents ([details](https://library.athenaeum.edu/c.php?g=30820&p=193150))
    * Apostolic Constitution, which is a solemn doctrinal or disciplinary document, such as The Code of Canon Law
    * Encyclical, which is a letter of a pastoral nature
    * Motu Proprio, which is a (generally shorter) legislative document
    * Apostolic Epistle, which is a letter usually addressing a particular need or a specific group of people
    * Apostolic Exhortations, which is a reflction on a topic encouraging a particular virtue or mission
    * Address, which is a less formal discussion of specific issues or circumstances 
* Writings of the Church Fathers ([details](https://www.newadvent.org/fathers/)), including
    * Homiles
    * Epistles
    * Treatise
    * Other works
* Select works by prominent modern Catholic authors, <!-- see https://www.cs.cmu.edu/~spok/catholic/writings.html --> including
    * Homilies
    * Articles
    * Books

-----

## Notes
* Dates throughout take the form YYYY-MM-DD, YYYY-MM (when only the year and month are known), or YYYY (when only the year is known)
* The *contact* object of throughout may contain elements including *address1* and *address2* (mailing address), *website* (URL), *email*, *phone* (with country code), *fax* (with country code), *facebook* (URL), *twitter* (handle), *instagram* (URL), and *youtube* (URL).
* test
