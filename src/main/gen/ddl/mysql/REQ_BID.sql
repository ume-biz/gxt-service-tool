
/* REQ_BID : 需求竞标信息 */
DROP TABLE IF EXISTS `REQ_BID` ;
CREATE TABLE `REQ_BID` (
    `REQ_CODE` VARCHAR(32) BINARY NOT NULL	 COMMENT '需求编号',
    `BID_CODE` VARCHAR(32) BINARY NOT NULL	 COMMENT '竞标编号',
    `BID_DESC` VARCHAR(256) BINARY 	 COMMENT '竞标描述',
    `BID_PRICE` INT 	 COMMENT '竞标报价',
    `BID_OWNER` VARCHAR(128) BINARY 	 COMMENT '竞标人/机构',
    `BID_OWNER_MOBILE` VARCHAR(16) BINARY 	 COMMENT '联系电话',
    `CREATE_AUTHOR` VARCHAR(32) BINARY COMMENT '创建者',
    `CREATE_DATETIME` TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `UPDATE_AUTHOR` VARCHAR(32) BINARY COMMENT '更新者',
    `UPDATE_DATETIME` TIMESTAMP  DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间'
) COMMENT '需求竞标信息' ;
ALTER TABLE `REQ_BID` ADD CONSTRAINT `PK_REQ_BID` PRIMARY KEY ( REQ_CODE ,BID_CODE ) ;