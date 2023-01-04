set global local_infile=on;
/* database (raw data) */
Create database stock_db;
use stock_db;

/* Load raw data from local computer to AWS RDS: stocks, market_capacity, CPI */
LOAD DATA LOCAL INFILE '~/Desktop/testBed/AVS-Project/db/stock_price/Consolidate_Stocks.csv' INTO TABLE stocks
	 COLUMNS TERMINATED BY ','
     ignore 1 rows;

LOAD DATA LOCAL INFILE '~/Desktop/testBed/AVS-Project/db/market_capacity/Consolidate_Market_Capacity.csv' INTO TABLE market_capacity
	 COLUMNS TERMINATED BY ','
     ignore 1 rows;

LOAD DATA LOCAL INFILE '~/Desktop/testBed/AVS-Project/db/cpi/USA_Transformed_CPI.csv' INTO TABLE cpi
	 COLUMNS TERMINATED BY ','
     ignore 1 rows;
