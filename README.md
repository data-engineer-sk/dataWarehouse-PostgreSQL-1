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
Extract the historical stock data, use the API which were provided by Nasdaq.com for processing.  Use **nasdaqdatalink.ApiConfig.api_key == API_KEY** to establish the connection:
> nasdaqdatalink.ApiConfig.api_key = API_KEY

Then use the **nasdaqdatalink.get_table** function to extract **historical stock data**:
> tempData = nasdaqdatalink.get_table('WIKI/PRICES', qopts = { 'columns': ['ticker', 'date', 'open', 'high', 'low','close',
> 'ex-dividend','split_ratio','adj_open', 'adj_high', 'adj_low', 'adj_close', 'adj_volume'] }, ticker = [stock], date = 
> { 'gte': strDate, 'lte': endDate })

Use the **nasdaqdatalink.get** function to extract **market capacity data**:
> tempData  = nasdaqdatalink.get(marketCapStock,start_date=startDate, end_date=endDate)

Use the **nasdaqdatalink.get** function to extract **cpi data**:
> cpiData = nasdaqdatalink.get('RATEINF/CPI_USA',start_date="2011-01-01", end_date="2014-12-31")

### PostgreSQL Data Warehouse
The extracted data will stored in the following schema:
![Database Tables Schema](https://github.com/data-engineer-sk/dataWarehouse-PostgreSQL-1/blob/main/stock_data_db.png)

### Transformation and Loading
In this project, the transaction was done by the python scripts and the loading will be done by the SQL programming.  Below showing the table schema after the data transformation and loading
![Data warehouse Tables Schema](https://github.com/data-engineer-sk/dataWarehouse-PostgreSQL-1/blob/main/three_data_warehouse_tables.png)

### Tableau Public for Data Visualization
To be implemented later

