
/* UME_USER_ADDRESS : 用户配送地址管理表 */
DROP TABLE IF EXISTS `UME_USER_ADDRESS` ;
CREATE TABLE `UME_USER_ADDRESS` (
    `USER_ID` VARCHAR(32) BINARY NOT NULL	 COMMENT '用户识别ID',
    `SEQ` INT NOT NULL	 COMMENT '序号',
    `ADDRESS_PROVINCE` VARCHAR(8) BINARY 	 COMMENT '地址(省)',
    `ADDRESS_CITY` VARCHAR(8) BINARY 	 COMMENT '地址(市)',
    `ADDRESS_DISTRICT` VARCHAR(8) BINARY 	 COMMENT '地址(区)',
    `ADDRESS_REST` VARCHAR(64) BINARY 	 COMMENT '地址(其余)',
    `CONTACT_PERSON` VARCHAR(16) BINARY 	 COMMENT '联系人',
    `CONTACT_NUMBER` VARCHAR(16) BINARY 	 COMMENT '联系电话',
    `ADDRESS_TYPE` VARCHAR(16) BINARY 	 COMMENT '地址类别',
    `CREATE_AUTHOR` VARCHAR(32) BINARY COMMENT '创建者',
    `CREATE_DATETIME` TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `UPDATE_AUTHOR` VARCHAR(32) BINARY COMMENT '更新者',
    `UPDATE_DATETIME` TIMESTAMP  DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间'
) COMMENT '用户配送地址管理表' ;
ALTER TABLE `UME_USER_ADDRESS` ADD CONSTRAINT `PK_UME_USER_ADDRESS` PRIMARY KEY ( USER_ID ,SEQ ) ;