
DROP TABLE IF EXISTS `ORDER` ;
CREATE TABLE `ORDER` (
    `ORDER_CODE` VARCHAR(32) NOT NULL	,
    `ORDER_DESC` VARCHAR(256) 	,
    `ORDER_DELIVERY_DATE` DATE 	,
    `ORDER_DELIVERY_ADDRESS` VARCHAR(256) NOT NULL	,
    `ORDER_CONTACT_NAME` VARCHAR(16) 	,
    `ORDER_CONTACT_PHONE` VARCHAR(16) 	,
    `ORDER_TOTAL_ESTIMATION` INT 	,
    `ORDER_STATUS` INT NOT NULL	,
	`ORDER_EFFECTIVE_BEGIN_DATE` TIMESTAMP 	NULL DEFAULT NULL,
	`ORDER_EFFECTIVE_END_DATE` TIMESTAMP 	NULL DEFAULT NULL,
    `ORDER_BID_RECORD_LIMIT` INT 	,
    `ORDER_FINAL_BID_UID` VARCHAR(32) 	,
    `ORDER_FINAL_BID_DESC` VARCHAR(256) 	,
    `ORDER_FINAL_BID_PRICE` INT 	,
    `ORDER_COMMENT` VARCHAR(256) 	,
    `CREATE_AUTHOR` VARCHAR(32),
    `CREATE_DATETIME` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `UPDATE_AUTHOR` VARCHAR(32),
    `UPDATE_DATETIME` TIMESTAMP  DEFAULT CURRENT_TIMESTAMP
);
ALTER TABLE `ORDER` ADD CONSTRAINT `PK_ORDER` PRIMARY KEY ( ORDER_CODE ) ;

DROP TABLE IF EXISTS `ORDER_HT` ;
CREATE TABLE `ORDER_HT` (
    `ORDER_CODE` VARCHAR(32),
    `OPERATION_HISTORY_DATETIME` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `OPERATION_HISTORY_CATEGORY` CHAR(1) NOT NULL
    `ORDER_DESC` VARCHAR(256),
    `OPERATION_HISTORY_DATETIME` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `OPERATION_HISTORY_CATEGORY` CHAR(1) NOT NULL
    `ORDER_DELIVERY_DATE` DATE,
    `OPERATION_HISTORY_DATETIME` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `OPERATION_HISTORY_CATEGORY` CHAR(1) NOT NULL
    `ORDER_DELIVERY_ADDRESS` VARCHAR(256),
    `OPERATION_HISTORY_DATETIME` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `OPERATION_HISTORY_CATEGORY` CHAR(1) NOT NULL
    `ORDER_CONTACT_NAME` VARCHAR(16),
    `OPERATION_HISTORY_DATETIME` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `OPERATION_HISTORY_CATEGORY` CHAR(1) NOT NULL
    `ORDER_CONTACT_PHONE` VARCHAR(16),
    `OPERATION_HISTORY_DATETIME` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `OPERATION_HISTORY_CATEGORY` CHAR(1) NOT NULL
    `ORDER_TOTAL_ESTIMATION` INT,
    `OPERATION_HISTORY_DATETIME` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `OPERATION_HISTORY_CATEGORY` CHAR(1) NOT NULL
    `ORDER_STATUS` INT,
    `OPERATION_HISTORY_DATETIME` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `OPERATION_HISTORY_CATEGORY` CHAR(1) NOT NULL
    `ORDER_EFFECTIVE_BEGIN_DATE` TIMESTAMP  NULL DEFAULT NULL,
    `OPERATION_HISTORY_DATETIME` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `OPERATION_HISTORY_CATEGORY` CHAR(1) NOT NULL
    `ORDER_EFFECTIVE_END_DATE` TIMESTAMP  NULL DEFAULT NULL,
    `OPERATION_HISTORY_DATETIME` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `OPERATION_HISTORY_CATEGORY` CHAR(1) NOT NULL
    `ORDER_BID_RECORD_LIMIT` INT,
    `OPERATION_HISTORY_DATETIME` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `OPERATION_HISTORY_CATEGORY` CHAR(1) NOT NULL
    `ORDER_FINAL_BID_UID` VARCHAR(32),
    `OPERATION_HISTORY_DATETIME` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `OPERATION_HISTORY_CATEGORY` CHAR(1) NOT NULL
    `ORDER_FINAL_BID_DESC` VARCHAR(256),
    `OPERATION_HISTORY_DATETIME` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `OPERATION_HISTORY_CATEGORY` CHAR(1) NOT NULL
    `ORDER_FINAL_BID_PRICE` INT,
    `OPERATION_HISTORY_DATETIME` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `OPERATION_HISTORY_CATEGORY` CHAR(1) NOT NULL
    `ORDER_COMMENT` VARCHAR(256),
    `OPERATION_HISTORY_DATETIME` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `OPERATION_HISTORY_CATEGORY` CHAR(1) NOT NULL

);
