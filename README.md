# README.MD
## ETL Pipeline (PostgreSQL Database)
![ETL Process via API](https://github.com/data-engineer-sk/dataWarehouse-PostgreSQL-1/blob/main/Nasdaq%20API%20-%20ETL%20Processing.png)

### Project Aims
Simulate a ETL pipeline process to collect data for data analysis.  By using the API from Nasdaq.com, extract the histical stocks data, consumer price index, and the  market capacity for further analysis.  The below four stocks have been chosen to be studied in this project.
1. APPLE Inc.
2. VISA
3. COST
4. MASTER CARD

### How it works
Write a CLI program with python.  Use the API function calls provided by Nasdaq.com to extract csv file.  Use packages such as  Pandas / Numpy to transform the data complie with the user requirement.  Store the results to the PostgreSQL / MysQL Server (Can be stored in local machine or AWS Cloud RDS) which act as a data warehouse.  Use SQL to furthur transform the data into a new data table (**Perform unit test to ensure the data are clearn to use in future.**)

### System Requirement
This system requires the following setting:
- Python 3.10 or above
- Nasdaq API (Click <a href="https://data.nasdaq.com/tools/api">here</a> link to the website)
- PostgreSQL / MySQL
- Tableau Public (for data visualization)
- Any program editor (e.g. Pycharm / VS Code)

### ETL Processes
Extract the historical stock data, use the API which were provided by Nasdaq.com for processing.  For example, use the **nasdaqdatalink.get_table** function to extract data:

> tempData = nasdaqdatalink.get_table('WIKI/PRICES', qopts = { 'columns': ['ticker', 'date', 'open', 'high', 'low','close',
> 'ex-dividend','split_ratio','adj_open', 'adj_high', 'adj_low', 'adj_close', 'adj_volume'] }, ticker = [stock], date = 
> { 'gte': strDate, 'lte': endDate })

The extracted data will stored in the following schema:
![Database Tables Schema](https://github.com/data-engineer-sk/dataWarehouse-PostgreSQL-1/blob/main/Nasdaq%20API%20-%20ETL%20Processing.png)

### PostgreSQL Database


### SQL


### Tableau Public for Data Visualization
To be implemented later
