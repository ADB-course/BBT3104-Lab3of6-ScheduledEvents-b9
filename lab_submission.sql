CREATE TABLE `customer_service_kpi(
  `customer_service_KPI_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `customer_service_KPI_average_waiting_time_minutes` INT NOT NULL,
  PRIMARY KEY(`customer_service_KPI_timestamp`));

-- CREATE EVN_average_customer_waiting_time_every_1_hour--
