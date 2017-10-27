
/* UME_USER : 供销通用户表 */
DROP TABLE IF EXISTS `UME_USER` ;
CREATE TABLE `UME_USER` (
    `USER_ID` VARCHAR(32) BINARY NOT NULL	 COMMENT '用户识别ID',
    `USER_PASSWORD` VARCHAR(32) BINARY 	 COMMENT '用户登录密码',
    `USER_NAME` VARCHAR(256) BINARY 	 COMMENT '用户名',
    `USER_NICK_NAME` VARCHAR(256) BINARY 	 COMMENT '用户昵称',
    `USER_GENDER` INT(1) 	 COMMENT '用户性别',
    `USER_MOBILE` VARCHAR(16) BINARY 	 COMMENT '用户手机',
    `USER_EMAIL` VARCHAR(64) BINARY 	 COMMENT '用户邮箱',
    `USER_HEAD_IMAGE` VARCHAR(256) BINARY 	 COMMENT '用户头像',
    `USER_DESC` VARCHAR(256) BINARY 	 COMMENT '用户描述信息',
    `USER_STATUS` INT(1) 	 COMMENT '用户账户状态',
    `USER_POST_ADDR` VARCHAR(256) BINARY 	 COMMENT '用户收货地址(默认)',
    `USER_POST_ADDR_OTHER` VARCHAR(1024) BINARY 	 COMMENT '用户收货地址(备用)',
    `USER_BANK_ACC_NO` VARCHAR(32) BINARY 	 COMMENT '用户银行账号(默认)',
    `USER_BANK_ACC_NO_OTHER` VARCHAR(128) BINARY 	 COMMENT '用户银行账号(备用)',
    `USER_BANK_ACC_NAME` VARCHAR(32) BINARY 	 COMMENT '用户银行名称(默认)',
    `USER_BANK_ACC_NAME_OTHER` VARCHAR(128) BINARY 	 COMMENT '用户银行名称(备用)',
    `USER_IDENTITY_CARD` VARCHAR(32) BINARY 	 COMMENT '用户身份证号码',
    `CREATE_AUTHOR` VARCHAR(32) BINARY COMMENT '创建者',
    `CREATE_DATETIME` TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `UPDATE_AUTHOR` VARCHAR(32) BINARY COMMENT '更新者',
    `UPDATE_DATETIME` TIMESTAMP  DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间'
) COMMENT '供销通用户表' ;
ALTER TABLE `UME_USER` ADD CONSTRAINT `PK_UME_USER` PRIMARY KEY ( USER_ID ) ;
