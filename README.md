# ETL Pipeline (PostgreSQL Database)

<html>
<head></head> 
<body data-gr-ext-installed="" data-new-gr-c-s-check-loaded="14.1087.0">
<h1><span style="color:#008000;">README.md</span></h1>
<img src="https://github.com/data-engineer-sk/dataWarehouse-PostgreSQL-1/blob/main/Nasdaq%20API%20-%20ETL%20Processing.png" ALIGN=”left” alt="ETL Processing via Nasdaq API" />
</body>
</html>
  
<h2><span style="color:#008000;">Project Aims</span></h2>
<p>
 Simulate a ETL pipeline process to collect data for data analysis.  By using the API from Nasdaq.com, extract the histical stocks data, consumer price index, and the  market capacity for further analysis.  The below four stocks have been chosen to be studied in this project.
 <ul>
  <li>APPLE Inc.</li>
  <li>VISA</li>
  <li>COST</li>
  <li>MASTER CARD</li>
</ul>
</p>
<h2><span style="color:#008000;">How it works</span></h2>
<p>Write a CLI program with python.  Use the API function calls provided by Nasdaq.com to extract csv file.  Use packages such as  Pandas / Numpy to transform the data complie with the user requirement.  Store the results to the PostgreSQL / MysQL Server (Can be stored in local machine or AWS Cloud RDS) which act as a data warehouse.  Use SQL to furthur transform the data into a new data table (**Perform unit test to ensure the data are clearn to use in future.
</p>
<h2><span style="color:#008000;">System Requirement</span></h2>
<p>This system requires the following setting:
  <li>Python 3.10 or above</li>
  <li>Nasdaq API (Click <a href="https://data.nasdaq.com/tools/api">here</a> link to the website)
  <li>PostgreSQL / MySQL</li>
  <Li>Tableau Public (for data visualization)</li>
  <li>Any program editor (e.g. Pycharm / VS Code)</li>  
</p>
<h2><span style="color:#008000;">ETL Processes</span></h2>
<p>To extract the historical stock data, use the API which were provided by Nasdaq.com for processing.  For example:</p>
<p>Use the nasdaqdatalink.get_table function to extract data:</p>
<p>tempData = nasdaqdatalink.get_table('WIKI/PRICES', qopts = { 'columns': ['ticker', 'date', 'open', 'high', 'low','close','ex-dividend','split_ratio','adj_open', 'adj_high', 'adj_low', 'adj_close', 'adj_volume'] }, ticker = [stock], date = { 'gte': strDate, 'lte': endDate })</p>

<h2><span style="color:#008000;">PostgreSQL Database</span></h2>
<p>This system requires the following setting:
  <li>Python 3.10 or above</li>
  <li>Nasdaq API (Click <a href="https://data.nasdaq.com/tools/api">here</a> link to the website)
  <li>PostgreSQL / MySQL</li>
  <Li>Tableau Public (for data visualization)</li>
  <li>Any program editor (e.g. Pycharm / VS Code)</li>  
</p>
<h2><span style="color:#008000;">SQL</span></h2>
<p>This system requires the following setting:
  <li>Python 3.10 or above</li>
  <li>Nasdaq API (Click <a href="https://data.nasdaq.com/tools/api">here</a> link to the website)
  <li>PostgreSQL / MySQL</li>
  <Li>Tableau Public (for data visualization)</li>
  <li>Any program editor (e.g. Pycharm / VS Code)</li>  
</p>
<h2><span style="color:#008000;">To Be Continue</span></h2>
<p>To finish the data visualization with Tableau Public
</p>
