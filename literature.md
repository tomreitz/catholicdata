# Literature

## Endpoints
* [literature.json](/catholicdata/literature.json), which contains all literature

## Structure:
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

## Details
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


## Notes
* Dates throughout take the form YYYY-MM-DD, YYYY-MM (when only the year and month are known), or YYYY (when only the year is known). Dates may be appended with (c.) to indicate that an exact date is not known. We append rather than prepend to avoid issues with sorting by date. Example: "45 (c.)".
