CREATE TABLE `customer_service_kpi(
  `customer_service_KPI_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `customer_service_KPI_average_waiting_time_minutes` INT NOT NULL,
  PRIMARY KEY(`customer_service_KPI_timestamp`));

-- CREATE EVN_average_customer_waiting_time_every_1_hour--
CREATE EVENT `EVN_average_customer_waiting_time_every_1_hour`
ON SCHEDULE EVERY 1 HOUR
DO
INSERT INTO `customer_service_kpi` (customer_service_KPI_average_waiting_time_minutes)
SELECT AVG(TIMESTAMPDIFF(MINUTE, ticket_created_timestamp, ticket_resolved_timestamp)) 
FROM `customer_service_ticket`
WHERE ticket_created_timestamp >= NOW() - INTERVAL 1 HOUR;
