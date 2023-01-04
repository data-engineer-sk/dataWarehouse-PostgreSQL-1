/* Create stock_db postgreSQL database */
CREATE DATABASE stock_db
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.utf8'
    LC_CTYPE = 'en_US.utf8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
	
/* Tables for Samuel's raw data: stocks, market_capacity, CPI */
Create table stocks (
	seq_number SERIAL,
	ticker VARCHAR(7),
    txdate date,
    open_price decimal(10, 3),
    day_high decimal(10, 3),
    day_low decimal(10, 3),
    close_price decimal(10, 3),
    ex_dividend decimal(5, 3),
    split_ratio decimal(4, 2),
    adj_open decimal(10, 3),
    adj_high decimal(10, 3),
    adj_low decimal(10, 3),
    adj_close decimal(10, 3),
    adj_volume int,
	PRIMARY KEY (seq_number)
    );

Create table market_capacity (
	seq_number SERIAL,
    ticker VARCHAR(7),
	txdate date,
    short_vol int,
    total_vol int,
    PRIMARY KEY (seq_number)
    );	

Create table cpi (
	seq_number SERIAL,
	txdate date,
    CPI decimal(10, 4),
	PRIMARY KEY (seq_number) 
	);