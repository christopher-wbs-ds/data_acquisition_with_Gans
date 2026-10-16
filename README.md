# Data Acquisition with Gans

## Overview
The purpose of this project is to simulate a data-acquisition pipeline for the fictitious electric scooter rental company Gans. The company wishes to gather some basic information on a few large German cities, as well as daily updates on the weather forecasts and incoming flights for those locations. The data is gathered through a combination of web-scraping and API calls, and then stored to a MySQL database for later analysis.

## Tech stack
The project runs on two major tools
* MySQL 8.0.x
* Python 3.12

## Data Sources
Wikipedia pages for [Berlin](https://en.wikipedia.org/wiki/Berlin), [Hamburg](https://en.wikipedia.org/wiki/Hamburg), and [Munich](https://en.wikipedia.org/wiki/Munich)

## Secrets
Secret values (database access) are stored in `.env`, not available in this repository. The file has this form
```
CON_STRING=mysql+pymysql://YOURUSER:YOURPASSWORD@127.0.0.1:3306/gans
```
where `YOURUSER` and `YOURPASSWORD` are to be replaced by your own MySQL username and password.

`CON_STRING` assumes a locally hosted MySQL server; networked servers can be reached by providing the appropriate IP address in place of `127.0.0.1`. If a different name is chosen for the schema, this must be updated both in `.env` (replace `gans`, line 1) and in `sql_files/gans_schema.sql`, lines 1-4.

## Structure
data_acquisition_with_Gans/
|--- notebooks/ # used to develop project methodologies
|    |--- 1_webScraping.ipynb
|    |--- 2_writeSQL.ipynb
|--- sql_files/ # definition files for the database
|    |--- gans_schema.sql
|--- README.md

