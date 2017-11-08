
/* UH_ORDER : 需求发布主信息表 */
DROP TABLE IF EXISTS `UH_ORDER` ;
CREATE TABLE `UH_ORDER` (
	`MODIFY_TIME` TIMESTAMP NOT NULL	NULL DEFAULT NULL COMMENT '更新时间戳',
    `MODIFY_TYPE` INT 	 COMMENT '更新操作类别',
    `ORDER_CODE` VARCHAR(32) BINARY 	 COMMENT '需求编号',
    `ORDER_DESC` VARCHAR(256) BINARY 	 COMMENT '需求描述',
    `ORDER_DELIVERY_DATE` DATE 	 COMMENT '期望发货时间',
    `ORDER_DELIVERY_ADDRESS` VARCHAR(256) BINARY 	 COMMENT '收货地址',
    `ORDER_CONTACT_NAME` VARCHAR(16) BINARY 	 COMMENT '收货联系人姓名',
    `ORDER_CONTACT_PHONE` VARCHAR(16) BINARY 	 COMMENT '收货联系人电话',
    `ORDER_TOTAL_ESTIMATION` INT 	 COMMENT '需求总价估算',
    `ORDER_STATUS` INT 	 COMMENT '需求状态',
	`ORDER_EFFECTIVE_BEGIN_DATE` TIMESTAMP 	NULL DEFAULT NULL COMMENT '需求有效期(开始)',
	`ORDER_EFFECTIVE_END_DATE` TIMESTAMP 	NULL DEFAULT NULL COMMENT '需求有效期(结束)',
    `ORDER_BID_RECORD_LIMIT` INT 	 COMMENT '最多候选竞标件数',
    `ORDER_FINAL_BID_UID` VARCHAR(32) BINARY 	 COMMENT '最终选定竞标者ID',
    `ORDER_FINAL_BID_PRICE` INT 	 COMMENT '最终成交价格',
    `ORDER_COMMENT` VARCHAR(256) BINARY 	 COMMENT '备注',
    `CREATE_AUTHOR` VARCHAR(32) BINARY COMMENT '创建者',
    `CREATE_DATETIME` TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `UPDATE_AUTHOR` VARCHAR(32) BINARY COMMENT '更新者',
    `UPDATE_DATETIME` TIMESTAMP  DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间'
) COMMENT '需求发布主信息表' ;
ALTER TABLE `UH_ORDER` ADD CONSTRAINT `PK_UH_ORDER` PRIMARY KEY ( MODIFY_TIME ) ;
