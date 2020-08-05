# People

## Endpoints
* [people.json](/catholicdata/people.json), which contains all people
* [people_living.json](/catholicdata/people_living.json), which contains living people only
* [people_saints.json](/catholicdata/people_saints.json), which contains only Saints
* [people_popes.json](/catholicdata/people_popes.json), which contains only Popes
* [people_bishops.json](/catholicdata/peoplebishops.json), which contains only Bishops

## Structure:
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

## Details
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

## Notes
* Dates throughout take the form YYYY-MM-DD, YYYY-MM (when only the year and month are known), or YYYY (when only the year is known). Dates may be appended with (c.) to indicate that an exact date is not known. We append rather than prepend to avoid issues with sorting by date. Example: "45 (c.)".
* The *contact* object throughout may contain elements including *address1* and *address2* (mailing address), *website* (URL), *email*, *phone* (with country code), *fax* (with country code)
* The *social* object throughout may contain elements including *facebook* (URL), *twitter* (handle), *instagram* (URL), and *youtube* (URL).

[Back to homepage.](/catholicdata/)
