/* Create the data warehouse schema */
DROP TABLE IF EXISTS BI_cpi;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE BI_cpi (
  txdate date DEFAULT NULL,
  cpi decimal(10,4) DEFAULT NULL
);

/*!40000 ALTER TABLE `BI_cpi` DISABLE KEYS */;
INSERT INTO `BI_cpi` VALUES ('2011-01-31',220.2200),('2011-02-28',221.3100),('2011-03-31',223.4700),('2011-04-30',224.9100),('2011-05-31',225.9600),('2011-06-30',225.7200),('2011-07-31',225.9200),('2011-08-31',226.5400),('2011-09-30',226.8900),('2011-10-31',226.4200),('2011-11-30',226.2300),('2011-12-31',225.6700),('2012-01-31',226.6600),('2012-02-29',227.6600),('2012-03-31',229.3900),('2012-04-30',230.0800),('2012-05-31',229.8200),('2012-06-30',229.4800),('2012-07-31',229.1000),('2012-08-31',230.3800),('2012-09-30',231.4100),('2012-10-31',231.3200),('2012-11-30',230.2200),('2012-12-31',229.6000),('2013-01-31',230.2800),('2013-02-28',232.1700),('2013-03-31',232.7700),('2013-04-30',232.5300),('2013-05-31',232.9400),('2013-06-30',233.5000),('2013-07-31',233.6000),('2013-08-31',233.8800),('2013-09-30',234.1500),('2013-10-31',233.5500),('2013-11-30',233.0700),('2013-12-31',233.0500),('2014-01-31',233.9200),('2014-02-28',234.7800),('2014-03-31',236.2900),('2014-04-30',237.0700),('2014-05-31',237.9000),('2014-06-30',238.3400),('2014-07-31',238.2500),('2014-08-31',237.8500),('2014-09-30',238.0300),('2014-10-31',237.4300),('2014-11-30',236.1500),('2014-12-31',234.8100);

DROP TABLE IF EXISTS BI_stocks_mth;
CREATE TABLE BI_stocks_mth (
  ticker varchar(7) DEFAULT NULL,
  yearMonth varchar(7) DEFAULT NULL,
  mth_open_price decimal(10,3) DEFAULT NULL,
  mth_day_high decimal(10,3) DEFAULT NULL,
  mth_day_low decimal(10,3) DEFAULT NULL,
  mth_close_price decimal(10,3) DEFAULT NULL,
  mth_short_vol decimal(15,2) DEFAULT NULL,
  mth_total_vol decimal(15,2) DEFAULT NULL
);

DROP TABLE IF EXISTS BI_stocks;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE BI_stocks (
  ticker varchar(7) DEFAULT NULL,
  txdate date DEFAULT NULL,
  open_price decimal(10,3) DEFAULT NULL,
  day_high decimal(10,3) DEFAULT NULL,
  day_low decimal(10,3) DEFAULT NULL,
  close_price decimal(10,3) DEFAULT NULL,
  ex_dividend decimal(5,3) DEFAULT NULL,
  short_vol int DEFAULT NULL,
  total_vol int DEFAULT NULL
);