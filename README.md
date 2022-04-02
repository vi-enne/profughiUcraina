# profughiUcraina
[![language-english](https://img.shields.io/badge/Language-english-red.svg)](#description) [![language-italian](https://img.shields.io/badge/Language-italian-blue.svg)](#versione-italiana) [![](https://img.shields.io/badge/frictionless-ready-%23EA6D4C)](https://frictionlessdata.io/) <a href="https://www.datibenecomune.it/"><img src="https://img.shields.io/badge/%F0%9F%99%8F-%23datiBeneComune-%23cc3232"/></a>

> ⚠️ WORK IN PROGRESS

## Description
We collect ukrainian refugees data based on Viminale's tweet (Italy). Data are scraped with this [R script](https://github.com/vi-enne/profughiUcraina/blob/main/script/profughiUcraina.R). 

## Repository structure
```
profughiUcraina
├── 📂 data
│   ├── 📄 outputProfughi.csv
│   └── 📄 tweet.csv
├── 📂 script
│   └── 📄 profughiUcraina.R
├── 📄 README.md
├── 📄 CHANGELOG.md
├── 📄 LICENSE.md
└── 📄 datapackage.yaml
```
## Metadata
Each `csv` file in [`data`](https://github.com/vi-enne/profughiUcraina/tree/main/data) folder is described according to [fricionless data standard](https://frictionlessdata.io/standards/#standards-toolkit). Metadata are stored in [datapackage.yaml](https://github.com/vi-enne/profughiUcraina/blob/main/datapackage.yaml)

### [📄 outputProfughi.csv](https://raw.githubusercontent.com/vi-enne/profughiUcraina/main/data/outputProfughi.csv)
- path: `data/`
- encoding: `UTF-8`
- delimiter: `,`

Field | Type | Description | Example
-- | -- | -- | --
Data | date | Tweet date | 2022-04-02
Totale | integer | Total number of Ukrainian refugees arrived in Italy | 1000
Uomini | integer | Number of Ukrainian men who arrived in Italy | 1000
Donne | integer | Number of Ukrainian women who arrived in Italy | 1000
Minori | integer | Number of Ukrainian minors who arrived in Italy | 1000

### [📄 tweet.csv](https://raw.githubusercontent.com/vi-enne/profughiUcraina/main/data/tweet.csv)
- path: `data/`
- encoding: `UTF-8` ⚠️
- delimiter: `,`

Field | Type | Description | Example
-- | -- | -- | --
wip | wip | wip | wip
wip | wip | wip | wip
wip | wip | wip | wip
wip | wip | wip | wip
wip | wip | wip | wip

## License
<a href="https://creativecommons.org/licenses/by/4.0/"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/1/16/CC-BY_icon.svg/640px-CC-BY_icon.svg.png" width="150"/></a>
---
# Versione Italiana

## Descrizione
Raccogliamo e rilasciamo dati relativi al flusso di profughi ucraini basati sui tweet dell'account ufficiale del Viminale. Lo scraping avviene tramite [questo script in R](https://github.com/vi-enne/profughiUcraina/blob/main/script/profughiUcraina.R).

## Struttura repository
```
profughiUcraina
├── 📂 data
│   ├── 📄 outputProfughi.csv
│   └── 📄 tweet.csv
├── 📂 script
│   └── 📄 profughiUcraina.R
├── 📄 README.md
├── 📄 CHANGELOG.md
├── 📄 LICENSE.md
└── 📄 datapackage.yaml
```
## Metadati
Ogni file `csv` nella cartella [`data`](https://github.com/vi-enne/profughiUcraina/tree/main/data) è descritto secondo gli standard [fricionless data](https://frictionlessdata.io/standards/#standards-toolkit). I metadati sono contenuti nel file [datapackage.yaml](https://github.com/vi-enne/profughiUcraina/blob/main/datapackage.yaml)

### [📄 outputProfughi.csv](https://raw.githubusercontent.com/vi-enne/profughiUcraina/main/data/outputProfughi.csv)
- percorso: `data/`
- encoding: `UTF-8`
- separatore di campo: `,`

Campo | Formato | Descrizione | Esempio
-- | -- | -- | --
Data | date | Data del tweet | 2022-04-02
Totale | integer | Numero totale di profughi ucraini arrivati in Italia | 1000
Uomini | integer | Numero di uomini ucraini arrivati in Italia | 1000
Donne | integer | Numero di donne ucraine arrivate in Italia | 1000
Minori | integer | Numero di minori ucraini arrivati in Italia | 1000

### [📄 tweet.csv](https://raw.githubusercontent.com/vi-enne/profughiUcraina/main/data/tweet.csv)
- percorso: `data/`
- encoding: `UTF-8` ⚠️
- separatore di campo: `,`

Campo | Formato | Descrizione | Esempio
-- | -- | -- | --
wip | wip | wip | wip
wip | wip | wip | wip
wip | wip | wip | wip
wip | wip | wip | wip
wip | wip | wip | wip

## Licenza
<a href="https://creativecommons.org/licenses/by/4.0/"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/1/16/CC-BY_icon.svg/640px-CC-BY_icon.svg.png" width="150"/></a>
