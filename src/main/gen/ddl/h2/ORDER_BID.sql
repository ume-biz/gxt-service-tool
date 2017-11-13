
DROP TABLE IF EXISTS `ORDER_BID` ;
CREATE TABLE `ORDER_BID` (
    `ORDER_CODE` VARCHAR(32) NOT NULL	,
    `BID_UID` VARCHAR(32) NOT NULL	,
    `BID_DESC` VARCHAR(256) 	,
    `BID_PRICE` INT 	,
    `BID_CONTACT_NAME` VARCHAR(128) 	,
    `BID_CONTACT_PHONE` VARCHAR(16) 	,
    `BID_COMMENT` VARCHAR(256) 	,
    `CREATE_AUTHOR` VARCHAR(32),
    `CREATE_DATETIME` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `UPDATE_AUTHOR` VARCHAR(32),
    `UPDATE_DATETIME` TIMESTAMP  DEFAULT CURRENT_TIMESTAMP
);
ALTER TABLE `ORDER_BID` ADD CONSTRAINT `PK_ORDER_BID` PRIMARY KEY ( ORDER_CODE ,BID_UID ) ;

DROP TABLE IF EXISTS `ORDER_BID_HT` ;
CREATE TABLE `ORDER_BID_HT` (
    `ORDER_CODE` VARCHAR(32),
    `OPERATION_HISTORY_DATETIME` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `OPERATION_HISTORY_CATEGORY` CHAR(1) NOT NULL
    `BID_UID` VARCHAR(32),
    `OPERATION_HISTORY_DATETIME` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `OPERATION_HISTORY_CATEGORY` CHAR(1) NOT NULL
    `BID_DESC` VARCHAR(256),
    `OPERATION_HISTORY_DATETIME` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `OPERATION_HISTORY_CATEGORY` CHAR(1) NOT NULL
    `BID_PRICE` INT,
    `OPERATION_HISTORY_DATETIME` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `OPERATION_HISTORY_CATEGORY` CHAR(1) NOT NULL
    `BID_CONTACT_NAME` VARCHAR(128),
    `OPERATION_HISTORY_DATETIME` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `OPERATION_HISTORY_CATEGORY` CHAR(1) NOT NULL
    `BID_CONTACT_PHONE` VARCHAR(16),
    `OPERATION_HISTORY_DATETIME` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `OPERATION_HISTORY_CATEGORY` CHAR(1) NOT NULL
    `BID_COMMENT` VARCHAR(256),
    `OPERATION_HISTORY_DATETIME` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `OPERATION_HISTORY_CATEGORY` CHAR(1) NOT NULL

);
