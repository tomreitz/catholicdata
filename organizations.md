# Organizations

## Endpoints
* [organizations.json](/catholicdata/organizations.json), which contains all organizations

## Structure:
```
[
  {
    id: "organizations/little-sisters-of-the-poor",
    type: "Pontifical Institute",
    name: "Little Sisters of the Poor",
    contact: {
      website: "http://littlesistersofthepoor.org/"
    },
    wikipedia: "https://en.wikipedia.org/wiki/Little_Sisters_of_the_Poor",
    social: {
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

## Notes
* Dates throughout take the form YYYY-MM-DD, YYYY-MM (when only the year and month are known), or YYYY (when only the year is known). Dates may be appended with (c.) to indicate that an exact date is not known. We append rather than prepend to avoid issues with sorting by date. Example: "45 (c.)".
* The *contact* object throughout may contain elements including *address1* and *address2* (mailing address), *website* (URL), *email*, *phone* (with country code), *fax* (with country code)
* The *social* object throughout may contain elements including *facebook* (URL), *twitter* (handle), *instagram* (URL), and *youtube* (URL).
