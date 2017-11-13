

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
    `ORDER_DESC` VARCHAR(256),
    `ORDER_DELIVERY_DATE` DATE,
    `ORDER_DELIVERY_ADDRESS` VARCHAR(256),
    `ORDER_CONTACT_NAME` VARCHAR(16),
    `ORDER_CONTACT_PHONE` VARCHAR(16),
    `ORDER_TOTAL_ESTIMATION` INT,
    `ORDER_STATUS` INT,
    `ORDER_EFFECTIVE_BEGIN_DATE` TIMESTAMP  NULL DEFAULT NULL,
    `ORDER_EFFECTIVE_END_DATE` TIMESTAMP  NULL DEFAULT NULL,
    `ORDER_BID_RECORD_LIMIT` INT,
    `ORDER_FINAL_BID_UID` VARCHAR(32),
    `ORDER_FINAL_BID_DESC` VARCHAR(256),
    `ORDER_FINAL_BID_PRICE` INT,
    `ORDER_COMMENT` VARCHAR(256),
    `OPERATION_HISTORY_DATETIME` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `OPERATION_HISTORY_CATEGORY` CHAR(1) NOT NULL
);


DROP TABLE IF EXISTS `ORDER_ITEM` ;
CREATE TABLE `ORDER_ITEM` (
    `ORDER_CODE` VARCHAR(32) NOT NULL	,
    `ORDER_ITEM_CODE` VARCHAR(32) NOT NULL	,
    `ORDER_ITEM_DESC` VARCHAR(256) 	,
    `ORDER_ITEM_SPECS` VARCHAR(64) 	,
    `ORDER_ITEM_QUANTITY` INT 	,
    `ORDER_ITEM_ESTIMATION` INT 	,
    `ORDER_ITEM_LOGISTICS_CODE` VARCHAR(128) 	,
    `ORDER_ITEM_LOGISTICS_DESC` VARCHAR(256) 	,
    `ORDER_ITEM_ORDER_STATUS` INT 	,
    `ORDER_ITEM_COMMENT` VARCHAR(256) 	,
    `CREATE_AUTHOR` VARCHAR(32),
    `CREATE_DATETIME` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `UPDATE_AUTHOR` VARCHAR(32),
    `UPDATE_DATETIME` TIMESTAMP  DEFAULT CURRENT_TIMESTAMP
);
ALTER TABLE `ORDER_ITEM` ADD CONSTRAINT `PK_ORDER_ITEM` PRIMARY KEY ( ORDER_CODE ,ORDER_ITEM_CODE ) ;

DROP TABLE IF EXISTS `ORDER_ITEM_HT` ;
CREATE TABLE `ORDER_ITEM_HT` (
    `ORDER_CODE` VARCHAR(32),
    `ORDER_ITEM_CODE` VARCHAR(32),
    `ORDER_ITEM_DESC` VARCHAR(256),
    `ORDER_ITEM_SPECS` VARCHAR(64),
    `ORDER_ITEM_QUANTITY` INT,
    `ORDER_ITEM_ESTIMATION` INT,
    `ORDER_ITEM_LOGISTICS_CODE` VARCHAR(128),
    `ORDER_ITEM_LOGISTICS_DESC` VARCHAR(256),
    `ORDER_ITEM_ORDER_STATUS` INT,
    `ORDER_ITEM_COMMENT` VARCHAR(256),
    `OPERATION_HISTORY_DATETIME` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `OPERATION_HISTORY_CATEGORY` CHAR(1) NOT NULL
);


DROP TABLE IF EXISTS `ORDER_ITEM_PROP` ;
CREATE TABLE `ORDER_ITEM_PROP` (
    `ORDER_CODE` VARCHAR(32) NOT NULL	,
    `ORDER_ITEM_CODE` VARCHAR(32) NOT NULL	,
    `ORDER_ITEM_PROP_KEY` VARCHAR(32) NOT NULL	,
    `ORDER_ITEM_PROP_VALUE` VARCHAR(64) 	,
    `ORDER_ITEM_PROP_OPTION` INT 	,
    `ORDER_ITEM_PROP_INDEX` INT 	,
    `CREATE_AUTHOR` VARCHAR(32),
    `CREATE_DATETIME` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `UPDATE_AUTHOR` VARCHAR(32),
    `UPDATE_DATETIME` TIMESTAMP  DEFAULT CURRENT_TIMESTAMP
);
ALTER TABLE `ORDER_ITEM_PROP` ADD CONSTRAINT `PK_ORDER_ITEM_PROP` PRIMARY KEY ( ORDER_CODE ,ORDER_ITEM_CODE ,ORDER_ITEM_PROP_KEY ) ;

DROP TABLE IF EXISTS `ORDER_ITEM_PROP_HT` ;
CREATE TABLE `ORDER_ITEM_PROP_HT` (
    `ORDER_CODE` VARCHAR(32),
    `ORDER_ITEM_CODE` VARCHAR(32),
    `ORDER_ITEM_PROP_KEY` VARCHAR(32),
    `ORDER_ITEM_PROP_VALUE` VARCHAR(64),
    `ORDER_ITEM_PROP_OPTION` INT,
    `ORDER_ITEM_PROP_INDEX` INT,
    `OPERATION_HISTORY_DATETIME` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `OPERATION_HISTORY_CATEGORY` CHAR(1) NOT NULL
);


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
    `BID_UID` VARCHAR(32),
    `BID_DESC` VARCHAR(256),
    `BID_PRICE` INT,
    `BID_CONTACT_NAME` VARCHAR(128),
    `BID_CONTACT_PHONE` VARCHAR(16),
    `BID_COMMENT` VARCHAR(256),
    `OPERATION_HISTORY_DATETIME` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `OPERATION_HISTORY_CATEGORY` CHAR(1) NOT NULL
);
