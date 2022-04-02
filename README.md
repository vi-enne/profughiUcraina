# profughiUcraina
[![](https://img.shields.io/badge/frictionless-ready-%23EA6D4C)](https://frictionlessdata.io/) <a href="https://www.datibenecomune.it/"><img src="https://img.shields.io/badge/%F0%9F%99%8F-%23datiBeneComune-%23cc3232"/></a>

> ⚠️ WORK IN PROGRESS

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
Each `csv` file in [`data`](https://github.com/vi-enne/profughiUcraina/tree/main/data) folder is documented according to [fricionless data standard](https://frictionlessdata.io/standards/#standards-toolkit). Metadata are stored in [datapackage.yaml](https://github.com/vi-enne/profughiUcraina/blob/main/datapackage.yaml)

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
