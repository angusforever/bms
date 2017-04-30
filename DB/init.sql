
CREATE TABLE IF NOT EXISTS `newatp_userfunc` (
  `u_atpid` VARCHAR(200) NOT NULL,
  `u_atpcreatedatetime` VARCHAR(200) NULL,
  `u_atpcreateuser` VARCHAR(200) NULL,
  `u_atplastmodifydatetime` VARCHAR(200) NULL,
  `u_atplastmodifyuser` VARCHAR(200) NULL,
  `u_atpstatus` VARCHAR(200) NULL COMMENT '默认为[null],删除后内容更改为[DEL]',
  `u_account` VARCHAR(200) NULL COMMENT '账号，字符串',
  `u_password` VARCHAR(200) NULL COMMENT '密码，密码框',
  `u_name` VARCHAR(200) NULL COMMENT '名称，字符串',
  `u_birthday` VARCHAR(200) NULL COMMENT '出生日期，日期选择',
  `u_regdatetime` VARCHAR(200) NULL COMMENT '注册时间，日期时间选择',
  `u_resttime` VARCHAR(200) NULL COMMENT '休息时间，时间选择',
  `u_age` VARCHAR(200) NULL COMMENT '年龄，整数选择',
  `u_rax` VARCHAR(200) NULL COMMENT '税，小数选择',
  `u_money` VARCHAR(200) NULL COMMENT '收入，费用选择',
  `u_role` VARCHAR(200) NULL COMMENT '角色，固定下拉框选择',
  `u_issuper` VARCHAR(200) NULL COMMENT '特长生，单选开关',
  `u_refereeid` VARCHAR(200) NULL COMMENT '推荐人，外键选择',
  `u_filename` VARCHAR(200) NULL COMMENT '文件名',
  `u_filelocation` VARCHAR(200) NULL COMMENT '文件路径',
  `u_content` text NULL COMMENT '学生详情，图文混编',
  PRIMARY KEY (`u_atpid`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `newatp_user` (
  `u_atpid` VARCHAR(200) NOT NULL,
  `u_atpcreatedatetime` VARCHAR(200) NULL,
  `u_atpcreateuser` VARCHAR(200) NULL,
  `u_atplastmodifydatetime` VARCHAR(200) NULL,
  `u_atplastmodifyuser` VARCHAR(200) NULL,
  `u_atpstatus` VARCHAR(200) NULL,
  `u_atpremark` VARCHAR(200) NULL,
  `u_atpsort` VARCHAR(200) NULL,
  `u_account` VARCHAR(200) NULL,
  `u_password` VARCHAR(200) NULL,
  `u_domainaccount` VARCHAR(200) NULL,
  `u_department` VARCHAR(200) NULL,
  `u_work` VARCHAR(200) NULL,
  PRIMARY KEY (`u_atpid`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `newatp_userrole` (
  `ur_atpid` VARCHAR(200) NOT NULL,
  `ur_atpcreatedatetime` VARCHAR(200) NULL,
  `ur_atpcreateuser` VARCHAR(200) NULL,
  `ur_atplastmodifydatetime` VARCHAR(200) NULL,
  `ur_atplastmodifyuser` VARCHAR(200) NULL,
  `ur_atpstatus` VARCHAR(200) NULL,
  `ur_atpremark` VARCHAR(200) NULL,
  `ur_atpsort` VARCHAR(200) NULL,
  `ur_userid` VARCHAR(200) NULL,
  `ur_roleid` VARCHAR(200) NULL,
  PRIMARY KEY (`ur_atpid`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `newatp_role` (
  `r_atpid` VARCHAR(200) NOT NULL,
  `r_atpcreatedatetime` VARCHAR(200) NULL,
  `r_atpcreateuser` VARCHAR(200) NULL,
  `r_atplastmodifydatetime` VARCHAR(200) NULL,
  `r_atplastmodifyuser` VARCHAR(200) NULL,
  `r_atpstatus` VARCHAR(200) NULL,
  `r_atpremark` VARCHAR(200) NULL,
  `r_atpsort` VARCHAR(200) NULL,
  `r_name` VARCHAR(200) NULL,
  `r_code` VARCHAR(200) NULL,
  PRIMARY KEY (`r_atpid`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `newatp_rolemodule` (
  `rm_atpid` VARCHAR(200) NOT NULL,
  `rm_atpcreatedatetime` VARCHAR(200) NULL,
  `rm_atpcreateuser` VARCHAR(200) NULL,
  `rm_atplastmodifydatetime` VARCHAR(200) NULL,
  `rm_atplastmodifyuser` VARCHAR(200) NULL,
  `rm_atpstatus` VARCHAR(200) NULL,
  `rm_atpremark` VARCHAR(200) NULL,
  `rm_atpsort` VARCHAR(200) NULL,
  `rm_roleid` VARCHAR(200) NULL,
  `rm_moduleid` VARCHAR(200) NULL,
  PRIMARY KEY (`rm_atpid`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `newatp_module` (
  `m_atpid` VARCHAR(200) NOT NULL,
  `m_atpcreatedatetime` VARCHAR(200) NULL,
  `m_atpcreateuser` VARCHAR(200) NULL,
  `m_atplastmodifydatetime` VARCHAR(200) NULL,
  `m_atplastmodifyuser` VARCHAR(200) NULL,
  `m_atpstatus` VARCHAR(200) NULL,
  `m_atpremark` VARCHAR(200) NULL,
  `m_atpsort` VARCHAR(200) NULL,
  `m_type` VARCHAR(200) NULL,
  `m_name` VARCHAR(200) NULL,
  `m_code` VARCHAR(200) NULL,
  `m_desc` VARCHAR(200) NULL,
  `m_pic` VARCHAR(200) NULL,
  `m_pid` VARCHAR(200) NULL,
  `m_order` VARCHAR(200) NULL,
  PRIMARY KEY (`m_atpid`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `newatp_modulefeature` (
  `mf_atpid` VARCHAR(200) NOT NULL,
  `mf_atpcreatedatetime` VARCHAR(200) NULL,
  `mf_atpcreateuser` VARCHAR(200) NULL,
  `mf_atplastmodifydatetime` VARCHAR(200) NULL,
  `mf_atplastmodifyuser` VARCHAR(200) NULL,
  `mf_atpstatus` VARCHAR(200) NULL,
  `mf_atpremark` VARCHAR(200) NULL,
  `mf_atpsort` VARCHAR(200) NULL,
  `mf_featureid` VARCHAR(200) NULL,
  `mf_moduleid` VARCHAR(200) NULL,
  PRIMARY KEY (`mf_atpid`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `newatp_feature` (
  `f_atpid` VARCHAR(200) NOT NULL,
  `f_atpcreatedatetime` VARCHAR(200) NULL,
  `f_atpcreateuser` VARCHAR(200) NULL,
  `f_atplastmodifydatetime` VARCHAR(200) NULL,
  `f_atplastmodifyuser` VARCHAR(200) NULL,
  `f_atpstatus` VARCHAR(200) NULL,
  `f_atpremark` VARCHAR(200) NULL,
  `f_atpsort` VARCHAR(200) NULL,
  `f_type` VARCHAR(200) NULL,
  `f_name` VARCHAR(200) NULL,
  `f_code` VARCHAR(200) NULL,
  `f_desc` VARCHAR(200) NULL,
  `f_pic` VARCHAR(200) NULL,
  `f_pid` VARCHAR(200) NULL,
  `f_width` VARCHAR(200) NULL,
  `f_hight` VARCHAR(200) NULL,
  `f_order` VARCHAR(200) NULL,
  `f_url` VARCHAR(200) NULL,
  `f_urltype` VARCHAR(200) NULL,
  `f_urltarget` VARCHAR(200) NULL,
  PRIMARY KEY (`f_atpid`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `newatp_userconfig` (
  `uc_atpid` VARCHAR(200) NOT NULL,
  `uc_atpcreatedatetime` VARCHAR(200) NULL,
  `uc_atpcreateuser` VARCHAR(200) NULL,
  `uc_atplastmodifydatetime` VARCHAR(200) NULL,
  `uc_atplastmodifyuser` VARCHAR(200) NULL,
  `uc_atpstatus` VARCHAR(200) NULL,
  `uc_atpremark` VARCHAR(200) NULL,
  `uc_atpsort` VARCHAR(200) NULL,
  `uc_userid` VARCHAR(200) NULL,
  `uc_modulefeatureid` VARCHAR(200) NULL,
  `uc_width` VARCHAR(200) NULL,
  `uc_hight` VARCHAR(200) NULL,
  `uc_order` VARCHAR(200) NULL,
  `uc_isopen` VARCHAR(200) NULL,
  PRIMARY KEY (`uc_atpid`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `newatp_admin` (
  `a_atpid` VARCHAR(200) NOT NULL,
  `a_atpcreatedatetime` VARCHAR(200) NULL,
  `a_atpcreateuser` VARCHAR(200) NULL,
  `a_atplastmodifydatetime` VARCHAR(200) NULL,
  `a_atplastmodifyuser` VARCHAR(200) NULL,
  `a_atpstatus` VARCHAR(200) NULL,
  `a_atpremark` VARCHAR(200) NULL,
  `a_atpsort` VARCHAR(200) NULL,
  `a_account` VARCHAR(200) NULL,
  `a_password` VARCHAR(200) NULL,
  `a_domainaccount` VARCHAR(200) NULL,
  `a_role` VARCHAR(200) NULL,
  PRIMARY KEY (`a_atpid`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `newatp_log` (
  `l_atpid` VARCHAR(200) NOT NULL,
  `l_atpcreatedatetime` VARCHAR(200) NULL,
  `l_atpcreateuser` VARCHAR(200) NULL,
  `l_atplastmodifydatetime` VARCHAR(200) NULL,
  `l_atplastmodifyuser` VARCHAR(200) NULL,
  `l_atpstatus` VARCHAR(200) NULL,
  `l_atpremark` VARCHAR(200) NULL,
  `l_atpsort` VARCHAR(200) NULL,
  `l_logtime` VARCHAR(200) NULL,
  `l_logtype` VARCHAR(200) NULL,
  `l_logcontent` VARCHAR(200) NULL,
  `l_logip` VARCHAR(200) NULL,
  `l_adminid` VARCHAR(200) NULL,
  `l_userid` VARCHAR(200) NULL,
  PRIMARY KEY (`l_atpid`))
ENGINE = InnoDB;
