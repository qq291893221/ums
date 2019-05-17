-- 删表
DROP TABLE
IF EXISTS `t_ums_organizition`;
-- 建表
CREATE TABLE `t_ums_organizition` (
  -- 业务字段 start
	`organizition_name`VARCHAR(32) NOT NULL COMMENT '组织名称',
  `organizition_icon` VARCHAR(32) COMMENT '图标',
	`organizition_type` TINYINT(1) COMMENT '组织类型(1:集团,2:分公司,3:事业部,4:部门)',
	`pid` BIGINT COMMENT '上级id',
  -- 业务字段 end
	-- 公共字段 start
	`id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '主键编号',
	`is_delete` TINYINT(1) NOT NULL DEFAULT '0' COMMENT '是否删除（0:未删除,1:已删除）',
	`create_time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP NULL COMMENT '创建时间',
	`update_time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP NULL COMMENT '更新时间',
	`status` TINYINT(1) NOT NULL DEFAULT '1' COMMENT '状态(0:禁用,1:正常)',
	`describe` VARCHAR(32) DEFAULT '' COMMENT '描述信息',
	`sort` BIGINT DEFAULT 1 COMMENT '排序编号',
	PRIMARY KEY (`id`)
	-- 公共字段 end
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT = '组织树结构表';
-- 初始化数据
INSERT INTO `t_ums_organizition` (`organizition_name`) VALUES ('A公司');
INSERT INTO `t_ums_organizition` (`organizition_name`) VALUES ('研发部');
INSERT INTO `t_ums_organizition` (`organizition_name`) VALUES ('后勤部');
