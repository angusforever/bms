/*
Navicat MySQL Data Transfer

Source Server         : wampmysql
Source Server Version : 50709
Source Host           : localhost:3306
Source Database       : newatp

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2017-03-22 23:14:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for newatp_admin
-- ----------------------------
DROP TABLE IF EXISTS `newatp_admin`;
CREATE TABLE `newatp_admin` (
  `a_atpid` varchar(200) NOT NULL,
  `a_atpcreatedatetime` varchar(200) DEFAULT NULL,
  `a_atpcreateuser` varchar(200) DEFAULT NULL,
  `a_atplastmodifydatetime` varchar(200) DEFAULT NULL,
  `a_atplastmodifyuser` varchar(200) DEFAULT NULL,
  `a_atpstatus` varchar(200) DEFAULT NULL,
  `a_atpremark` varchar(200) DEFAULT NULL,
  `a_atpsort` varchar(200) DEFAULT NULL,
  `a_account` varchar(200) DEFAULT NULL,
  `a_password` varchar(200) DEFAULT NULL,
  `a_domainaccount` varchar(200) DEFAULT NULL,
  `a_role` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`a_atpid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of newatp_admin
-- ----------------------------
INSERT INTO `newatp_admin` VALUES ('15EFB6B7-EA22-4111-8083-6311AFF16F7F', '2017-03-22 09:34:53', '', '2017-03-22 09:36:36', '', null, null, null, 'chenweizhao', '123456', 'hp\\chenweizhao', '管理员');
INSERT INTO `newatp_admin` VALUES ('6F20FEF8-B330-4A83-8EED-BD056C0EEEE7', '2017-03-22 09:32:14', '', '2017-03-22 09:37:09', '', null, null, null, 'wangshuo', '123456', 'wangshuo', '管理员');
INSERT INTO `newatp_admin` VALUES ('72B79681-C498-49D3-99AA-B69255FEC4C6', '2017-03-22 09:32:30', '', '2017-03-22 09:33:23', '', 'DEL', null, null, '11', '33', '22', '管理员');
INSERT INTO `newatp_admin` VALUES ('B7BCA88C-8127-491B-ABF7-E4A62F5C8512', '2017-03-22 09:33:45', '', '2017-03-22 09:36:50', '', null, null, null, 'jiwei', '123456', 'hq\\jiwei', '管理员');
INSERT INTO `newatp_admin` VALUES ('B88C8AB9-C099-4CCD-9C28-ADF9EA68C2B7', '2017-03-22 09:37:21', '', '2017-03-22 09:37:27', '', 'DEL', null, null, '', '', '', '管理员');
INSERT INTO `newatp_admin` VALUES ('C83AB9FE-720F-4DD5-AA41-262BF279C4E9', '2017-03-22 09:37:23', '', '2017-03-22 09:37:27', '', 'DEL', null, null, '', '', '', '管理员');

-- ----------------------------
-- Table structure for newatp_log
-- ----------------------------
DROP TABLE IF EXISTS `newatp_log`;
CREATE TABLE `newatp_log` (
  `l_atpid` varchar(200) NOT NULL,
  `l_atpcreatedatetime` varchar(200) DEFAULT NULL,
  `l_atpcreateuser` varchar(200) DEFAULT NULL,
  `l_atplastmodifydatetime` varchar(200) DEFAULT NULL,
  `l_atplastmodifyuser` varchar(200) DEFAULT NULL,
  `l_atpstatus` varchar(200) DEFAULT NULL,
  `l_atpremark` varchar(200) DEFAULT NULL,
  `l_atpsort` varchar(200) DEFAULT NULL,
  `l_logtime` varchar(200) DEFAULT NULL,
  `l_logtype` varchar(200) DEFAULT NULL,
  `l_logcontent` varchar(200) DEFAULT NULL,
  `l_logip` varchar(200) DEFAULT NULL,
  `l_adminid` varchar(200) DEFAULT NULL,
  `l_userid` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`l_atpid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of newatp_log
-- ----------------------------
INSERT INTO `newatp_log` VALUES ('00665A11-3897-4806-B26B-7BBB050D77B1', '2017-03-22 22:44:26', '', '2017-03-22 22:44:26', '', null, '', null, '2017-03-22 22:44:26', '访问日志', 'Dashboard/chart1?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('0089B502-21F6-4D70-B431-676395007883', '2017-03-22 10:26:55', '', '2017-03-22 10:26:55', '', null, '', null, '2017-03-22 10:26:55', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('008CCA7A-555E-4D53-B346-246536893890', '2017-03-22 22:44:01', '', '2017-03-22 22:44:01', '', null, '', null, '2017-03-22 22:44:01', '访问日志', 'Dashboard/configsort?m_atpid=54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('0090830A-6CC7-458A-973F-F318C3757BC8', '2017-03-22 12:20:54', '', '2017-03-22 12:20:54', '', null, '', null, '2017-03-22 12:20:54', '访问日志', 'Index/block?title=%E4%BF%A1%E7%AE%B1', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('00A44706-EF7B-4DDA-AC9E-677EB47B3974', '2017-03-22 09:47:29', '', '2017-03-22 09:47:29', '', null, '', null, '2017-03-22 09:47:29', '访问日志', 'Log?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('00BA1FA9-257A-46BA-AC5C-EDDF28E68075', '2017-03-22 13:44:41', '', '2017-03-22 13:44:41', '', null, '', null, '2017-03-22 13:44:41', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('00C5FF79-3EF9-40BB-90C1-06882CB1DD47', '2017-03-22 11:23:21', '', '2017-03-22 11:23:21', '', null, '', null, '2017-03-22 11:23:21', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('00F3B14C-D40F-43C0-8657-3F0E0C7DDB40', '2017-03-22 10:48:16', '', '2017-03-22 10:48:16', '', null, '', null, '2017-03-22 10:48:16', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('0107B160-5890-4AE8-9C6C-C6934AD058FB', '2017-03-22 09:55:18', '', '2017-03-22 09:55:18', '', null, '', null, '2017-03-22 09:55:18', '访问日志', 'Admin/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('01693976-8BAD-4C59-A876-F9E20860D975', '2017-03-22 16:39:53', '', '2017-03-22 16:39:53', '', null, '', null, '2017-03-22 16:39:53', '访问日志', 'Admin?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('01957869-087C-4D60-8915-EA7FB541F268', '2017-03-22 11:03:13', '', '2017-03-22 11:03:13', '', null, '', null, '2017-03-22 11:03:13', '访问日志', 'Admin?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('01F9E693-76B4-4DF6-AFD8-81A4DABBF1C9', '2017-03-22 10:45:31', '', '2017-03-22 10:45:31', '', null, '', null, '2017-03-22 10:45:31', '访问日志', 'Module/edit?id=54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('02241AB7-4627-4681-838C-370D933C195C', '2017-03-22 13:57:52', '', '2017-03-22 13:57:52', '', null, '', null, '2017-03-22 13:57:52', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('0298BD8D-8551-4478-93F2-088CCB8FAA9E', '2017-03-22 14:41:41', '', '2017-03-22 14:41:41', '', null, '', null, '2017-03-22 14:41:41', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('02CEAC81-1463-4E80-AE6E-758B91942136', '2017-03-22 23:13:35', '', '2017-03-22 23:13:35', '', null, '', null, '2017-03-22 23:13:35', '访问日志', 'Dashboard/configsort?m_atpid=688BD005-E517-40EA-AB7F-F8386E03B56C', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('03469E9F-6DA9-42CB-AECD-C227DEF70BB8', '2017-03-22 14:37:33', '', '2017-03-22 14:37:33', '', null, '', null, '2017-03-22 14:37:33', '访问日志', 'Role?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('0394A123-4D47-4E22-970F-6A6F95546F5F', '2017-03-22 13:45:12', '', '2017-03-22 13:45:12', '', null, '', null, '2017-03-22 13:45:12', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('03FCD48F-4F9F-4AA4-BEFE-438D8566A1CA', '2017-03-22 09:52:55', '', '2017-03-22 09:52:55', '', null, '', null, '2017-03-22 09:52:55', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('042CD224-47D0-4E1B-9AC3-27D67E7CBFBA', '2017-03-22 22:42:34', '', '2017-03-22 22:42:34', '', null, '', null, '2017-03-22 22:42:34', '访问日志', 'Dashboard/embedpage?m_atpid=6A38DDDB-38B4-4C82-8367-326EF35DC448', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('043406D9-3C7B-4AC0-9925-61EECF3BB17B', '2017-03-22 22:21:33', '', '2017-03-22 22:21:33', '', null, '', null, '2017-03-22 22:21:33', '访问日志', 'Frame?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('043CBD9D-5F53-4648-BA24-0130F324FBEF', '2017-03-22 11:32:05', '', '2017-03-22 11:32:05', '', null, '', null, '2017-03-22 11:32:05', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('0504819E-6860-42C4-BE96-D2A629EA1E98', '2017-03-22 13:11:09', '', '2017-03-22 13:11:09', '', null, '', null, '2017-03-22 13:11:09', '访问日志', 'Frame?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('05080EA6-8845-4463-948C-35CACD73CB86', '2017-03-22 11:14:24', '', '2017-03-22 11:14:24', '', null, '', null, '2017-03-22 11:14:24', '访问日志', 'Frame?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('05484ACC-B3C5-4F16-8367-5C40CCF0BC17', '2017-03-22 13:40:33', '', '2017-03-22 13:40:33', '', null, '', null, '2017-03-22 13:40:33', '访问日志', 'Role/edit?id=7E46C663-EEC9-4CFF-866F-544334789B98', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('055B3972-5EA7-46F8-970E-47B55AFEFE8A', '2017-03-22 16:39:57', '', '2017-03-22 16:39:57', '', null, '', null, '2017-03-22 16:39:57', '访问日志', 'Module/edit?id=688BD005-E517-40EA-AB7F-F8386E03B56C', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('057D8A5B-FAAD-4514-ACB4-19AF6B8A1E15', '2017-03-22 13:18:18', '', '2017-03-22 13:18:18', '', null, '', null, '2017-03-22 13:18:18', '访问日志', 'Role?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('058A7B80-2032-4F2A-B79C-BB2CA8FD4C4D', '2017-03-22 10:03:43', '', '2017-03-22 10:03:43', '', null, '', null, '2017-03-22 10:03:43', '访问日志', 'Admin?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('05F37E41-5BF3-4D99-B5A5-882DD85B487D', '2017-03-22 11:23:18', '', '2017-03-22 11:23:18', '', null, '', null, '2017-03-22 11:23:18', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('062A2C0E-A673-4B6E-AEB7-7EA5C883DC09', '2017-03-22 11:23:22', '', '2017-03-22 11:23:22', '', null, '', null, '2017-03-22 11:23:22', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('064131A8-910F-4DFE-88A5-69236A1BA4D1', '2017-03-22 14:00:35', '', '2017-03-22 14:00:35', '', null, '', null, '2017-03-22 14:00:35', '访问日志', 'Table/index?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('067BD9A6-DCE2-45F5-A1FB-55FEE63B2532', '2017-03-22 10:22:40', '', '2017-03-22 10:22:40', '', null, '', null, '2017-03-22 10:22:40', '访问日志', 'Module/edit?id=undefined', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('068BB6B6-75D2-4798-B9CC-0ABF6E65E694', '2017-03-22 09:53:42', '', '2017-03-22 09:53:42', '', null, '', null, '2017-03-22 09:53:42', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('069E5F32-5F17-4971-9383-A38B40E10FBE', '2017-03-22 22:43:59', '', '2017-03-22 22:43:59', '', null, '', null, '2017-03-22 22:43:59', '访问日志', 'Dashboard/chart1?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('06AE5BB9-7C76-42E5-B611-C16303789967', '2017-03-22 11:30:49', '', '2017-03-22 11:30:49', '', null, '', null, '2017-03-22 11:30:49', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('06C734FE-ADBC-4258-9018-DF8AB057D5D4', '2017-03-22 13:31:58', '', '2017-03-22 13:31:58', '', null, '', null, '2017-03-22 13:31:58', '访问日志', 'Role?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('077F954D-A5F4-42C9-9FF0-BBC47AD40927', '2017-03-22 09:52:31', '', '2017-03-22 09:52:31', '', null, '', null, '2017-03-22 09:52:31', '访问日志', 'Log?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('07D17BD5-9D9A-4C85-B9AF-96F71BE21057', '2017-03-22 13:26:17', '', '2017-03-22 13:26:17', '', null, '', null, '2017-03-22 13:26:17', '访问日志', 'Role?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('08658708-A631-46D4-9F75-EB5EFC981C46', '2017-03-22 14:35:40', '', '2017-03-22 14:35:40', '', null, '', null, '2017-03-22 14:35:40', '访问日志', 'Role/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('0875D8C5-1247-4DA8-B147-6C9684E5BFE7', '2017-03-22 10:28:29', '', '2017-03-22 10:28:29', '', null, '', null, '2017-03-22 10:28:29', '访问日志', 'Module/del?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('0882ACB3-54B2-46E0-B610-394BACF67D74', '2017-03-22 09:54:48', '', '2017-03-22 09:54:48', '', null, '', null, '2017-03-22 09:54:48', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('092DBA1A-7CFA-4311-8C94-00C52DCF4DD2', '2017-03-22 22:50:36', '', '2017-03-22 22:50:36', '', null, '', null, '2017-03-22 22:50:36', '访问日志', 'Dashboard/embedpage?m_atpid=04464D50-956F-48FD-9B1C-A0712C74A976', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('097AB196-9675-42DB-8236-C5B3FD3E959E', '2017-03-22 22:57:06', '', '2017-03-22 22:57:06', '', null, '', null, '2017-03-22 22:57:06', '访问日志', 'Dashboard/embedpage?m_atpid=6A38DDDB-38B4-4C82-8367-326EF35DC448', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('099AB5A4-29BD-45F2-A23E-A5DE55955A7F', '2017-03-22 09:54:47', '', '2017-03-22 09:54:47', '', null, '', null, '2017-03-22 09:54:47', '访问日志', 'Log?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('0A0DA74F-6567-4DC6-B1B1-379F51AA23E7', '2017-03-22 23:00:00', '', '2017-03-22 23:00:00', '', null, '', null, '2017-03-22 23:00:00', '访问日志', 'Frame?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('0AE5F803-2A1D-4D86-A4EF-E42CD64ED1E6', '2017-03-22 10:48:44', '', '2017-03-22 10:48:44', '', null, '', null, '2017-03-22 10:48:44', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('0B9A3A5F-D8A2-4F93-95C6-FD7E95A46934', '2017-03-22 11:23:15', '', '2017-03-22 11:23:15', '', null, '', null, '2017-03-22 11:23:15', '访问日志', 'Log?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('0C899D09-70BD-4724-AC0A-C047776A4D96', '2017-03-22 11:23:21', '', '2017-03-22 11:23:21', '', null, '', null, '2017-03-22 11:23:21', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('0C969718-8726-4AF8-9F55-B41394AC63BE', '2017-03-22 13:39:44', '', '2017-03-22 13:39:44', '', null, '', null, '2017-03-22 13:39:44', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('0D0222E2-A545-40A2-BE0A-A0AB35B4F259', '2017-03-22 12:21:57', '', '2017-03-22 12:21:57', '', null, '', null, '2017-03-22 12:21:57', '访问日志', 'User/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('0D3CCF55-209D-4EFE-946E-8B1B8AB404C2', '2017-03-22 10:27:00', '', '2017-03-22 10:27:00', '', null, '', null, '2017-03-22 10:27:00', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('0D9DEEE9-96C8-4CA2-B059-0753601761F2', '2017-03-22 11:14:56', '', '2017-03-22 11:14:56', '', null, '', null, '2017-03-22 11:14:56', '访问日志', 'Role/edit?id=A8BD7DC5-71B5-4A28-9E33-C61C5B3766A0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('0E0708D1-BC9D-44FF-AF3D-77FC80FDE042', '2017-03-22 09:52:52', '', '2017-03-22 09:52:52', '', null, '', null, '2017-03-22 09:52:52', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('0ED24A7C-6954-4537-AA8D-AC47707BD5F4', '2017-03-22 09:47:54', '', '2017-03-22 09:47:54', '', null, '', null, '2017-03-22 09:47:54', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('0ED725B5-E28F-4AE4-A4CD-0BB49BB65156', '2017-03-22 22:32:01', '', '2017-03-22 22:32:01', '', null, '', null, '2017-03-22 22:32:01', '访问日志', 'User/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('0F7047B0-E2C2-4F31-9A2D-F614DEC4E2E7', '2017-03-22 11:02:42', '', '2017-03-22 11:02:42', '', null, '', null, '2017-03-22 11:02:42', '访问日志', 'Admin/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('0FC69F0C-2906-4A49-9CDB-30CD1366F462', '2017-03-22 16:39:51', '', '2017-03-22 16:39:51', '', null, '', null, '2017-03-22 16:39:51', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('10167F3A-6E42-469C-9EEA-B55221D02511', '2017-03-22 22:58:30', '', '2017-03-22 22:58:30', '', null, '', null, '2017-03-22 22:58:30', '访问日志', 'Frame?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('10643996-4F04-4B76-89CB-74634C10B564', '2017-03-22 16:39:54', '', '2017-03-22 16:39:54', '', null, '', null, '2017-03-22 16:39:54', '访问日志', 'Admin/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('10A7D965-5E1A-40CF-BA43-E7239B4FC309', '2017-03-22 11:02:58', '', '2017-03-22 11:02:58', '', null, '', null, '2017-03-22 11:02:58', '访问日志', 'Admin?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('11262B78-B5C9-4327-9FFD-91617FF3CC4E', '2017-03-22 11:15:48', '', '2017-03-22 11:15:48', '', null, '', null, '2017-03-22 11:15:48', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('1144E0CA-8413-49CB-BF1C-06A7202472D5', '2017-03-22 22:55:04', '', '2017-03-22 22:55:04', '', null, '', null, '2017-03-22 22:55:04', '访问日志', 'Dashboard/chart1?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('1171FB1E-C8B4-432F-A171-96D9E86AB38E', '2017-03-22 09:47:39', '', '2017-03-22 09:47:39', '', null, '', null, '2017-03-22 09:47:39', '访问日志', 'Log?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('117CF42A-DACA-474E-BDA4-5F674BAAAE5F', '2017-03-22 10:03:39', '', '2017-03-22 10:03:39', '', null, '', null, '2017-03-22 10:03:39', '访问日志', 'Dashboard/index?m_atpid=m1', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('11AEB544-B89B-40CC-879E-BC7A610A3CC8', '2017-03-22 13:36:48', '', '2017-03-22 13:36:48', '', null, '', null, '2017-03-22 13:36:48', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('124D8124-7624-4126-AFA9-DC69E19A4C26', '2017-03-22 13:37:15', '', '2017-03-22 13:37:15', '', null, '', null, '2017-03-22 13:37:15', '访问日志', 'Role?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('12A769F2-8961-4E30-A403-07DA49B46C7B', '2017-03-22 22:32:52', '', '2017-03-22 22:32:52', '', null, '', null, '2017-03-22 22:32:52', '访问日志', 'Dashboard/index?m_atpid=m1', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('12CE8271-EECA-4504-AF77-35EDFCF28BE9', '2017-03-22 11:22:49', '', '2017-03-22 11:22:49', '', null, '', null, '2017-03-22 11:22:49', '访问日志', 'User/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('12E32BF0-89E5-4C71-AA94-8332180B3D62', '2017-03-22 11:30:47', '', '2017-03-22 11:30:47', '', null, '', null, '2017-03-22 11:30:47', '访问日志', 'Role?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('12E34BF4-43AE-413B-BDD3-6AC8EF8C7944', '2017-03-22 11:15:10', '', '2017-03-22 11:15:10', '', null, '', null, '2017-03-22 11:15:10', '访问日志', 'Role/edit?id=A8BD7DC5-71B5-4A28-9E33-C61C5B3766A0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('1337A28F-F44D-4FEF-929A-09956DA50DAF', '2017-03-22 09:53:38', '', '2017-03-22 09:53:38', '', null, '', null, '2017-03-22 09:53:38', '访问日志', 'Admin?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('13449122-E67C-49B0-AAD5-62674CE57F3F', '2017-03-22 22:28:17', '', '2017-03-22 22:28:17', '', null, '', null, '2017-03-22 22:28:17', '访问日志', 'User?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('137F6DAE-3F17-4A73-8A12-FEEF7E77E604', '2017-03-22 09:47:27', '', '2017-03-22 09:47:27', '', null, '', null, '2017-03-22 09:47:27', '访问日志', 'Log?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('139457E1-440F-4FA5-B331-12CC3FF6EBD3', '2017-03-22 14:41:41', '', '2017-03-22 14:41:41', '', null, '', null, '2017-03-22 14:41:41', '访问日志', 'Role?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('139E680D-2720-47FC-B407-BF95158CF67E', '2017-03-22 16:38:12', '', '2017-03-22 16:38:12', '', null, '', null, '2017-03-22 16:38:12', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('13A9D528-0FDF-493C-9F79-F98A5E9D5854', '2017-03-22 22:28:18', '', '2017-03-22 22:28:18', '', null, '', null, '2017-03-22 22:28:18', '访问日志', 'User/edit?id=F8087DF6-8BB3-4DAA-A49F-ECBBB01C9336', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('142E22C4-8130-4CCC-B75A-CF4D1534FCD1', '2017-03-22 16:38:13', '', '2017-03-22 16:38:13', '', null, '', null, '2017-03-22 16:38:13', '访问日志', 'Role/edit?id=7E46C663-EEC9-4CFF-866F-544334789B98', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('1434C95C-F551-4F6E-9831-40DD394BAE95', '2017-03-22 22:50:33', '', '2017-03-22 22:50:33', '', null, '', null, '2017-03-22 22:50:33', '访问日志', 'Dashboard/chart1?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('1475B3FE-0F03-48F5-8F43-6A1D0AF39813', '2017-03-22 16:37:37', '', '2017-03-22 16:37:37', '', null, '', null, '2017-03-22 16:37:37', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('152AEECF-30E2-4AC0-8F1D-0AF0AAFF2C84', '2017-03-22 09:47:53', '', '2017-03-22 09:47:53', '', null, '', null, '2017-03-22 09:47:53', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('1546B720-076B-4E15-8DE7-AFB360036409', '2017-03-22 22:50:36', '', '2017-03-22 22:50:36', '', null, '', null, '2017-03-22 22:50:36', '访问日志', 'Dashboard/configsortsubmit?m_atpid=54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('15BBD4AC-18B3-44B6-A02F-C4D0576216C8', '2017-03-22 13:31:58', '', '2017-03-22 13:31:58', '', null, '', null, '2017-03-22 13:31:58', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('1605AB9B-C20F-4F3F-8295-A44C303CC4FE', '2017-03-22 13:40:47', '', '2017-03-22 13:40:47', '', null, '', null, '2017-03-22 13:40:47', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('1656FB69-E520-4E7D-ACB1-8C2701E19062', '2017-03-22 22:21:39', '', '2017-03-22 22:21:39', '', null, '', null, '2017-03-22 22:21:39', '访问日志', 'Role/edit?id=7E46C663-EEC9-4CFF-866F-544334789B98', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('16577782-8010-4976-8F76-A9B88D149424', '2017-03-22 23:11:22', '', '2017-03-22 23:11:22', '', null, '', null, '2017-03-22 23:11:22', '访问日志', 'Frame/welcome?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('16A163B2-F16B-43DC-9537-3274340DBAB7', '2017-03-22 09:52:45', '', '2017-03-22 09:52:45', '', null, '', null, '2017-03-22 09:52:45', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('16FCDF5C-DA34-4109-92DE-97AB290DC79F', '2017-03-22 09:48:39', '', '2017-03-22 09:48:39', '', null, '', null, '2017-03-22 09:48:39', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('17122007-62C6-4917-A241-A70FCFFAF572', '2017-03-22 13:11:16', '', '2017-03-22 13:11:16', '', null, '', null, '2017-03-22 13:11:16', '访问日志', 'Role?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('1768313C-4DE9-4651-BAE9-C90BA17FA896', '2017-03-22 23:13:42', '', '2017-03-22 23:13:42', '', null, '', null, '2017-03-22 23:13:42', '访问日志', 'Dashboard/index?m_atpid=54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('177BD290-13B9-4B60-BCE8-013DEB11F7A5', '2017-03-22 22:54:47', '', '2017-03-22 22:54:47', '', null, '', null, '2017-03-22 22:54:47', '访问日志', 'Dashboard/embedpage?m_atpid=04464D50-956F-48FD-9B1C-A0712C74A976', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('17D8056B-A8D0-457F-82E1-89103EB11DA5', '2017-03-22 11:03:41', '', '2017-03-22 11:03:41', '', null, '', null, '2017-03-22 11:03:41', '访问日志', 'Log?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('17EC4875-EA3E-4E0E-A376-733E8103A258', '2017-03-22 13:51:47', '', '2017-03-22 13:51:47', '', null, '', null, '2017-03-22 13:51:47', '访问日志', 'Role?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('1813030F-8F09-4018-88CC-F6457FDBFCFF', '2017-03-22 14:16:16', '', '2017-03-22 14:16:16', '', null, '', null, '2017-03-22 14:16:16', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('18A0F3AD-22D5-41FF-B399-9D903DBBAA63', '2017-03-22 10:46:23', '', '2017-03-22 10:46:23', '', null, '', null, '2017-03-22 10:46:23', '访问日志', 'Module/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('18BF9C89-529C-4C73-97E5-83660D4EE1A9', '2017-03-22 09:52:38', '', '2017-03-22 09:52:38', '', null, '', null, '2017-03-22 09:52:38', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('18D3E21A-FB6D-4C29-9AD1-D0643B3E45B9', '2017-03-22 10:03:44', '', '2017-03-22 10:03:44', '', null, '', null, '2017-03-22 10:03:44', '访问日志', 'Index/block?title=%E8%8F%9C%E5%8D%952.3', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('19187FE2-9D5D-4741-9B4B-ACACA13F9FA9', '2017-03-22 11:15:27', '', '2017-03-22 11:15:27', '', null, '', null, '2017-03-22 11:15:27', '访问日志', 'Role/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('1A5FB02A-BF2D-4427-91EE-C96B331D187B', '2017-03-22 10:27:01', '', '2017-03-22 10:27:01', '', null, '', null, '2017-03-22 10:27:01', '访问日志', 'Module/edit?id=54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('1AAB5588-D32F-42DF-85C9-82F6A1A6B163', '2017-03-22 22:39:38', '', '2017-03-22 22:39:38', '', null, '', null, '2017-03-22 22:39:38', '访问日志', 'Dashboard/index?m_atpid=m1', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('1AB17C68-A8EA-4DE6-8474-878CFC7175F7', '2017-03-22 14:38:08', '', '2017-03-22 14:38:08', '', null, '', null, '2017-03-22 14:38:08', '访问日志', 'Role?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('1AC4BBD5-E876-4843-BEE1-F85414D4A6F1', '2017-03-22 22:56:23', '', '2017-03-22 22:56:23', '', null, '', null, '2017-03-22 22:56:23', '访问日志', 'Module/edit?id=04464D50-956F-48FD-9B1C-A0712C74A976', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('1B215BDD-1DB0-4CFC-ADA9-97CDBCFDA5EA', '2017-03-22 09:52:57', '', '2017-03-22 09:52:57', '', null, '', null, '2017-03-22 09:52:57', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('1B94ABF4-4DBD-4E80-9722-EA7B76194B0F', '2017-03-22 14:38:15', '', '2017-03-22 14:38:15', '', null, '', null, '2017-03-22 14:38:15', '访问日志', 'Role/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('1BA2A7B4-A1C8-4B92-9F60-F239307515E1', '2017-03-22 22:57:06', '', '2017-03-22 22:57:06', '', null, '', null, '2017-03-22 22:57:06', '访问日志', 'Dashboard/chart1?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('1BF5D2E9-3F43-432B-A3D2-E4ED99D16C6B', '2017-03-22 09:55:39', '', '2017-03-22 09:55:39', '', null, '', null, '2017-03-22 09:55:39', '访问日志', 'Admin?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('1C76BF4B-358D-4CCD-B8A1-A90E519E8DFD', '2017-03-22 13:47:11', '', '2017-03-22 13:47:11', '', null, '', null, '2017-03-22 13:47:11', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('1C9C2F94-1DE3-429D-BDA5-762E87950A32', '2017-03-22 23:12:46', '', '2017-03-22 23:12:46', '', null, '', null, '2017-03-22 23:12:46', '访问日志', 'Dashboard/index?m_atpid=54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('1CB28068-2733-45B4-B5D1-3344DF84AB7B', '2017-03-22 12:21:14', '', '2017-03-22 12:21:14', '', null, '', null, '2017-03-22 12:21:14', '访问日志', 'Dashboard/index?m_atpid=m1', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('1CB885EF-7BED-4F93-9C7E-223F142221C0', '2017-03-22 13:35:39', '', '2017-03-22 13:35:39', '', null, '', null, '2017-03-22 13:35:39', '访问日志', 'Role?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('1D0A4985-E1F6-4263-B84C-59516F135AE1', '2017-03-22 22:41:35', '', '2017-03-22 22:41:35', '', null, '', null, '2017-03-22 22:41:35', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('1D3CEDB5-928D-4A1E-99EE-D1F2E70A11AA', '2017-03-22 09:49:55', '', '2017-03-22 09:49:55', '', null, '', null, '2017-03-22 09:49:55', '访问日志', 'Log?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('1D80BB87-8919-4FF0-B7AA-81D5EF32143A', '2017-03-22 16:35:46', '', '2017-03-22 16:35:46', '', null, '', null, '2017-03-22 16:35:46', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('1DBABFC1-5E63-4270-B487-90437340D9BE', '2017-03-22 22:56:27', '', '2017-03-22 22:56:27', '', null, '', null, '2017-03-22 22:56:27', '访问日志', 'Module/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('1DC56148-BD0A-43B6-987E-479F3EF2A0CF', '2017-03-22 13:45:11', '', '2017-03-22 13:45:11', '', null, '', null, '2017-03-22 13:45:11', '访问日志', 'Role?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('1E0C441E-BDF4-4549-BB10-20EE68621E88', '2017-03-22 22:46:57', '', '2017-03-22 22:46:57', '', null, '', null, '2017-03-22 22:46:57', '访问日志', 'Dashboard/configsort?m_atpid=54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('1E637B11-5564-4640-A7B7-F6333E0A9A06', '2017-03-22 13:37:50', '', '2017-03-22 13:37:50', '', null, '', null, '2017-03-22 13:37:50', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('1E7D1382-5FA1-495E-8A50-28A268FA33E3', '2017-03-22 14:35:35', '', '2017-03-22 14:35:35', '', null, '', null, '2017-03-22 14:35:35', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('1E7F572C-14A9-4D51-94AB-88B94DFACE85', '2017-03-22 13:26:18', '', '2017-03-22 13:26:18', '', null, '', null, '2017-03-22 13:26:18', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('1EA86174-F529-42F0-BE78-9A70B8C4789E', '2017-03-22 16:39:47', '', '2017-03-22 16:39:47', '', null, '', null, '2017-03-22 16:39:47', '访问日志', 'Role/edit?id=EFB398FF-A4B4-4B78-96BB-981892E8A4C4', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('1F33F0A5-FBDB-4C31-AEFC-B3283FF677CC', '2017-03-22 23:10:34', '', '2017-03-22 23:10:34', '', null, '', null, '2017-03-22 23:10:34', '访问日志', 'Frame/welcome?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('1F5C7A6D-ED80-4E6C-9547-4D37672C78F4', '2017-03-22 22:49:12', '', '2017-03-22 22:49:12', '', null, '', null, '2017-03-22 22:49:12', '访问日志', 'Dashboard/chart1?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('1F63A0E6-A4E0-4AEE-BCC0-45DCB2FC69CB', '2017-03-22 22:55:04', '', '2017-03-22 22:55:04', '', null, '', null, '2017-03-22 22:55:04', '访问日志', 'Dashboard/embedpage?m_atpid=6A38DDDB-38B4-4C82-8367-326EF35DC448', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('1FCE93C0-222B-46FB-AD5A-15854CD526D3', '2017-03-22 11:23:01', '', '2017-03-22 11:23:01', '', null, '', null, '2017-03-22 11:23:01', '访问日志', 'User/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('203E9FEF-D6B0-4F0C-BA2F-5D4CA67A8D49', '2017-03-22 14:36:26', '', '2017-03-22 14:36:26', '', null, '', null, '2017-03-22 14:36:26', '访问日志', 'Role/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('20822EC7-D4DF-4F44-BF74-6E09440167BF', '2017-03-22 09:45:48', '', '2017-03-22 09:45:48', '', '', '', null, '2017-03-22 09:45:48', '访问日志', 'Dashboard/index?m_atpid=m1', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('208C69B6-9103-492C-A07E-373F39421C4B', '2017-03-22 22:31:54', '', '2017-03-22 22:31:54', '', null, '', null, '2017-03-22 22:31:54', '访问日志', 'User/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('20F31BC5-654A-4863-B9D2-4C9DB56C697A', '2017-03-22 14:23:42', '', '2017-03-22 14:23:42', '', null, '', null, '2017-03-22 14:23:42', '访问日志', 'Admin?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('2127BBC6-7D9B-4A59-8B40-4D4CE8D95E72', '2017-03-22 16:36:03', '', '2017-03-22 16:36:03', '', null, '', null, '2017-03-22 16:36:03', '访问日志', 'Dashboard/index?m_atpid=m1', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('2161EE7E-1221-4751-A8AB-F17D4B1608D7', '2017-03-22 10:26:02', '', '2017-03-22 10:26:02', '', null, '', null, '2017-03-22 10:26:02', '访问日志', 'Frame?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('216D1B91-0EF3-43F0-858C-151655743E5A', '2017-03-22 13:38:51', '', '2017-03-22 13:38:51', '', null, '', null, '2017-03-22 13:38:51', '访问日志', 'Role/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('220DBB0B-2DF2-41C6-9042-8DAED0797544', '2017-03-22 22:41:02', '', '2017-03-22 22:41:02', '', null, '', null, '2017-03-22 22:41:02', '访问日志', 'Login?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('223F3E96-F3C5-4867-B66D-EC6337D3075C', '2017-03-22 16:39:01', '', '2017-03-22 16:39:01', '', null, '', null, '2017-03-22 16:39:01', '访问日志', 'Role/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('228E5B0F-E6FB-422F-81BD-BAEB2F277C5C', '2017-03-22 13:36:01', '', '2017-03-22 13:36:01', '', null, '', null, '2017-03-22 13:36:01', '访问日志', 'Role?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('2380C555-6C2B-4819-84F5-4F895490F484', '2017-03-22 10:03:42', '', '2017-03-22 10:03:42', '', null, '', null, '2017-03-22 10:03:42', '访问日志', 'Log?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('23856015-55AF-4179-ACB2-B15420198AFC', '2017-03-22 10:28:36', '', '2017-03-22 10:28:36', '', null, '', null, '2017-03-22 10:28:36', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('238FB256-5148-416C-9127-D9382E16C969', '2017-03-22 22:51:07', '', '2017-03-22 22:51:07', '', null, '', null, '2017-03-22 22:51:07', '访问日志', 'Dashboard/chart1?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('23B0B1DD-04CE-4838-9448-A56B3085A97F', '2017-03-22 22:55:04', '', '2017-03-22 22:55:04', '', null, '', null, '2017-03-22 22:55:04', '访问日志', 'Dashboard/embedpage?m_atpid=04464D50-956F-48FD-9B1C-A0712C74A976', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('23FA3C86-BAD8-4624-9042-80D8B33756D2', '2017-03-22 10:22:02', '', '2017-03-22 10:22:02', '', null, '', null, '2017-03-22 10:22:02', '访问日志', 'Dashboard/index?m_atpid=m1', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('2422A2AC-5E42-4570-8584-8FFF852EBEFB', '2017-03-22 13:36:38', '', '2017-03-22 13:36:38', '', null, '', null, '2017-03-22 13:36:38', '访问日志', 'Module/edit?id=54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('2449D401-F44A-4111-8CD3-CF7AD4E65473', '2017-03-22 09:45:07', '', '2017-03-22 09:45:07', '', '', '', null, '2017-03-22 09:45:07', '访问日志', 'Frame?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('24899B2C-7D30-4E7B-8D91-B15A2DB6E0FE', '2017-03-22 22:40:05', '', '2017-03-22 22:40:05', '', null, '', null, '2017-03-22 22:40:05', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('249A40B3-733C-4FFF-929D-564686D8EBC6', '2017-03-22 09:45:06', '', '2017-03-22 09:45:06', '', '', '', null, '2017-03-22 09:45:06', '访问日志', 'Frame?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('24C3795B-B828-4D25-A8DB-51DE6BE1169C', '2017-03-22 16:33:18', '', '2017-03-22 16:33:18', '', null, '', null, '2017-03-22 16:33:18', '访问日志', 'Frame?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('25393998-D7D3-43D7-B601-CDDB86D0F391', '2017-03-22 13:37:15', '', '2017-03-22 13:37:15', '', null, '', null, '2017-03-22 13:37:15', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('25647125-2335-4A17-BF5E-436D230058D0', '2017-03-22 16:35:23', '', '2017-03-22 16:35:23', '', null, '', null, '2017-03-22 16:35:23', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('2565CA7E-D729-42C6-9A53-CC7ADE8E83DD', '2017-03-22 13:11:13', '', '2017-03-22 13:11:13', '', null, '', null, '2017-03-22 13:11:13', '访问日志', 'Log?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('2580CF15-F219-4F79-AF01-859CC2874CB3', '2017-03-22 16:38:12', '', '2017-03-22 16:38:12', '', null, '', null, '2017-03-22 16:38:12', '访问日志', 'Role/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('2596B50C-9E1C-4936-80EF-B4AC8C1C81D6', '2017-03-22 11:32:07', '', '2017-03-22 11:32:07', '', null, '', null, '2017-03-22 11:32:07', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('259F71EB-B5B5-4B47-BE70-E15A24A5A9FE', '2017-03-22 09:45:08', '', '2017-03-22 09:45:08', '', '', '', null, '2017-03-22 09:45:08', '访问日志', 'Dashboard/index?m_atpid=m1', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('260310E1-3EAF-4BEF-B996-327FF23DFBF3', '2017-03-22 14:11:51', '', '2017-03-22 14:11:51', '', null, '', null, '2017-03-22 14:11:51', '访问日志', 'Admin/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('265DEF73-08CD-4E14-800C-683748C7451F', '2017-03-22 09:53:58', '', '2017-03-22 09:53:58', '', null, '', null, '2017-03-22 09:53:58', '访问日志', 'Log?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('267FDDEA-D07A-4EBE-BC8E-3B7238DDAB91', '2017-03-22 10:49:50', '', '2017-03-22 10:49:50', '', null, '', null, '2017-03-22 10:49:50', '访问日志', 'Module?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('26F0F7CC-1BD8-4482-9EB6-F1F661E4FD93', '2017-03-22 13:37:27', '', '2017-03-22 13:37:27', '', null, '', null, '2017-03-22 13:37:27', '访问日志', 'Role?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('276D4022-FDFF-487E-82D9-7AD1B93C33FF', '2017-03-22 09:53:41', '', '2017-03-22 09:53:41', '', null, '', null, '2017-03-22 09:53:41', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('277B037A-BAF0-4E6C-A862-499CCD81AF63', '2017-03-22 13:39:59', '', '2017-03-22 13:39:59', '', null, '', null, '2017-03-22 13:39:59', '访问日志', 'Role?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('27BF8B5E-D79C-4C09-BF38-0DDC0CC1DD69', '2017-03-22 13:41:43', '', '2017-03-22 13:41:43', '', null, '', null, '2017-03-22 13:41:43', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('28C343DA-D282-4F5F-8362-1B77671B0D30', '2017-03-22 13:32:49', '', '2017-03-22 13:32:49', '', null, '', null, '2017-03-22 13:32:49', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('29438AB9-4FF6-4A67-A0FB-673149F5A307', '2017-03-22 11:14:59', '', '2017-03-22 11:14:59', '', null, '', null, '2017-03-22 11:14:59', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('29D21209-D971-4291-9309-1CD638033CBE', '2017-03-22 22:50:33', '', '2017-03-22 22:50:33', '', null, '', null, '2017-03-22 22:50:33', '访问日志', 'Dashboard/embedpage?m_atpid=04464D50-956F-48FD-9B1C-A0712C74A976', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('2A898D85-0837-4A35-ADF5-216B11189407', '2017-03-22 23:12:47', '', '2017-03-22 23:12:47', '', null, '', null, '2017-03-22 23:12:47', '访问日志', 'Dashboard/embedpage?m_atpid=04464D50-956F-48FD-9B1C-A0712C74A976', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('2B8EB891-3094-4239-9C62-FF62CA49833C', '2017-03-22 10:28:35', '', '2017-03-22 10:28:35', '', null, '', null, '2017-03-22 10:28:35', '访问日志', 'Module/add?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('2C267DA4-8C95-4911-8548-A77BEE987045', '2017-03-22 22:46:47', '', '2017-03-22 22:46:47', '', null, '', null, '2017-03-22 22:46:47', '访问日志', 'Dashboard/chart1?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('2C384BC2-020C-4BA3-982D-CBBDCCAE7E06', '2017-03-22 14:05:50', '', '2017-03-22 14:05:50', '', null, '', null, '2017-03-22 14:05:50', '访问日志', 'Table/edit?id=9A5BC5EF-B252-43C5-90FC-383B627DDCDD', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('2C72FEAC-5694-4ADE-A4EE-8AB15980131D', '2017-03-22 22:40:42', '', '2017-03-22 22:40:42', '', null, '', null, '2017-03-22 22:40:42', '访问日志', 'Dashboard/index?m_atpid=m1', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('2C8423BC-7F3F-4545-AF40-6C80CAD56895', '2017-03-22 22:43:03', '', '2017-03-22 22:43:03', '', null, '', null, '2017-03-22 22:43:03', '访问日志', 'Dashboard/chart1?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('2D21F97C-E533-4DAA-8EA1-78F0F570B594', '2017-03-22 22:40:52', '', '2017-03-22 22:40:52', '', null, '', null, '2017-03-22 22:40:52', '访问日志', 'Dashboard/index?m_atpid=m1', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('2D3F4043-7C54-4699-844F-FDF5054CD340', '2017-03-22 10:22:29', '', '2017-03-22 10:22:29', '', null, '', null, '2017-03-22 10:22:29', '访问日志', 'Module/add?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('2D8338F1-3776-42D2-9E30-F2E1E8BD4683', '2017-03-22 16:38:33', '', '2017-03-22 16:38:33', '', null, '', null, '2017-03-22 16:38:33', '访问日志', 'Role/edit?id=7E46C663-EEC9-4CFF-866F-544334789B98', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('2DA61427-6388-4B8F-995B-7640932CE1A1', '2017-03-22 14:03:29', '', '2017-03-22 14:03:29', '', null, '', null, '2017-03-22 14:03:29', '访问日志', 'User?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('2DCE9826-93F0-46F7-9F79-516767429B40', '2017-03-22 10:56:52', '', '2017-03-22 10:56:52', '', null, '', null, '2017-03-22 10:56:52', '访问日志', 'Module?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('2DF40DD6-2DDF-445B-82AE-3B7A7403F01A', '2017-03-22 09:47:38', '', '2017-03-22 09:47:38', '', null, '', null, '2017-03-22 09:47:38', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('2E0420FA-1A75-4D21-9133-F27C8C090A2F', '2017-03-22 09:52:35', '', '2017-03-22 09:52:35', '', null, '', null, '2017-03-22 09:52:35', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('2E325B06-8AC0-4C5B-A030-79117AC33A83', '2017-03-22 22:56:33', '', '2017-03-22 22:56:33', '', null, '', null, '2017-03-22 22:56:33', '访问日志', 'Dashboard/embedpage?m_atpid=6A38DDDB-38B4-4C82-8367-326EF35DC448', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('2E78131C-009D-4CD5-8A87-B11571FE619E', '2017-03-22 16:36:51', '', '2017-03-22 16:36:51', '', null, '', null, '2017-03-22 16:36:51', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('2E8872CA-4A3C-4C67-B8F5-883711A71777', '2017-03-22 22:43:03', '', '2017-03-22 22:43:03', '', null, '', null, '2017-03-22 22:43:03', '访问日志', 'Dashboard/embedpage?m_atpid=04464D50-956F-48FD-9B1C-A0712C74A976', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('2EC16C1E-05BF-4680-938D-E4F1134327E6', '2017-03-22 10:26:06', '', '2017-03-22 10:26:06', '', null, '', null, '2017-03-22 10:26:06', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('2EFCFC18-F4FA-422A-969F-2AE1066F9CBB', '2017-03-22 22:41:02', '', '2017-03-22 22:41:02', '', null, '', null, '2017-03-22 22:41:02', '访问日志', 'Dashboard/embedpage?m_atpid=04464D50-956F-48FD-9B1C-A0712C74A976', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('2F051A10-80CB-49F4-8D5F-AF514C8CCEFC', '2017-03-22 11:23:23', '', '2017-03-22 11:23:23', '', null, '', null, '2017-03-22 11:23:23', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('2F14016F-476E-462E-94A5-683731BB59C1', '2017-03-22 11:02:38', '', '2017-03-22 11:02:38', '', null, '', null, '2017-03-22 11:02:38', '访问日志', 'Frame?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('2FF913E6-3356-4D07-9995-6C884FE591A9', '2017-03-22 09:51:36', '', '2017-03-22 09:51:36', '', null, '', null, '2017-03-22 09:51:36', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('305ABFA0-4694-4456-947F-366F45CCCA3C', '2017-03-22 14:42:00', '', '2017-03-22 14:42:00', '', null, '', null, '2017-03-22 14:42:00', '访问日志', 'Role?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('30874F82-56FC-4C20-BA0F-A3964250C75C', '2017-03-22 11:00:47', '', '2017-03-22 11:00:47', '', null, '', null, '2017-03-22 11:00:47', '访问日志', 'Admin?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('30AF37C6-B457-49C8-93A2-E2C49D2DC0CA', '2017-03-22 22:54:47', '', '2017-03-22 22:54:47', '', null, '', null, '2017-03-22 22:54:47', '访问日志', 'Dashboard/embedpage?m_atpid=6A38DDDB-38B4-4C82-8367-326EF35DC448', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('30D49C61-1B24-48A3-A69F-8617B7FEED64', '2017-03-22 11:23:14', '', '2017-03-22 11:23:14', '', null, '', null, '2017-03-22 11:23:14', '访问日志', 'Admin?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('318BD360-C71D-48F5-A0BA-4FF1BCC0B7CA', '2017-03-22 22:47:41', '', '2017-03-22 22:47:41', '', null, '', null, '2017-03-22 22:47:41', '访问日志', 'Dashboard/index?m_atpid=54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('31AE8476-848B-40A2-A6CE-13784233E506', '2017-03-22 14:11:44', '', '2017-03-22 14:11:44', '', null, '', null, '2017-03-22 14:11:44', '访问日志', 'Table/index?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('31E52A8C-E5FB-4D39-A9FC-6379E1870D38', '2017-03-22 13:20:01', '', '2017-03-22 13:20:01', '', null, '', null, '2017-03-22 13:20:01', '访问日志', 'Role?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('321BEB7F-C03F-4698-8DD8-39EFAD7725B9', '2017-03-22 22:56:19', '', '2017-03-22 22:56:19', '', null, '', null, '2017-03-22 22:56:19', '访问日志', 'Dashboard/embedpage?m_atpid=04464D50-956F-48FD-9B1C-A0712C74A976', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('3228B2A8-138E-4A6E-BF83-49291C3A6FA1', '2017-03-22 09:55:41', '', '2017-03-22 09:55:41', '', null, '', null, '2017-03-22 09:55:41', '访问日志', 'Admin/edit?id=B7BCA88C-8127-491B-ABF7-E4A62F5C8512', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('32A84E78-2413-41B0-B5EB-9A37B93822F7', '2017-03-22 11:22:10', '', '2017-03-22 11:22:10', '', null, '', null, '2017-03-22 11:22:10', '访问日志', 'User/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('32B3A5F7-3597-450D-9436-333CFB38333B', '2017-03-22 14:11:45', '', '2017-03-22 14:11:45', '', null, '', null, '2017-03-22 14:11:45', '访问日志', 'Table/edit?id=9A5BC5EF-B252-43C5-90FC-383B627DDCDD', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('3337D2DA-DCE9-451E-AD7B-1C8196C97832', '2017-03-22 22:43:59', '', '2017-03-22 22:43:59', '', null, '', null, '2017-03-22 22:43:59', '访问日志', 'Dashboard/embedpage?m_atpid=6A38DDDB-38B4-4C82-8367-326EF35DC448', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('33641F4C-4745-4C92-A38A-2A2E0C289B99', '2017-03-22 11:22:31', '', '2017-03-22 11:22:31', '', null, '', null, '2017-03-22 11:22:31', '访问日志', 'User/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('33AE6CC2-5FF5-4DF9-84C6-D4034188A382', '2017-03-22 16:36:20', '', '2017-03-22 16:36:20', '', null, '', null, '2017-03-22 16:36:20', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('34399091-CF65-43F2-A216-CEA0D69F7918', '2017-03-22 11:16:00', '', '2017-03-22 11:16:00', '', null, '', null, '2017-03-22 11:16:00', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('34496F0C-93CD-4032-8695-B9F8A5FAD457', '2017-03-22 22:56:39', '', '2017-03-22 22:56:39', '', null, '', null, '2017-03-22 22:56:39', '访问日志', 'Dashboard/embedpage?m_atpid=04464D50-956F-48FD-9B1C-A0712C74A976', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('34F71D84-689A-47D8-B272-0D87787D2ACA', '2017-03-22 11:15:44', '', '2017-03-22 11:15:44', '', null, '', null, '2017-03-22 11:15:44', '访问日志', 'Role/del?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('35194A79-2CB2-4228-B65C-1A51F23E9640', '2017-03-22 11:02:56', '', '2017-03-22 11:02:56', '', null, '', null, '2017-03-22 11:02:56', '访问日志', 'Admin/add?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('356D2193-1313-4C3B-ABB1-497B474ACEE5', '2017-03-22 09:47:29', '', '2017-03-22 09:47:29', '', null, '', null, '2017-03-22 09:47:29', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('35989490-FB13-44F8-9097-3CBFA20DED9A', '2017-03-22 09:48:39', '', '2017-03-22 09:48:39', '', null, '', null, '2017-03-22 09:48:39', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('35997835-8FB6-44B6-BD2E-D523B6DF59F7', '2017-03-22 11:15:23', '', '2017-03-22 11:15:23', '', null, '', null, '2017-03-22 11:15:23', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('35A9E8D4-CFAA-4969-83D7-852A75F93A67', '2017-03-22 11:22:31', '', '2017-03-22 11:22:31', '', null, '', null, '2017-03-22 11:22:31', '访问日志', 'User/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('35E4C3C0-98C9-431B-BC57-5BFFFEB5DAA9', '2017-03-22 16:37:32', '', '2017-03-22 16:37:32', '', null, '', null, '2017-03-22 16:37:32', '访问日志', 'Role/edit?id=7E46C663-EEC9-4CFF-866F-544334789B98', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('3667C3DB-26DF-4FF4-828B-C50BCE5F215F', '2017-03-22 16:39:54', '', '2017-03-22 16:39:54', '', null, '', null, '2017-03-22 16:39:54', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('368EA172-742F-4096-9227-B0ABD2CEA7D8', '2017-03-22 16:39:04', '', '2017-03-22 16:39:04', '', null, '', null, '2017-03-22 16:39:04', '访问日志', 'Role/edit?id=EFB398FF-A4B4-4B78-96BB-981892E8A4C4', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('36A5704F-A215-4B37-A55D-C3BF76BAD855', '2017-03-22 11:22:25', '', '2017-03-22 11:22:25', '', null, '', null, '2017-03-22 11:22:25', '访问日志', 'User/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('36BF46BB-3FE2-493E-A829-64D4B1D14170', '2017-03-22 22:56:48', '', '2017-03-22 22:56:48', '', null, '', null, '2017-03-22 22:56:48', '访问日志', 'Dashboard/configsort?m_atpid=54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('375785CA-03D1-4087-88F9-45EC1689ECDD', '2017-03-22 09:48:00', '', '2017-03-22 09:48:00', '', null, '', null, '2017-03-22 09:48:00', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('375985BA-7623-470E-A87D-C7D4A5EA6BC7', '2017-03-22 16:36:29', '', '2017-03-22 16:36:29', '', null, '', null, '2017-03-22 16:36:29', '访问日志', 'Role/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('37B42A05-A3F3-4D9F-BFB3-EE1A93A0BDB3', '2017-03-22 09:47:30', '', '2017-03-22 09:47:30', '', null, '', null, '2017-03-22 09:47:30', '访问日志', 'Log?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('37D67131-3DDE-4081-B87D-76EC0062C45E', '2017-03-22 11:15:40', '', '2017-03-22 11:15:40', '', null, '', null, '2017-03-22 11:15:40', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('37E90B1E-DC43-4179-A54A-B58D5F495E05', '2017-03-22 14:16:39', '', '2017-03-22 14:16:39', '', null, '', null, '2017-03-22 14:16:39', '访问日志', 'Table/index?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('380B7B0B-4A8D-496A-9489-2A9B13D20939', '2017-03-22 22:41:12', '', '2017-03-22 22:41:12', '', null, '', null, '2017-03-22 22:41:12', '访问日志', 'Dashboard/configsort?m_atpid=54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('3818B563-9E8C-4018-8F95-A02948804485', '2017-03-22 16:38:58', '', '2017-03-22 16:38:58', '', null, '', null, '2017-03-22 16:38:58', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('3846C7BE-E71D-49A3-BD02-30114DB8BB9F', '2017-03-22 11:14:27', '', '2017-03-22 11:14:27', '', null, '', null, '2017-03-22 11:14:27', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('388C5A16-A5BC-4E34-BDFF-0B021ABCF03D', '2017-03-22 14:37:02', '', '2017-03-22 14:37:02', '', null, '', null, '2017-03-22 14:37:02', '访问日志', 'Role/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('397D596D-A7F2-47BD-8621-29636A3645C1', '2017-03-22 23:12:58', '', '2017-03-22 23:12:58', '', null, '', null, '2017-03-22 23:12:58', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('3985791E-6982-4E65-8423-3F820DED0C68', '2017-03-22 22:41:37', '', '2017-03-22 22:41:37', '', null, '', null, '2017-03-22 22:41:37', '访问日志', 'Module/edit?id=04464D50-956F-48FD-9B1C-A0712C74A976', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('39D999B3-5326-42F9-B06F-481A7B6B4B50', '2017-03-22 22:50:36', '', '2017-03-22 22:50:36', '', null, '', null, '2017-03-22 22:50:36', '访问日志', 'Dashboard/index?m_atpid=54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('3A661624-F904-4C4A-A3A4-DA76E5967CBE', '2017-03-22 22:50:33', '', '2017-03-22 22:50:33', '', null, '', null, '2017-03-22 22:50:33', '访问日志', 'Dashboard/chart1?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('3B092568-7452-4841-AB2C-75DABADFB373', '2017-03-22 10:03:38', '', '2017-03-22 10:03:39', '', null, '', null, '2017-03-22 10:03:39', '访问日志', 'Frame?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('3B519023-38FA-4CA2-A8E9-B8EB197C931E', '2017-03-22 13:45:32', '', '2017-03-22 13:45:32', '', null, '', null, '2017-03-22 13:45:32', '访问日志', 'Role/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('3B80A730-56E4-43F2-9169-7271984AA69E', '2017-03-22 10:22:02', '', '2017-03-22 10:22:02', '', null, '', null, '2017-03-22 10:22:02', '访问日志', 'Frame?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('3BAB9629-9EC3-4C8C-8861-4816B864AA98', '2017-03-22 16:36:35', '', '2017-03-22 16:36:35', '', null, '', null, '2017-03-22 16:36:35', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('3C4DBF6E-D323-4B8D-B81C-A0B5F71B3A04', '2017-03-22 09:47:33', '', '2017-03-22 09:47:33', '', null, '', null, '2017-03-22 09:47:33', '访问日志', 'Admin/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('3CCAB1D0-9C50-4CF2-9B77-CB2476FBB92B', '2017-03-22 11:14:27', '', '2017-03-22 11:14:27', '', null, '', null, '2017-03-22 11:14:27', '访问日志', 'Role?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('3CD40AB9-7B01-4C8E-B52A-755A93D1E8C7', '2017-03-22 13:36:02', '', '2017-03-22 13:36:02', '', null, '', null, '2017-03-22 13:36:02', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('3D48CBC7-4D95-4981-8CE0-CFF55D831336', '2017-03-22 23:12:58', '', '2017-03-22 23:12:58', '', null, '', null, '2017-03-22 23:12:58', '访问日志', 'Module?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('3DB187FB-3307-4CAD-9B29-E642EC17FF80', '2017-03-22 22:40:59', '', '2017-03-22 22:40:59', '', null, '', null, '2017-03-22 22:40:59', '访问日志', 'Dashboard/index?m_atpid=m1', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('3E03B36C-7549-4B1A-B384-D6B0975EB06D', '2017-03-22 10:47:38', '', '2017-03-22 10:47:38', '', null, '', null, '2017-03-22 10:47:38', '访问日志', 'Module/del?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('3E59B771-4FD7-4EB4-BAAC-6331281989F7', '2017-03-22 09:50:39', '', '2017-03-22 09:50:39', '', null, '', null, '2017-03-22 09:50:39', '访问日志', 'Log?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('3E763667-C300-48C0-8480-CC686494F356', '2017-03-22 09:53:47', '', '2017-03-22 09:53:47', '', null, '', null, '2017-03-22 09:53:47', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('3F28EBBB-EB2B-4069-9CDF-BE71315782EB', '2017-03-22 13:36:26', '', '2017-03-22 13:36:26', '', null, '', null, '2017-03-22 13:36:26', '访问日志', 'Module/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('3FA8A9EA-6915-4210-B7E9-D8546C5A25D3', '2017-03-22 22:28:37', '', '2017-03-22 22:28:37', '', null, '', null, '2017-03-22 22:28:37', '访问日志', 'User/edit?id=F8087DF6-8BB3-4DAA-A49F-ECBBB01C9336', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('3FE73606-12CE-4D80-90A7-626C1268927A', '2017-03-22 10:56:52', '', '2017-03-22 10:56:52', '', null, '', null, '2017-03-22 10:56:52', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('401ED122-193A-47B6-B6CA-262DA6CA8B1E', '2017-03-22 22:56:37', '', '2017-03-22 22:56:37', '', null, '', null, '2017-03-22 22:56:37', '访问日志', 'Dashboard/configsort?m_atpid=54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('4023D5AC-ABD5-4E95-BCB1-9684D222D4FD', '2017-03-22 13:55:07', '', '2017-03-22 13:55:07', '', null, '', null, '2017-03-22 13:55:07', '访问日志', 'Admin/edit?id=15EFB6B7-EA22-4111-8083-6311AFF16F7F', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('405BBFC9-EA0F-44EE-9718-B3AEA901EBE8', '2017-03-22 22:41:02', '', '2017-03-22 22:41:02', '', null, '', null, '2017-03-22 22:41:02', '访问日志', '?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('40D54183-5E7D-4D8F-9378-EA3566C4DF9F', '2017-03-22 12:21:53', '', '2017-03-22 12:21:53', '', null, '', null, '2017-03-22 12:21:53', '访问日志', 'Frame?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('40E5A67C-33A7-49E6-A50B-6A0495708837', '2017-03-22 13:36:05', '', '2017-03-22 13:36:05', '', null, '', null, '2017-03-22 13:36:05', '访问日志', 'Module?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('4102DA19-B9F1-442D-BD07-C6F7CA973F64', '2017-03-22 09:53:37', '', '2017-03-22 09:53:37', '', null, '', null, '2017-03-22 09:53:37', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('413B0824-67C5-49D4-A30F-CB82248624F6', '2017-03-22 13:32:49', '', '2017-03-22 13:32:49', '', null, '', null, '2017-03-22 13:32:49', '访问日志', 'Role?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('41455F98-EF01-439E-8854-C99CF984A8B9', '2017-03-22 16:37:34', '', '2017-03-22 16:37:34', '', null, '', null, '2017-03-22 16:37:34', '访问日志', 'Role/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('4188F030-5168-4C02-89A4-06AEE0CF70A8', '2017-03-22 10:47:02', '', '2017-03-22 10:47:02', '', null, '', null, '2017-03-22 10:47:02', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('41BF4630-0CCA-48D9-9D0A-6EF29A0A455C', '2017-03-22 09:53:01', '', '2017-03-22 09:53:01', '', null, '', null, '2017-03-22 09:53:01', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('41E62365-2420-4009-9D99-D83B19C4F540', '2017-03-22 22:57:06', '', '2017-03-22 22:57:06', '', null, '', null, '2017-03-22 22:57:06', '访问日志', 'Dashboard/embedpage?m_atpid=04464D50-956F-48FD-9B1C-A0712C74A976', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('423821EE-FA1F-48E2-8E01-B946231AC384', '2017-03-22 10:26:06', '', '2017-03-22 10:26:06', '', null, '', null, '2017-03-22 10:26:06', '访问日志', 'Module?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('423BDC4F-E5A4-4E8E-84BF-45836ADC7F88', '2017-03-22 16:39:33', '', '2017-03-22 16:39:33', '', null, '', null, '2017-03-22 16:39:33', '访问日志', 'Role/edit?id=EFB398FF-A4B4-4B78-96BB-981892E8A4C4', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('429E3561-6732-4856-8AB2-F5966C028A0C', '2017-03-22 13:36:02', '', '2017-03-22 13:36:02', '', null, '', null, '2017-03-22 13:36:02', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('42C6B7A1-9500-4B2D-91EF-A945E2E7D843', '2017-03-22 11:23:13', '', '2017-03-22 11:23:13', '', null, '', null, '2017-03-22 11:23:13', '访问日志', 'Role?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('42D06DBC-D0E5-4CD8-81BF-53643060679B', '2017-03-22 14:38:12', '', '2017-03-22 14:38:12', '', null, '', null, '2017-03-22 14:38:12', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('439DF957-2BC0-47CF-BEDB-CBCE4668C716', '2017-03-22 13:44:44', '', '2017-03-22 13:44:44', '', null, '', null, '2017-03-22 13:44:44', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('43BE1401-0499-4ABF-B289-EFA6B2DBBD09', '2017-03-22 22:56:39', '', '2017-03-22 22:56:39', '', null, '', null, '2017-03-22 22:56:39', '访问日志', 'Dashboard/configsortsubmit?m_atpid=54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('440FB14A-1FA9-4D9F-976E-64CAA20DA64D', '2017-03-22 14:16:17', '', '2017-03-22 14:16:17', '', null, '', null, '2017-03-22 14:16:17', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('449AA477-3CD1-471E-95A7-270ED5EE8356', '2017-03-22 16:34:52', '', '2017-03-22 16:34:52', '', null, '', null, '2017-03-22 16:34:52', '访问日志', 'Module?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('44C2D37C-6480-44DF-93EA-EE16CE7B7D6D', '2017-03-22 14:16:40', '', '2017-03-22 14:16:40', '', null, '', null, '2017-03-22 14:16:40', '访问日志', 'Table/edit?id=9A5BC5EF-B252-43C5-90FC-383B627DDCDD', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('4545631C-02B4-47A3-A0D5-4FC513463042', '2017-03-22 09:55:19', '', '2017-03-22 09:55:19', '', null, '', null, '2017-03-22 09:55:19', '访问日志', 'Admin/edit?id=15EFB6B7-EA22-4111-8083-6311AFF16F7F', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('455D7330-9633-4105-8930-40C43C436A31', '2017-03-22 16:37:18', '', '2017-03-22 16:37:18', '', null, '', null, '2017-03-22 16:37:18', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('4562D1B5-EB44-427A-941A-C25990241E16', '2017-03-22 13:44:44', '', '2017-03-22 13:44:44', '', null, '', null, '2017-03-22 13:44:44', '访问日志', 'Role/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('46242B74-1CCB-4B42-8A61-E113C52CD6E0', '2017-03-22 10:03:42', '', '2017-03-22 10:03:42', '', null, '', null, '2017-03-22 10:03:42', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('46D61B31-967C-4793-9FB8-9AEC4290DF2E', '2017-03-22 13:35:40', '', '2017-03-22 13:35:40', '', null, '', null, '2017-03-22 13:35:40', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('476C2A90-CAB2-4428-98A6-200ED7AD16BA', '2017-03-22 10:50:02', '', '2017-03-22 10:50:02', '', null, '', null, '2017-03-22 10:50:02', '访问日志', 'Module/edit?id=54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('47FA647D-B6A0-4265-8CF8-30667CF05341', '2017-03-22 12:21:48', '', '2017-03-22 12:21:48', '', null, '', null, '2017-03-22 12:21:48', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('4820A239-17C7-42F8-8B05-5B7E80A9FB70', '2017-03-22 22:49:18', '', '2017-03-22 22:49:18', '', null, '', null, '2017-03-22 22:49:18', '访问日志', 'Dashboard/configsort?m_atpid=54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('48300F40-6F31-408A-AF06-22762EB28DA6', '2017-03-22 22:56:33', '', '2017-03-22 22:56:33', '', null, '', null, '2017-03-22 22:56:33', '访问日志', 'Dashboard/chart1?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('4865D31B-8BE1-4E75-B21C-AE67F9D22ED5', '2017-03-22 09:52:58', '', '2017-03-22 09:52:58', '', null, '', null, '2017-03-22 09:52:58', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('4879801E-5329-48F3-99A6-2AFFDFD88A54', '2017-03-22 22:55:59', '', '2017-03-22 22:55:59', '', null, '', null, '2017-03-22 22:55:59', '访问日志', 'Dashboard/index?m_atpid=54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('48CD1E47-A1D7-4F8B-8CF8-4AAEEFA5374A', '2017-03-22 22:56:16', '', '2017-03-22 22:56:16', '', null, '', null, '2017-03-22 22:56:16', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('4906ECE1-2285-490C-8835-A8889214D7D1', '2017-03-22 23:12:44', '', '2017-03-22 23:12:44', '', null, '', null, '2017-03-22 23:12:44', '访问日志', 'Dashboard/index?m_atpid=688BD005-E517-40EA-AB7F-F8386E03B56C', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('491D6A9B-DCB4-454B-875A-FF0B3BA930FF', '2017-03-22 09:49:13', '', '2017-03-22 09:49:13', '', null, '', null, '2017-03-22 09:49:13', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('4943362F-C915-47B0-8C8C-C72A2CFB4D55', '2017-03-22 13:51:48', '', '2017-03-22 13:51:48', '', null, '', null, '2017-03-22 13:51:48', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('497C8420-5D34-4A8C-B5FA-66958BD95F45', '2017-03-22 09:52:54', '', '2017-03-22 09:52:54', '', null, '', null, '2017-03-22 09:52:54', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('4A3890B3-7EDF-42B9-8702-F1445EEA2227', '2017-03-22 22:50:33', '', '2017-03-22 22:50:33', '', null, '', null, '2017-03-22 22:50:33', '访问日志', 'Dashboard/index?m_atpid=54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('4A6D9E4B-0ED9-4E1E-9977-5D0619EB2193', '2017-03-22 10:45:05', '', '2017-03-22 10:45:05', '', null, '', null, '2017-03-22 10:45:05', '访问日志', 'Module?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('4ABD1F16-B80D-4CA9-AF5E-CD373F298040', '2017-03-22 09:47:35', '', '2017-03-22 09:47:35', '', null, '', null, '2017-03-22 09:47:35', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('4AD212DA-DA31-4083-8257-C87DECB00A91', '2017-03-22 16:37:37', '', '2017-03-22 16:37:37', '', null, '', null, '2017-03-22 16:37:37', '访问日志', 'Role/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('4B1A8497-9480-41C4-82E7-D4F5BB343A12', '2017-03-22 14:38:11', '', '2017-03-22 14:38:11', '', null, '', null, '2017-03-22 14:38:11', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('4BBB06BF-2AC7-4CD9-A134-637A6E6C5064', '2017-03-22 10:28:36', '', '2017-03-22 10:28:36', '', null, '', null, '2017-03-22 10:28:36', '访问日志', 'Module/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('4C05CE69-18EF-42CA-8EBA-AD88780D3FD5', '2017-03-22 13:32:17', '', '2017-03-22 13:32:17', '', null, '', null, '2017-03-22 13:32:17', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('4C6D8446-0733-4760-85FD-F921F038C2AA', '2017-03-22 11:34:11', '', '2017-03-22 11:34:11', '', null, '', null, '2017-03-22 11:34:11', '访问日志', 'Role?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('4C8C57D5-A663-4B13-981F-19F4195C046B', '2017-03-22 13:56:24', '', '2017-03-22 13:56:24', '', null, '', null, '2017-03-22 13:56:24', '访问日志', 'User/edit?id=F8087DF6-8BB3-4DAA-A49F-ECBBB01C9336', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('4CD75F3F-F716-495B-A27C-1DFEAE01415C', '2017-03-22 09:45:11', '', '2017-03-22 09:45:11', '', '', '', null, '2017-03-22 09:45:11', '访问日志', 'Log?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('4D78DFFE-11FB-4D1C-BEA5-E482177C351D', '2017-03-22 11:15:36', '', '2017-03-22 11:15:36', '', null, '', null, '2017-03-22 11:15:36', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('4D825477-4780-42A7-AF8A-F0E66EEB508F', '2017-03-22 13:27:28', '', '2017-03-22 13:27:28', '', null, '', null, '2017-03-22 13:27:28', '访问日志', 'Role?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('4D90125A-A0A6-4A73-9142-8923814E837A', '2017-03-22 09:55:17', '', '2017-03-22 09:55:17', '', null, '', null, '2017-03-22 09:55:17', '访问日志', 'Admin/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('4D939E74-DDAC-4AEE-815D-A316A2FE257E', '2017-03-22 14:40:24', '', '2017-03-22 14:40:24', '', null, '', null, '2017-03-22 14:40:24', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('4DCBF29C-6264-4DAF-8B29-67B1BE3D8F5E', '2017-03-22 22:32:01', '', '2017-03-22 22:32:01', '', null, '', null, '2017-03-22 22:32:01', '访问日志', 'User/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('4DE6986B-AC0A-4F91-A917-04A473A476D4', '2017-03-22 14:06:21', '', '2017-03-22 14:06:21', '', null, '', null, '2017-03-22 14:06:21', '访问日志', 'Table/edit?id=9A5BC5EF-B252-43C5-90FC-383B627DDCDD', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('4EE4C016-213A-46B1-BC02-B29453999517', '2017-03-22 22:32:48', '', '2017-03-22 22:32:48', '', null, '', null, '2017-03-22 22:32:48', '访问日志', 'Frame?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('4FCA03C1-07C6-4606-AF21-36C08CC9C82C', '2017-03-22 22:51:14', '', '2017-03-22 22:51:14', '', null, '', null, '2017-03-22 22:51:14', '访问日志', 'Dashboard/index?m_atpid=54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('4FEA8553-B258-452A-AB5B-4E030BE93C15', '2017-03-22 09:45:11', '', '2017-03-22 09:45:11', '', '', '', null, '2017-03-22 09:45:11', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('5006BC61-C1A5-4EA1-8FAF-4DBE342E93C0', '2017-03-22 16:36:54', '', '2017-03-22 16:36:54', '', null, '', null, '2017-03-22 16:36:54', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('5007E1FF-4004-405E-B99B-070EDC7BFA60', '2017-03-22 11:15:48', '', '2017-03-22 11:15:48', '', null, '', null, '2017-03-22 11:15:48', '访问日志', 'Role/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('502A5E82-71A1-4483-B683-C53D383E6AE7', '2017-03-22 23:11:23', '', '2017-03-22 23:11:23', '', null, '', null, '2017-03-22 23:11:23', '访问日志', 'Frame?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('50B8D37E-17AD-4DC1-8F55-2CDC8DAEB462', '2017-03-22 09:51:35', '', '2017-03-22 09:51:35', '', null, '', null, '2017-03-22 09:51:35', '访问日志', 'Log?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('50E75C1F-1BAF-450C-B2B1-21C44592B9A6', '2017-03-22 13:20:01', '', '2017-03-22 13:20:01', '', null, '', null, '2017-03-22 13:20:01', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('514E4CA9-F93E-4C77-BCA6-E1778AEA69DC', '2017-03-22 22:45:31', '', '2017-03-22 22:45:31', '', null, '', null, '2017-03-22 22:45:31', '访问日志', 'Dashboard/index?m_atpid=m1', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('51A74FC6-8636-42B1-A07A-9A2741127021', '2017-03-22 16:39:46', '', '2017-03-22 16:39:46', '', null, '', null, '2017-03-22 16:39:46', '访问日志', 'Role/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('525BD531-1643-45E4-971C-105AA3E8B694', '2017-03-22 09:46:08', '', '2017-03-22 09:46:08', '', '', '', null, '2017-03-22 09:46:08', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('527818EC-E3E9-43B8-A23F-FDE06144625B', '2017-03-22 22:42:31', '', '2017-03-22 22:42:31', '', null, '', null, '2017-03-22 22:42:31', '访问日志', 'Module/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('52C3D0BB-02B5-4B63-BFA8-842B611B811C', '2017-03-22 10:55:18', '', '2017-03-22 10:55:18', '', null, '', null, '2017-03-22 10:55:18', '访问日志', 'Table/index?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('535CE384-C09E-4F06-A561-03882A5F2E9D', '2017-03-22 16:36:48', '', '2017-03-22 16:36:48', '', null, '', null, '2017-03-22 16:36:48', '访问日志', 'Role/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('5398CF57-4C72-478B-9DF1-8FA4411C2E46', '2017-03-22 12:20:53', '', '2017-03-22 12:20:53', '', null, '', null, '2017-03-22 12:20:53', '访问日志', 'Index/block?title=%E8%81%94%E7%B3%BB%E6%88%91%E4%BB%AC', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('54D64576-7EE8-4FD9-BF4E-6B647AD05E8E', '2017-03-22 22:56:32', '', '2017-03-22 22:56:32', '', null, '', null, '2017-03-22 22:56:32', '访问日志', 'Dashboard/index?m_atpid=54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('54E5241A-7187-4424-9D94-0BB0CDFA9F1A', '2017-03-22 10:22:53', '', '2017-03-22 10:22:53', '', null, '', null, '2017-03-22 10:22:53', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('558465F3-7B10-4BF6-B627-ED76301109EA', '2017-03-22 22:44:26', '', '2017-03-22 22:44:26', '', null, '', null, '2017-03-22 22:44:26', '访问日志', 'Dashboard/chart1?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('5680FBB6-9CE7-4137-965F-E874F6D31C8D', '2017-03-22 22:43:03', '', '2017-03-22 22:43:03', '', null, '', null, '2017-03-22 22:43:03', '访问日志', 'Dashboard/embedpage?m_atpid=6A38DDDB-38B4-4C82-8367-326EF35DC448', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('56C8D004-5D93-4888-B98D-F8AF0EEC3537', '2017-03-22 11:23:14', '', '2017-03-22 11:23:14', '', null, '', null, '2017-03-22 11:23:14', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('57994907-A39B-4266-A443-F1DC555CE8E4', '2017-03-22 22:57:03', '', '2017-03-22 22:57:03', '', null, '', null, '2017-03-22 22:57:03', '访问日志', 'Module/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('57E82600-7C04-401E-94F0-FA740B6BC6EA', '2017-03-22 09:47:31', '', '2017-03-22 09:47:31', '', null, '', null, '2017-03-22 09:47:31', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('57EF8C04-0425-4B2A-9020-84128BA890C9', '2017-03-22 11:15:24', '', '2017-03-22 11:15:24', '', null, '', null, '2017-03-22 11:15:24', '访问日志', 'Role/edit?id=A8BD7DC5-71B5-4A28-9E33-C61C5B3766A0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('5845B18E-FA6E-462C-9861-E3D542080641', '2017-03-22 22:56:39', '', '2017-03-22 22:56:39', '', null, '', null, '2017-03-22 22:56:39', '访问日志', 'Dashboard/chart1?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('586281B0-F410-4C9E-B0F3-8E95FCB7F82B', '2017-03-22 09:52:28', '', '2017-03-22 09:52:28', '', null, '', null, '2017-03-22 09:52:28', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('58B8395A-C296-4763-A413-BC9E0A5664C9', '2017-03-22 23:13:42', '', '2017-03-22 23:13:42', '', null, '', null, '2017-03-22 23:13:42', '访问日志', 'Dashboard/embedpage?m_atpid=6A38DDDB-38B4-4C82-8367-326EF35DC448', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('58FA5291-7D00-4085-B681-57DC6E5B4A6A', '2017-03-22 11:02:42', '', '2017-03-22 11:02:42', '', null, '', null, '2017-03-22 11:02:42', '访问日志', 'Admin?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('59318536-03E0-4B7C-B5E4-0415CB3AFB05', '2017-03-22 10:46:23', '', '2017-03-22 10:46:23', '', null, '', null, '2017-03-22 10:46:23', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('594115D4-FF68-4B25-B63D-E430BEC2F27E', '2017-03-22 16:36:59', '', '2017-03-22 16:36:59', '', null, '', null, '2017-03-22 16:36:59', '访问日志', 'Role/edit?id=7E46C663-EEC9-4CFF-866F-544334789B98', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('59943474-7B43-4B50-A382-D688FE9D8D06', '2017-03-22 23:11:22', '', '2017-03-22 23:11:22', '', null, '', null, '2017-03-22 23:11:22', '访问日志', 'Frame?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('59B0C0A6-C52E-4114-9E57-21B40B25E196', '2017-03-22 13:34:14', '', '2017-03-22 13:34:14', '', null, '', null, '2017-03-22 13:34:14', '访问日志', 'Role/add?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('5A8B5EA1-06A2-4134-AADB-041132A9F71D', '2017-03-22 13:54:33', '', '2017-03-22 13:54:33', '', null, '', null, '2017-03-22 13:54:33', '访问日志', 'Module/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('5AA21878-1A69-4167-85E1-8AA7A287EC57', '2017-03-22 11:15:49', '', '2017-03-22 11:15:49', '', null, '', null, '2017-03-22 11:15:49', '访问日志', 'Role/add?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('5B0AB41B-AD08-487D-81CA-03F13ECF12E9', '2017-03-22 14:16:20', '', '2017-03-22 14:16:20', '', null, '', null, '2017-03-22 14:16:20', '访问日志', 'User/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('5B0ACCC4-7B72-482C-916F-3AFDB443A63C', '2017-03-22 22:49:12', '', '2017-03-22 22:49:12', '', null, '', null, '2017-03-22 22:49:12', '访问日志', 'Dashboard/chart1?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('5B2A30B6-4CCF-4B79-9FC8-6A119AB60CB8', '2017-03-22 22:50:34', '', '2017-03-22 22:50:34', '', null, '', null, '2017-03-22 22:50:34', '访问日志', 'Dashboard/configsort?m_atpid=54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('5B7065F8-4215-4DA9-9B17-1F33E1F69247', '2017-03-22 13:37:08', '', '2017-03-22 13:37:08', '', null, '', null, '2017-03-22 13:37:08', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('5B7BC04E-C7A1-4DC4-84B7-CB8F2AEB3FDB', '2017-03-22 14:42:00', '', '2017-03-22 14:42:00', '', null, '', null, '2017-03-22 14:42:00', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('5B7C3628-3AB5-4584-96FE-548DA5D61832', '2017-03-22 10:45:38', '', '2017-03-22 10:45:38', '', null, '', null, '2017-03-22 10:45:38', '访问日志', 'Module/edit?id=54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('5B8EF057-E3E4-4475-89FD-1B1AE3132546', '2017-03-22 13:18:32', '', '2017-03-22 13:18:32', '', null, '', null, '2017-03-22 13:18:32', '访问日志', 'Role?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('5BE5257D-E99C-47B3-928E-3E6ACD402624', '2017-03-22 13:11:09', '', '2017-03-22 13:11:09', '', null, '', null, '2017-03-22 13:11:09', '访问日志', 'Login/dologin?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('5C197289-3058-4648-957D-7E4395AAC1F1', '2017-03-22 09:46:06', '', '2017-03-22 09:46:06', '', '', '', null, '2017-03-22 09:46:06', '访问日志', 'Log?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('5C6DC43F-9CEE-4420-8E03-D58A412F27A2', '2017-03-22 11:23:28', '', '2017-03-22 11:23:28', '', null, '', null, '2017-03-22 11:23:28', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('5DA366F2-4DEE-4D6D-84F5-FD8BF7A54D62', '2017-03-22 11:23:22', '', '2017-03-22 11:23:22', '', null, '', null, '2017-03-22 11:23:22', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('5DF622F7-3CE2-485E-889A-23837C6BD05A', '2017-03-22 09:55:18', '', '2017-03-22 09:55:18', '', null, '', null, '2017-03-22 09:55:18', '访问日志', 'Admin/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('5E3587B6-4E01-4FE5-8B8E-764C5EE07FA0', '2017-03-22 09:47:28', '', '2017-03-22 09:47:28', '', null, '', null, '2017-03-22 09:47:28', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('5E5CAAD9-CA70-4111-AB85-678709BFAB89', '2017-03-22 11:15:47', '', '2017-03-22 11:15:47', '', null, '', null, '2017-03-22 11:15:47', '访问日志', 'Role/add?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('5EB2CC83-1A5E-43B9-A77D-7250E0748DCE', '2017-03-22 13:54:33', '', '2017-03-22 13:54:33', '', null, '', null, '2017-03-22 13:54:33', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('5EE9229D-573C-43E2-99B1-251AD7D12312', '2017-03-22 22:21:32', '', '2017-03-22 22:21:32', '', null, '', null, '2017-03-22 22:21:32', '访问日志', 'Login/dologin?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('5F0CC815-A37F-4BB7-B774-F34693274CA7', '2017-03-22 09:53:49', '', '2017-03-22 09:53:49', '', null, '', null, '2017-03-22 09:53:49', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('5FDCB71E-1F11-4F98-868B-EDD5BA84B29E', '2017-03-22 16:40:04', '', '2017-03-22 16:40:04', '', null, '', null, '2017-03-22 16:40:04', '访问日志', 'User?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('5FE9ABC6-1F55-424B-985C-DDFA84E2D8A6', '2017-03-22 22:45:31', '', '2017-03-22 22:45:31', '', null, '', null, '2017-03-22 22:45:31', '访问日志', 'Frame?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('5FFAE22A-C92C-4009-924C-D7887A77B36F', '2017-03-22 16:35:22', '', '2017-03-22 16:35:22', '', null, '', null, '2017-03-22 16:35:22', '访问日志', 'Role?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('601EE661-2797-4176-AFF8-EC6702C44CC8', '2017-03-22 13:28:01', '', '2017-03-22 13:28:01', '', null, '', null, '2017-03-22 13:28:01', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('60E80F67-8135-4616-ADBD-60280D7CDD67', '2017-03-22 10:56:34', '', '2017-03-22 10:56:34', '', null, '', null, '2017-03-22 10:56:34', '访问日志', 'Module?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('60EEB72A-B29A-47F5-9A96-0E15E4434491', '2017-03-22 11:14:28', '', '2017-03-22 11:14:28', '', null, '', null, '2017-03-22 11:14:28', '访问日志', 'Role/add?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('60EFFEC5-880A-441D-9960-6BEC5DB75498', '2017-03-22 22:43:59', '', '2017-03-22 22:43:59', '', null, '', null, '2017-03-22 22:43:59', '访问日志', 'Dashboard/chart1?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('6113E31D-D7D8-4C0C-9168-37AD669491B5', '2017-03-22 11:02:58', '', '2017-03-22 11:02:58', '', null, '', null, '2017-03-22 11:02:58', '访问日志', 'Admin/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('61228AE6-C90B-4C01-9A11-633D0EC8D545', '2017-03-22 14:11:51', '', '2017-03-22 14:11:51', '', null, '', null, '2017-03-22 14:11:51', '访问日志', 'Module?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('612FB7DC-5DB3-4C5F-8C8A-35F064749D6E', '2017-03-22 14:11:52', '', '2017-03-22 14:11:52', '', null, '', null, '2017-03-22 14:11:52', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('613AF09A-6684-43BC-86EF-49EE01CF2627', '2017-03-22 22:31:54', '', '2017-03-22 22:31:54', '', null, '', null, '2017-03-22 22:31:54', '访问日志', 'User/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('61455784-76C8-4AD2-9640-ED3FFF896C25', '2017-03-22 16:37:04', '', '2017-03-22 16:37:04', '', null, '', null, '2017-03-22 16:37:04', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('61649FFA-3B4D-4D3A-B360-44C6F0317D9C', '2017-03-22 09:46:15', '', '2017-03-22 09:46:15', '', '', '', null, '2017-03-22 09:46:15', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('61A3D679-4833-41FE-9B2A-1B1CB5A68EE1', '2017-03-22 13:18:19', '', '2017-03-22 13:18:19', '', null, '', null, '2017-03-22 13:18:19', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('622DD3E8-F217-43D8-8350-EF524AD95F3A', '2017-03-22 13:38:52', '', '2017-03-22 13:38:52', '', null, '', null, '2017-03-22 13:38:52', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('626B32DD-6736-4339-B0EE-21EFC6FC10E6', '2017-03-22 11:15:53', '', '2017-03-22 11:15:53', '', null, '', null, '2017-03-22 11:15:53', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('627390FE-6789-48A1-904C-14569112FC2B', '2017-03-22 09:48:52', '', '2017-03-22 09:48:52', '', null, '', null, '2017-03-22 09:48:52', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('62A1567B-E86C-4BD8-816E-AC2F704DEC3E', '2017-03-22 13:45:23', '', '2017-03-22 13:45:23', '', null, '', null, '2017-03-22 13:45:23', '访问日志', 'Role/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('63188462-C9BE-4605-A35B-1AF55BA00C54', '2017-03-22 22:41:02', '', '2017-03-22 22:41:02', '', null, '', null, '2017-03-22 22:41:02', '访问日志', 'Login?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('63229E77-8B9E-4BDF-8757-170667CB509B', '2017-03-22 10:55:18', '', '2017-03-22 10:55:18', '', null, '', null, '2017-03-22 10:55:18', '访问日志', 'Table/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('633ADBF7-5C17-40B2-AB9C-EDF0A99CE355', '2017-03-22 09:52:41', '', '2017-03-22 09:52:41', '', null, '', null, '2017-03-22 09:52:41', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('633FCCB4-CB45-4B82-AD82-64D1D3736F4A', '2017-03-22 10:47:57', '', '2017-03-22 10:47:57', '', null, '', null, '2017-03-22 10:47:57', '访问日志', 'Module/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('6346D67E-F041-41BF-AD03-736F409DA9F6', '2017-03-22 16:36:25', '', '2017-03-22 16:36:25', '', null, '', null, '2017-03-22 16:36:25', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('635A5924-6337-4BAC-A8EB-68D2DFB93822', '2017-03-22 10:27:00', '', '2017-03-22 10:27:00', '', null, '', null, '2017-03-22 10:27:00', '访问日志', 'Module/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('63998153-FAA6-413F-9338-C1611DA917A3', '2017-03-22 11:02:46', '', '2017-03-22 11:02:46', '', null, '', null, '2017-03-22 11:02:46', '访问日志', 'Admin/add?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('643E38B1-D16A-4C7C-A2E2-FBB3BDA13CF9', '2017-03-22 10:26:55', '', '2017-03-22 10:26:55', '', null, '', null, '2017-03-22 10:26:55', '访问日志', 'Module?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('652B3DE1-4DE5-429F-90BA-22F4BA2DB194', '2017-03-22 13:18:33', '', '2017-03-22 13:18:33', '', null, '', null, '2017-03-22 13:18:33', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('654D9F33-17BF-4D22-BC19-8AD5069AB4BE', '2017-03-22 10:48:00', '', '2017-03-22 10:48:00', '', null, '', null, '2017-03-22 10:48:00', '访问日志', 'Module/add?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('656863DE-903A-49FF-9F21-B6385A0C358C', '2017-03-22 16:39:51', '', '2017-03-22 16:39:51', '', null, '', null, '2017-03-22 16:39:51', '访问日志', 'Role/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('6668F120-91E4-4674-A875-156656493C96', '2017-03-22 09:47:54', '', '2017-03-22 09:47:54', '', null, '', null, '2017-03-22 09:47:54', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('666F1027-B825-479B-8A1C-62F9A6EE6545', '2017-03-22 16:34:53', '', '2017-03-22 16:34:53', '', null, '', null, '2017-03-22 16:34:53', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('6770B446-4DE4-48B1-8E3C-04C9BE9D99E2', '2017-03-22 13:37:50', '', '2017-03-22 13:37:50', '', null, '', null, '2017-03-22 13:37:50', '访问日志', 'Role?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('68171772-D00B-4A7E-BA97-F41281A3F23A', '2017-03-22 09:47:32', '', '2017-03-22 09:47:32', '', null, '', null, '2017-03-22 09:47:32', '访问日志', 'Admin?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('6824CACC-F2F5-4F64-97C0-B4404E522295', '2017-03-22 14:03:32', '', '2017-03-22 14:03:32', '', null, '', null, '2017-03-22 14:03:32', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('683A4B85-2502-4ADD-8CE4-973056F31298', '2017-03-22 11:21:06', '', '2017-03-22 11:21:06', '', null, '', null, '2017-03-22 11:21:06', '访问日志', 'Frame?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('684CAE20-55C4-4E06-9816-AB9278062954', '2017-03-22 13:32:16', '', '2017-03-22 13:32:16', '', null, '', null, '2017-03-22 13:32:16', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('68698C7E-10E8-4101-911C-57BEBA91D788', '2017-03-22 13:37:43', '', '2017-03-22 13:37:43', '', null, '', null, '2017-03-22 13:37:43', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('686F5DE4-2B12-4527-A553-7499FC3D927F', '2017-03-22 22:54:59', '', '2017-03-22 22:54:59', '', null, '', null, '2017-03-22 22:54:59', '访问日志', 'Module/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('6905BC26-8113-41F5-BCC3-575E75B3F45D', '2017-03-22 09:52:52', '', '2017-03-22 09:52:52', '', null, '', null, '2017-03-22 09:52:52', '访问日志', 'Log?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('6922A585-9A05-4A80-8009-6244C7990320', '2017-03-22 16:37:30', '', '2017-03-22 16:37:30', '', null, '', null, '2017-03-22 16:37:30', '访问日志', 'Role/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('69651790-4A09-4E9F-90F1-8662AA53A085', '2017-03-22 13:36:08', '', '2017-03-22 13:36:08', '', null, '', null, '2017-03-22 13:36:08', '访问日志', 'Module/edit?id=04464D50-956F-48FD-9B1C-A0712C74A976', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('69D4982E-43B8-4A7B-8885-DD0343812A76', '2017-03-22 11:21:08', '', '2017-03-22 11:21:08', '', null, '', null, '2017-03-22 11:21:08', '访问日志', 'User?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('69ED81E1-EE89-4C75-B860-21EB155430C3', '2017-03-22 09:50:40', '', '2017-03-22 09:50:40', '', null, '', null, '2017-03-22 09:50:40', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('6A3AFE94-C1B8-4C42-A388-D9327FA92ECA', '2017-03-22 09:55:08', '', '2017-03-22 09:55:08', '', null, '', null, '2017-03-22 09:55:08', '访问日志', 'Index/block?title=%E8%8F%9C%E5%8D%952.2', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('6B1480A5-84A2-4569-9B03-6A43649CAFE9', '2017-03-22 13:28:00', '', '2017-03-22 13:28:00', '', null, '', null, '2017-03-22 13:28:00', '访问日志', 'Role?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('6B3F7749-BAA3-413A-A215-FE86A0C11462', '2017-03-22 10:22:39', '', '2017-03-22 10:22:39', '', null, '', null, '2017-03-22 10:22:39', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('6B4BECE4-A056-4DBF-8360-3AFCDC725B84', '2017-03-22 09:55:18', '', '2017-03-22 09:55:18', '', null, '', null, '2017-03-22 09:55:18', '访问日志', 'Admin/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('6B68C0C0-3B7D-4081-A77D-DEFDC4E73CC4', '2017-03-22 09:55:04', '', '2017-03-22 09:55:04', '', null, '', null, '2017-03-22 09:55:04', '访问日志', 'Admin/edit?id=B7BCA88C-8127-491B-ABF7-E4A62F5C8512', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('6B8B7543-4640-48AA-A014-27A6B41AD4CD', '2017-03-22 11:23:20', '', '2017-03-22 11:23:20', '', null, '', null, '2017-03-22 11:23:20', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('6B9C62F3-18B2-48D0-97A5-13483CD89982', '2017-03-22 09:48:44', '', '2017-03-22 09:48:44', '', null, '', null, '2017-03-22 09:48:44', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('6BD13408-204A-4A2D-8643-5FD0BC92A5D2', '2017-03-22 09:52:43', '', '2017-03-22 09:52:43', '', null, '', null, '2017-03-22 09:52:43', '访问日志', 'Log?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('6C3770C0-2BAB-4723-831E-DA5434EE832C', '2017-03-22 13:37:27', '', '2017-03-22 13:37:27', '', null, '', null, '2017-03-22 13:37:27', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('6C3FD411-A8A8-48CE-9CC5-EC3246330E3E', '2017-03-22 16:37:39', '', '2017-03-22 16:37:39', '', null, '', null, '2017-03-22 16:37:39', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('6CAD4995-A9DC-4AB9-A64D-C9CC1C9E157D', '2017-03-22 13:27:43', '', '2017-03-22 13:27:43', '', null, '', null, '2017-03-22 13:27:43', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('6D5FA54E-971B-4565-84BC-3C0A9026D4ED', '2017-03-22 22:49:20', '', '2017-03-22 22:49:20', '', null, '', null, '2017-03-22 22:49:20', '访问日志', 'Dashboard/configsortsubmit?m_atpid=54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('6D63AE1A-17A0-42F9-8247-660752BD20E6', '2017-03-22 22:51:07', '', '2017-03-22 22:51:07', '', null, '', null, '2017-03-22 22:51:07', '访问日志', 'Dashboard/embedpage?m_atpid=04464D50-956F-48FD-9B1C-A0712C74A976', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('6DAF98F3-26E9-4119-BBFF-DA67E6F82D2F', '2017-03-22 14:23:45', '', '2017-03-22 14:23:45', '', null, '', null, '2017-03-22 14:23:45', '访问日志', 'Role/edit?id=7E46C663-EEC9-4CFF-866F-544334789B98', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('6E77E4C3-CC6A-448D-A1D0-BF54B5E5E02A', '2017-03-22 16:36:42', '', '2017-03-22 16:36:42', '', null, '', null, '2017-03-22 16:36:42', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('6E84234E-89A5-4BCD-8FBD-B9B97B75D9DD', '2017-03-22 16:38:45', '', '2017-03-22 16:38:45', '', null, '', null, '2017-03-22 16:38:45', '访问日志', 'Role?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('6EF289EA-DC78-476C-99BC-90A662ECC5E2', '2017-03-22 14:07:01', '', '2017-03-22 14:07:01', '', null, '', null, '2017-03-22 14:07:01', '访问日志', 'Table/edit?id=9A5BC5EF-B252-43C5-90FC-383B627DDCDD', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('6EFA9E83-A5C9-4A0B-AC1E-A849FDF65F8D', '2017-03-22 10:50:00', '', '2017-03-22 10:50:00', '', null, '', null, '2017-03-22 10:50:00', '访问日志', 'Module/add?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('6EFF1FC4-1275-44E9-A1F9-5BEA84D68EF4', '2017-03-22 11:23:23', '', '2017-03-22 11:23:23', '', null, '', null, '2017-03-22 11:23:23', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('6FEFA3CD-1A40-48E8-BC7B-208E6FBBCCFB', '2017-03-22 10:26:15', '', '2017-03-22 10:26:15', '', null, '', null, '2017-03-22 10:26:15', '访问日志', 'Module/edit?id=undefined', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('700688FB-3FA9-427E-A7AF-E6EA6F3CD65D', '2017-03-22 09:45:49', '', '2017-03-22 09:45:49', '', '', '', null, '2017-03-22 09:45:49', '访问日志', 'Frame?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('701EE0B1-B4E1-44E2-86E7-F3031515BE7D', '2017-03-22 09:47:54', '', '2017-03-22 09:47:54', '', null, '', null, '2017-03-22 09:47:54', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('70451AA3-FADD-4389-8D46-2118DC7C0C0D', '2017-03-22 09:56:12', '', '2017-03-22 09:56:12', '', null, '', null, '2017-03-22 09:56:12', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('70C2AE58-0142-4EE1-9D1F-0F21C0CEBC85', '2017-03-22 13:57:51', '', '2017-03-22 13:57:51', '', null, '', null, '2017-03-22 13:57:51', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('7158FBCD-1328-4380-A879-77E0B0CF2D53', '2017-03-22 11:34:13', '', '2017-03-22 11:34:13', '', null, '', null, '2017-03-22 11:34:13', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('715BB12E-F1D5-4E2D-8268-BF68189EA4BD', '2017-03-22 11:00:38', '', '2017-03-22 11:00:38', '', null, '', null, '2017-03-22 11:00:38', '访问日志', 'Log?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('72124B11-AE9F-4757-9DF9-80DC8C7B4CCA', '2017-03-22 09:53:38', '', '2017-03-22 09:53:38', '', null, '', null, '2017-03-22 09:53:38', '访问日志', 'Admin/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('72A603CB-2A75-4F1C-9606-054C53409864', '2017-03-22 09:52:31', '', '2017-03-22 09:52:31', '', null, '', null, '2017-03-22 09:52:31', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('72B0ECB2-BEED-4F24-9CFF-D5DE6B02B2B7', '2017-03-22 10:28:32', '', '2017-03-22 10:28:32', '', null, '', null, '2017-03-22 10:28:32', '访问日志', 'Module/del?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('72DD3F2E-67FF-4D92-85BE-789DD91C6FCB', '2017-03-22 22:36:19', '', '2017-03-22 22:36:19', '', null, '', null, '2017-03-22 22:36:19', '访问日志', 'Dashboard/index?m_atpid=m1', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('731A0A18-F1CB-42D5-9E96-F0B33639C23F', '2017-03-22 13:51:54', '', '2017-03-22 13:51:54', '', null, '', null, '2017-03-22 13:51:54', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('7354F603-1457-47A7-A1C7-12F95C36D9AF', '2017-03-22 22:27:35', '', '2017-03-22 22:27:35', '', null, '', null, '2017-03-22 22:27:35', '访问日志', 'User/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('736BCB2C-E3B6-49F0-9F52-BEC6B1713D1B', '2017-03-22 13:36:14', '', '2017-03-22 13:36:14', '', null, '', null, '2017-03-22 13:36:14', '访问日志', 'Module/add?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('736E068C-D665-4FAC-BCE4-698E892C450C', '2017-03-22 10:28:04', '', '2017-03-22 10:28:04', '', null, '', null, '2017-03-22 10:28:04', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('7417A629-9C36-4B16-B41C-B3A46B7FC089', '2017-03-22 14:40:29', '', '2017-03-22 14:40:29', '', null, '', null, '2017-03-22 14:40:29', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('749DB51A-2AF6-4651-B22A-48988389581B', '2017-03-22 09:52:23', '', '2017-03-22 09:52:23', '', null, '', null, '2017-03-22 09:52:23', '访问日志', 'Log?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('74AF625D-F82D-41F6-BD4A-09ECCDD5461F', '2017-03-22 10:27:12', '', '2017-03-22 10:27:12', '', null, '', null, '2017-03-22 10:27:12', '访问日志', 'Module/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('74ED1A0B-3D6E-4C5C-85EE-1624FB306135', '2017-03-22 16:38:45', '', '2017-03-22 16:38:45', '', null, '', null, '2017-03-22 16:38:45', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('7527A889-2A53-45BE-A554-530CAA95614E', '2017-03-22 16:39:09', '', '2017-03-22 16:39:09', '', null, '', null, '2017-03-22 16:39:09', '访问日志', 'Role/edit?id=EFB398FF-A4B4-4B78-96BB-981892E8A4C4', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('757CBF2D-F0A5-4094-B0E8-FB9EF85C8F59', '2017-03-22 13:34:04', '', '2017-03-22 13:34:04', '', null, '', null, '2017-03-22 13:34:04', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('761D394C-4302-4A6F-ABEF-D6B90B028826', '2017-03-22 22:47:43', '', '2017-03-22 22:47:43', '', null, '', null, '2017-03-22 22:47:43', '访问日志', 'Dashboard/configsort?m_atpid=54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('76246C3F-3696-4CA6-9F23-9DA1246D018E', '2017-03-22 22:58:30', '', '2017-03-22 22:58:30', '', null, '', null, '2017-03-22 22:58:30', '访问日志', 'Dashboard/index?m_atpid=m1', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('763B699A-C024-4162-9820-8BF8DFEA2C8F', '2017-03-22 09:52:36', '', '2017-03-22 09:52:36', '', null, '', null, '2017-03-22 09:52:36', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('766E4A93-02C4-432B-819D-0EAC6FC388F1', '2017-03-22 10:28:06', '', '2017-03-22 10:28:06', '', null, '', null, '2017-03-22 10:28:06', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('7681028D-AA59-40F5-8B30-3E82901F2621', '2017-03-22 09:55:09', '', '2017-03-22 09:55:09', '', null, '', null, '2017-03-22 09:55:09', '访问日志', 'Index/block?title=%E8%8F%9C%E5%8D%952.1', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('7713260C-BE3C-4A37-984B-160E2AA06282', '2017-03-22 16:37:34', '', '2017-03-22 16:37:34', '', null, '', null, '2017-03-22 16:37:34', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('77D5E293-CE76-40A7-AD58-806144E5BD04', '2017-03-22 10:22:53', '', '2017-03-22 10:22:53', '', null, '', null, '2017-03-22 10:22:53', '访问日志', 'Module/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('78A44B7F-D2B3-4EDC-8015-4194B651CD38', '2017-03-22 16:33:18', '', '2017-03-22 16:33:18', '', null, '', null, '2017-03-22 16:33:18', '访问日志', 'Dashboard/index?m_atpid=m1', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('78AF2650-C382-40F4-B4F7-1E62DB45041D', '2017-03-22 11:32:05', '', '2017-03-22 11:32:05', '', null, '', null, '2017-03-22 11:32:05', '访问日志', 'Role?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('78DCEEE5-B092-4B90-9B8B-60A11316E31C', '2017-03-22 22:49:12', '', '2017-03-22 22:49:12', '', null, '', null, '2017-03-22 22:49:12', '访问日志', 'Dashboard/configsort?m_atpid=54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('792A06B9-12A6-4363-A14D-330EBBD32A3A', '2017-03-22 22:44:25', '', '2017-03-22 22:44:25', '', null, '', null, '2017-03-22 22:44:25', '访问日志', 'Dashboard/index?m_atpid=54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('796F6AA5-2F9C-494B-8178-D633DB4F6DBD', '2017-03-22 16:38:53', '', '2017-03-22 16:38:53', '', null, '', null, '2017-03-22 16:38:53', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('7988D2AE-DAC4-4F5A-9755-ADCE2B746B00', '2017-03-22 09:45:47', '', '2017-03-22 09:45:47', '', '', '', null, '2017-03-22 09:45:47', '访问日志', 'Frame?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('798AA92E-186E-4FAC-B0B6-4C28E696F3F8', '2017-03-22 10:48:27', '', '2017-03-22 10:48:27', '', null, '', null, '2017-03-22 10:48:27', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('799F0327-6B07-4CD6-9283-01906313BE41', '2017-03-22 14:02:19', '', '2017-03-22 14:02:19', '', null, '', null, '2017-03-22 14:02:19', '访问日志', 'Table/edit?id=9A5BC5EF-B252-43C5-90FC-383B627DDCDD', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('79CB0648-D8DB-4F15-9169-D20DEA17D229', '2017-03-22 09:53:01', '', '2017-03-22 09:53:01', '', null, '', null, '2017-03-22 09:53:01', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('79DA718A-9C60-41A4-9233-67F6D0BEEFD9', '2017-03-22 22:47:42', '', '2017-03-22 22:47:42', '', null, '', null, '2017-03-22 22:47:42', '访问日志', 'Dashboard/chart1?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('7A1513B5-118C-4E9D-B56D-E6B9433E2E9E', '2017-03-22 10:28:37', '', '2017-03-22 10:28:37', '', null, '', null, '2017-03-22 10:28:37', '访问日志', 'Module/edit?id=74DCD057-9ABF-465F-964A-038C065F0B0A', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('7A16B4AF-8BCF-4521-BDAA-C0BED965B3FE', '2017-03-22 22:46:47', '', '2017-03-22 22:46:47', '', null, '', null, '2017-03-22 22:46:47', '访问日志', 'Dashboard/index?m_atpid=54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('7AAE0F0E-93F1-47CD-AF61-550EB03F6075', '2017-03-22 10:48:40', '', '2017-03-22 10:48:40', '', null, '', null, '2017-03-22 10:48:40', '访问日志', 'Module/edit?id=04464D50-956F-48FD-9B1C-A0712C74A976', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('7B0C5F66-170C-49D7-9F23-84A662393F97', '2017-03-22 16:38:07', '', '2017-03-22 16:38:07', '', null, '', null, '2017-03-22 16:38:07', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('7B1FF055-A971-423D-A5D1-60365EE9E3F0', '2017-03-22 16:38:16', '', '2017-03-22 16:38:16', '', null, '', null, '2017-03-22 16:38:16', '访问日志', 'Role/edit?id=EFB398FF-A4B4-4B78-96BB-981892E8A4C4', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('7C470627-9C69-4060-BC57-6489E0343C63', '2017-03-22 11:00:38', '', '2017-03-22 11:00:38', '', null, '', null, '2017-03-22 11:00:38', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('7C64A5DF-0189-463B-9FB6-C8D7E3246C9D', '2017-03-22 22:49:11', '', '2017-03-22 22:49:11', '', null, '', null, '2017-03-22 22:49:11', '访问日志', 'Dashboard/embedpage?m_atpid=6A38DDDB-38B4-4C82-8367-326EF35DC448', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('7C7B9954-C139-450E-A71A-62A635A61D3B', '2017-03-22 16:36:19', '', '2017-03-22 16:36:19', '', null, '', null, '2017-03-22 16:36:19', '访问日志', 'Role?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('7CACF31A-ADA7-4186-B3BD-2883C686A393', '2017-03-22 10:45:05', '', '2017-03-22 10:45:05', '', null, '', null, '2017-03-22 10:45:05', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('7CDB4892-E0DB-4CFE-9C85-1406085901F1', '2017-03-22 22:45:10', '', '2017-03-22 22:45:10', '', null, '', null, '2017-03-22 22:45:10', '访问日志', 'Dashboard/embedpage?m_atpid=6A38DDDB-38B4-4C82-8367-326EF35DC448', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('7D4D5913-F167-4888-83D9-BC3B8569EA9D', '2017-03-22 22:42:32', '', '2017-03-22 22:42:32', '', null, '', null, '2017-03-22 22:42:32', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('7D7F8713-2AEB-426A-833E-D52B900298A8', '2017-03-22 22:54:46', '', '2017-03-22 22:54:46', '', null, '', null, '2017-03-22 22:54:46', '访问日志', 'Dashboard/index?m_atpid=54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('7D92A517-BF91-49B9-943B-ABFE1F95DA53', '2017-03-22 09:52:56', '', '2017-03-22 09:52:56', '', null, '', null, '2017-03-22 09:52:56', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('7DB272D2-BEEF-4ABB-AC7F-695778F24934', '2017-03-22 11:23:17', '', '2017-03-22 11:23:17', '', null, '', null, '2017-03-22 11:23:17', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('7DFAC0A2-9D0F-472F-B152-ACC7457032DE', '2017-03-22 22:44:28', '', '2017-03-22 22:44:28', '', null, '', null, '2017-03-22 22:44:28', '访问日志', 'Dashboard/configsort?m_atpid=54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('7E4733FC-AE8C-4B81-AAFF-E7CD9E833007', '2017-03-22 13:37:51', '', '2017-03-22 13:37:51', '', null, '', null, '2017-03-22 13:37:51', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('7EAFD7F8-5E33-4F65-B637-F94394CDA736', '2017-03-22 11:15:08', '', '2017-03-22 11:15:08', '', null, '', null, '2017-03-22 11:15:08', '访问日志', 'Role?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('7EB644A6-A430-4AE6-938D-5CABBD77CDAA', '2017-03-22 13:51:50', '', '2017-03-22 13:51:50', '', null, '', null, '2017-03-22 13:51:50', '访问日志', 'Admin?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('7EE3AEF3-C6DC-4877-BE1D-BD1A042D74E4', '2017-03-22 16:36:24', '', '2017-03-22 16:36:24', '', null, '', null, '2017-03-22 16:36:24', '访问日志', 'Role/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('80400A08-7923-4DC0-83A7-AB102A5B241C', '2017-03-22 11:02:43', '', '2017-03-22 11:02:43', '', null, '', null, '2017-03-22 11:02:43', '访问日志', 'Admin/add?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('80AAD4C7-237B-4293-B16B-A88C4FE9EF97', '2017-03-22 14:40:48', '', '2017-03-22 14:40:48', '', null, '', null, '2017-03-22 14:40:48', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('80E91323-3C3F-4873-A46A-3DAA5A4EE76F', '2017-03-22 09:47:48', '', '2017-03-22 09:47:48', '', null, '', null, '2017-03-22 09:47:48', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('80F55071-FABC-49B6-985C-451EF0C22374', '2017-03-22 22:57:07', '', '2017-03-22 22:57:07', '', null, '', null, '2017-03-22 22:57:07', '访问日志', 'Dashboard/configsort?m_atpid=54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('812446EB-4C78-45BC-97A9-6831609174EC', '2017-03-22 22:42:34', '', '2017-03-22 22:42:34', '', null, '', null, '2017-03-22 22:42:34', '访问日志', 'Dashboard/chart1?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('813DF819-A77D-4133-A0D3-4BBE96DAFC3B', '2017-03-22 10:28:19', '', '2017-03-22 10:28:19', '', null, '', null, '2017-03-22 10:28:19', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('81700395-969F-4096-A350-9DAE3E039E43', '2017-03-22 22:43:02', '', '2017-03-22 22:43:02', '', null, '', null, '2017-03-22 22:43:02', '访问日志', 'Dashboard/index?m_atpid=54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('81EBFAC9-61C6-4E47-9C08-49A53611CB2C', '2017-03-22 22:42:34', '', '2017-03-22 22:42:34', '', null, '', null, '2017-03-22 22:42:34', '访问日志', 'Dashboard/embedpage?m_atpid=04464D50-956F-48FD-9B1C-A0712C74A976', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('81EE774C-3677-4C26-A40F-B32A060B3BF3', '2017-03-22 10:27:19', '', '2017-03-22 10:27:19', '', null, '', null, '2017-03-22 10:27:19', '访问日志', 'Module/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('8200A9CD-5091-409E-BD07-D7E3A24D3A48', '2017-03-22 22:41:01', '', '2017-03-22 22:41:01', '', null, '', null, '2017-03-22 22:41:01', '访问日志', 'Dashboard/index?m_atpid=54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('8304F0A1-4E42-40B5-9B13-21215F3E8C3C', '2017-03-22 14:11:51', '', '2017-03-22 14:11:51', '', null, '', null, '2017-03-22 14:11:51', '访问日志', 'Admin?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('83679A02-9CFF-470B-AE98-58325E8B9E3F', '2017-03-22 22:54:47', '', '2017-03-22 22:54:47', '', null, '', null, '2017-03-22 22:54:47', '访问日志', 'Dashboard/chart1?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('838EDEEB-F45C-485D-A563-ACD1EFDF93B9', '2017-03-22 10:27:14', '', '2017-03-22 10:27:14', '', null, '', null, '2017-03-22 10:27:14', '访问日志', 'Module/edit?id=54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('83A42BEB-4BA2-4AA1-9D7E-DC5F0368CC99', '2017-03-22 16:38:55', '', '2017-03-22 16:38:55', '', null, '', null, '2017-03-22 16:38:55', '访问日志', 'Role/edit?id=EFB398FF-A4B4-4B78-96BB-981892E8A4C4', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('83BEF6F6-3872-426E-A11C-9960EBCAC614', '2017-03-22 23:12:24', '', '2017-03-22 23:12:24', '', null, '', null, '2017-03-22 23:12:24', '访问日志', 'Frame?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('83CC7EA9-D216-4897-AFB8-F2A381B2B02F', '2017-03-22 10:45:37', '', '2017-03-22 10:45:37', '', null, '', null, '2017-03-22 10:45:37', '访问日志', 'Module/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('84088E30-1AF1-4CF6-9F77-6D00045C5762', '2017-03-22 10:45:18', '', '2017-03-22 10:45:18', '', null, '', null, '2017-03-22 10:45:18', '访问日志', 'Module?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('8492C46D-98C4-4BCE-ADBF-FB93DD2B1FDA', '2017-03-22 12:21:57', '', '2017-03-22 12:21:57', '', null, '', null, '2017-03-22 12:21:57', '访问日志', 'User?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('84EAE14B-B0FE-4A29-89BD-9E7C8F1AABA7', '2017-03-22 13:45:15', '', '2017-03-22 13:45:15', '', null, '', null, '2017-03-22 13:45:15', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('851F5CD2-95F4-4CD8-80C4-323E70D588D3', '2017-03-22 13:31:59', '', '2017-03-22 13:31:59', '', null, '', null, '2017-03-22 13:31:59', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('857387DD-4BA2-470F-AEDA-962DC11031AE', '2017-03-22 13:36:29', '', '2017-03-22 13:36:29', '', null, '', null, '2017-03-22 13:36:29', '访问日志', 'Module/edit?id=92A1299A-6E21-4C66-BE69-FAEE7D666068', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('85796831-676D-4D3D-9AE0-74E6B389C048', '2017-03-22 10:26:19', '', '2017-03-22 10:26:19', '', null, '', null, '2017-03-22 10:26:19', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('858D2D6C-AFA0-4847-BB59-9A2647567A36', '2017-03-22 12:22:01', '', '2017-03-22 12:22:01', '', null, '', null, '2017-03-22 12:22:01', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('8594FCC8-DA67-4700-BC7A-8C0E16F80E79', '2017-03-22 09:52:23', '', '2017-03-22 09:52:23', '', null, '', null, '2017-03-22 09:52:23', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('85E46FB5-AE52-4852-AABC-B395BC14695C', '2017-03-22 22:41:02', '', '2017-03-22 22:41:02', '', null, '', null, '2017-03-22 22:41:02', '访问日志', '?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('85ED4ED7-92D1-426E-A6AE-C5A871DADC84', '2017-03-22 09:53:00', '', '2017-03-22 09:53:00', '', null, '', null, '2017-03-22 09:53:00', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('85F42BA6-D6F6-4D04-8A74-7AE79342D5B7', '2017-03-22 13:31:30', '', '2017-03-22 13:31:30', '', null, '', null, '2017-03-22 13:31:30', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('86B3D9AD-6BEF-4E7E-8A67-AD67A3750E90', '2017-03-22 23:13:43', '', '2017-03-22 23:13:43', '', null, '', null, '2017-03-22 23:13:43', '访问日志', 'Dashboard/embedpage?m_atpid=04464D50-956F-48FD-9B1C-A0712C74A976', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('86E763F3-6357-47B2-938C-9FF421AFDBAF', '2017-03-22 13:26:44', '', '2017-03-22 13:26:44', '', null, '', null, '2017-03-22 13:26:44', '访问日志', 'Role?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('8744B8AC-7781-4BDE-94C9-0B05D3B3A1D6', '2017-03-22 13:34:05', '', '2017-03-22 13:34:05', '', null, '', null, '2017-03-22 13:34:05', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('877440DB-FFCE-4473-9DF4-197BEEA4D601', '2017-03-22 10:48:36', '', '2017-03-22 10:48:36', '', null, '', null, '2017-03-22 10:48:36', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('87C6B07F-8B80-4419-80E3-5CFDACCC3810', '2017-03-22 16:36:29', '', '2017-03-22 16:36:29', '', null, '', null, '2017-03-22 16:36:29', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('8813955F-A158-4CAD-B650-0F14D294CD20', '2017-03-22 13:37:34', '', '2017-03-22 13:37:34', '', null, '', null, '2017-03-22 13:37:34', '访问日志', 'Role?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('884DD837-9E49-4E9D-9750-A9C686CFF4C1', '2017-03-22 23:13:03', '', '2017-03-22 23:13:03', '', null, '', null, '2017-03-22 23:13:03', '访问日志', 'Module/add?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('88A92F3B-6D0F-4C5C-A974-44D01C601795', '2017-03-22 11:02:38', '', '2017-03-22 11:02:38', '', null, '', null, '2017-03-22 11:02:38', '访问日志', 'Dashboard/index?m_atpid=m1', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('88F45E50-DCB5-4A93-A476-33E24302CE6A', '2017-03-22 10:22:05', '', '2017-03-22 10:22:05', '', null, '', null, '2017-03-22 10:22:05', '访问日志', 'Index/Module?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('88FE7DBD-DBDD-44BE-9481-BD69F3571FFB', '2017-03-22 22:51:11', '', '2017-03-22 22:51:11', '', null, '', null, '2017-03-22 22:51:11', '访问日志', 'Dashboard/configsort?m_atpid=54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('891AC297-9D7B-4667-88BC-7DED4C4EE58C', '2017-03-22 14:11:44', '', '2017-03-22 14:11:44', '', null, '', null, '2017-03-22 14:11:44', '访问日志', 'Table/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('897B2C80-9BD1-4453-8045-9CC141B8C18B', '2017-03-22 10:23:02', '', '2017-03-22 10:23:02', '', null, '', null, '2017-03-22 10:23:02', '访问日志', 'Module/edit?id=44315C25-BDE8-4A5E-8A3F-698376F9E63E', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('897D4A06-AD35-4E38-B98B-7892281455AE', '2017-03-22 22:51:14', '', '2017-03-22 22:51:14', '', null, '', null, '2017-03-22 22:51:14', '访问日志', 'Dashboard/embedpage?m_atpid=04464D50-956F-48FD-9B1C-A0712C74A976', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('897DCEC5-C2D0-4D44-8F60-85FC958995E6', '2017-03-22 14:42:01', '', '2017-03-22 14:42:01', '', null, '', null, '2017-03-22 14:42:01', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('89911F82-740B-4B8B-B3C0-1AC780B3CF6B', '2017-03-22 10:48:16', '', '2017-03-22 10:48:16', '', null, '', null, '2017-03-22 10:48:16', '访问日志', 'Module/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('89A758E0-E9DD-4841-982A-CBDC3C6502A5', '2017-03-22 09:52:39', '', '2017-03-22 09:52:39', '', null, '', null, '2017-03-22 09:52:39', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('89B87CBA-78F9-4351-9835-0FABF1F9B0E5', '2017-03-22 16:37:02', '', '2017-03-22 16:37:02', '', null, '', null, '2017-03-22 16:37:02', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('89D87F7B-3ADC-42BD-B64A-1DC0A561D139', '2017-03-22 23:13:32', '', '2017-03-22 23:13:32', '', null, '', null, '2017-03-22 23:13:32', '访问日志', 'Dashboard/embedpage?m_atpid=C9280983-B1F6-4191-96DB-5BCEFDD088C8', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('89EA3A43-46E0-4941-B6E7-80C14738567F', '2017-03-22 11:15:23', '', '2017-03-22 11:15:23', '', null, '', null, '2017-03-22 11:15:23', '访问日志', 'Role?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('8A3269E8-315F-4EB6-B823-FA58B04281B3', '2017-03-22 22:56:11', '', '2017-03-22 22:56:11', '', null, '', null, '2017-03-22 22:56:11', '访问日志', 'Module/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('8A37D575-F539-415C-9578-C833B73EC473', '2017-03-22 11:14:31', '', '2017-03-22 11:14:31', '', null, '', null, '2017-03-22 11:14:31', '访问日志', 'Role/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('8A67D9C3-9A52-4685-9FE3-C66EC7871985', '2017-03-22 22:56:31', '', '2017-03-22 22:56:31', '', null, '', null, '2017-03-22 22:56:31', '访问日志', 'Module/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('8ABA5F29-0B5C-4087-9F99-62659B895071', '2017-03-22 16:36:55', '', '2017-03-22 16:36:55', '', null, '', null, '2017-03-22 16:36:55', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('8ACC7CAD-1A93-4610-B771-B2771A4E77B2', '2017-03-22 13:40:00', '', '2017-03-22 13:40:00', '', null, '', null, '2017-03-22 13:40:00', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('8AF770DB-5B96-45F6-BEDE-4E8529CE9F32', '2017-03-22 09:49:36', '', '2017-03-22 09:49:36', '', null, '', null, '2017-03-22 09:49:36', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('8B18292B-2718-48AC-80C1-006A33C31A5D', '2017-03-22 22:43:03', '', '2017-03-22 22:43:03', '', null, '', null, '2017-03-22 22:43:03', '访问日志', 'Dashboard/chart1?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('8B24D289-AEE9-4C89-8461-E522A48FFDA4', '2017-03-22 22:51:14', '', '2017-03-22 22:51:14', '', null, '', null, '2017-03-22 22:51:14', '访问日志', 'Dashboard/configsortsubmit?m_atpid=54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('8B5BD62B-6ACB-42AD-97B3-2A732FF4C461', '2017-03-22 10:48:36', '', '2017-03-22 10:48:36', '', null, '', null, '2017-03-22 10:48:36', '访问日志', 'Module/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('8BEDC072-362B-41FC-83AC-13EF88C18E4F', '2017-03-22 16:37:51', '', '2017-03-22 16:37:51', '', null, '', null, '2017-03-22 16:37:51', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('8C6FE67F-1BC8-463E-A128-91A95CCAF5A1', '2017-03-22 13:45:22', '', '2017-03-22 13:45:22', '', null, '', null, '2017-03-22 13:45:22', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('8C8E1B5B-77B6-438E-9034-80D6F5B43906', '2017-03-22 14:40:40', '', '2017-03-22 14:40:40', '', null, '', null, '2017-03-22 14:40:40', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('8CE42088-734D-4334-93ED-A619619D56B5', '2017-03-22 13:54:39', '', '2017-03-22 13:54:39', '', null, '', null, '2017-03-22 13:54:39', '访问日志', 'User/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('8CED9245-7A3D-4B49-8E97-8127C05CC52E', '2017-03-22 13:40:47', '', '2017-03-22 13:40:47', '', null, '', null, '2017-03-22 13:40:47', '访问日志', 'Role/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('8D537BE6-C9C9-4ED2-85DE-8F5AC567E350', '2017-03-22 14:35:35', '', '2017-03-22 14:35:35', '', null, '', null, '2017-03-22 14:35:35', '访问日志', 'Role?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('8D8B1150-D07F-4575-A1DB-5F711F454237', '2017-03-22 09:55:37', '', '2017-03-22 09:55:37', '', null, '', null, '2017-03-22 09:55:37', '访问日志', 'Log?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('8DAF1A15-F829-4F35-B9D5-413BB88BAA0C', '2017-03-22 09:47:46', '', '2017-03-22 09:47:46', '', null, '', null, '2017-03-22 09:47:46', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('8E468BCE-FD2B-48F5-B2FC-846FAEBB6F50', '2017-03-22 16:36:48', '', '2017-03-22 16:36:48', '', null, '', null, '2017-03-22 16:36:48', '访问日志', 'Role/edit?id=7E46C663-EEC9-4CFF-866F-544334789B98', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('8ED09048-21E3-4ECF-99E1-203A6E497866', '2017-03-22 16:37:35', '', '2017-03-22 16:37:35', '', null, '', null, '2017-03-22 16:37:35', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('8F18B452-6B98-4305-88A5-A854C040F08F', '2017-03-22 10:49:50', '', '2017-03-22 10:49:50', '', null, '', null, '2017-03-22 10:49:50', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('8F7639EB-DDF8-4DAD-B73E-7FF3DE0C501D', '2017-03-22 13:40:04', '', '2017-03-22 13:40:04', '', null, '', null, '2017-03-22 13:40:04', '访问日志', 'Role/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('8FCDE5DF-933B-4382-B5A9-07C67A78CE94', '2017-03-22 12:20:43', '', '2017-03-22 12:20:43', '', null, '', null, '2017-03-22 12:20:43', '访问日志', 'Index/block?title=%E8%81%94%E7%B3%BB%E6%88%91%E4%BB%AC', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('902E0BFE-CCA0-416B-8BAF-D8FFE31A9FD6', '2017-03-22 16:36:54', '', '2017-03-22 16:36:54', '', null, '', null, '2017-03-22 16:36:54', '访问日志', 'Role/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('9048E239-97E5-4CF6-969F-41FFAAD0E473', '2017-03-22 12:20:49', '', '2017-03-22 12:20:49', '', null, '', null, '2017-03-22 12:20:49', '访问日志', 'Index/block?title=%E4%B8%AA%E4%BA%BA%E8%B5%84%E6%96%99', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('906B8993-450A-45A9-A335-C0A76C28B730', '2017-03-22 11:22:36', '', '2017-03-22 11:22:36', '', null, '', null, '2017-03-22 11:22:36', '访问日志', 'User/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('90A573A9-C21A-4B67-8DE1-166DD4633D4A', '2017-03-22 14:38:08', '', '2017-03-22 14:38:08', '', null, '', null, '2017-03-22 14:38:08', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('90AE32AE-D22E-4CE4-86E0-9DC664C281C1', '2017-03-22 22:56:19', '', '2017-03-22 22:56:19', '', null, '', null, '2017-03-22 22:56:19', '访问日志', 'Dashboard/embedpage?m_atpid=6A38DDDB-38B4-4C82-8367-326EF35DC448', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('9147F9C8-60E7-4D27-B98B-C4397F9D40FF', '2017-03-22 13:45:11', '', '2017-03-22 13:45:11', '', null, '', null, '2017-03-22 13:45:11', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('91DAC622-F5FE-4B6D-B401-5DE4EBFECCCD', '2017-03-22 11:23:18', '', '2017-03-22 11:23:18', '', null, '', null, '2017-03-22 11:23:18', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('9214F6C5-5AAE-40FB-B9D4-7CB72AA5AE87', '2017-03-22 10:56:34', '', '2017-03-22 10:56:34', '', null, '', null, '2017-03-22 10:56:34', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('9244C7D6-DD38-4ADE-96E1-1CACF28C9C70', '2017-03-22 13:36:40', '', '2017-03-22 13:36:40', '', null, '', null, '2017-03-22 13:36:40', '访问日志', 'Module/edit?id=92A1299A-6E21-4C66-BE69-FAEE7D666068', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('92535A1B-234B-4F98-89B7-BCFE616C1014', '2017-03-22 09:49:47', '', '2017-03-22 09:49:47', '', null, '', null, '2017-03-22 09:49:47', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('92F86287-2DD1-417A-BE1F-8B4C7CA2C446', '2017-03-22 10:26:56', '', '2017-03-22 10:26:56', '', null, '', null, '2017-03-22 10:26:56', '访问日志', 'Module/edit?id=54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('93816263-073B-4155-B6A6-E87A4A1CE296', '2017-03-22 23:11:23', '', '2017-03-22 23:11:23', '', null, '', null, '2017-03-22 23:11:23', '访问日志', 'Frame/welcome?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('93B35813-6CA7-4AFA-82C4-AEAA5B4F1D23', '2017-03-22 11:15:35', '', '2017-03-22 11:15:35', '', null, '', null, '2017-03-22 11:15:35', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('94047137-5910-4EB1-B7DF-43EDC749B339', '2017-03-22 14:40:32', '', '2017-03-22 14:40:32', '', null, '', null, '2017-03-22 14:40:32', '访问日志', 'Role/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('9427CE94-64DF-41A1-8AD2-56CF53545FF5', '2017-03-22 16:38:53', '', '2017-03-22 16:38:53', '', null, '', null, '2017-03-22 16:38:53', '访问日志', 'Role?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('946D5E76-3DCE-4CB5-B62B-F48AC5013C47', '2017-03-22 22:45:10', '', '2017-03-22 22:45:10', '', null, '', null, '2017-03-22 22:45:10', '访问日志', 'Dashboard/embedpage?m_atpid=04464D50-956F-48FD-9B1C-A0712C74A976', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('947DDE0F-6579-4CF5-8E04-790824376D8B', '2017-03-22 22:47:42', '', '2017-03-22 22:47:42', '', null, '', null, '2017-03-22 22:47:42', '访问日志', 'Dashboard/embedpage?m_atpid=6A38DDDB-38B4-4C82-8367-326EF35DC448', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('94A69C3B-0A0A-4C66-847E-D8D06C70EC80', '2017-03-22 13:56:34', '', '2017-03-22 13:56:34', '', null, '', null, '2017-03-22 13:56:34', '访问日志', 'User/edit?id=F8087DF6-8BB3-4DAA-A49F-ECBBB01C9336', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('94AEB0C6-F299-4889-804F-91E00DBCA130', '2017-03-22 22:57:05', '', '2017-03-22 22:57:05', '', null, '', null, '2017-03-22 22:57:05', '访问日志', 'Dashboard/index?m_atpid=54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('94C9FA2E-4E7D-4265-88B1-F32F71C46E8C', '2017-03-22 16:37:19', '', '2017-03-22 16:37:19', '', null, '', null, '2017-03-22 16:37:19', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('952DDB5B-11D8-45B8-8FFD-9DFB2CB44382', '2017-03-22 10:22:23', '', '2017-03-22 10:22:23', '', null, '', null, '2017-03-22 10:22:23', '访问日志', 'Frame?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('95736A11-175C-4BDA-930F-493CAA807149', '2017-03-22 22:21:42', '', '2017-03-22 22:21:42', '', null, '', null, '2017-03-22 22:21:42', '访问日志', 'Role/edit?id=EFB398FF-A4B4-4B78-96BB-981892E8A4C4', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('9579664A-25FE-4565-AFA7-1B1F5E93A296', '2017-03-22 10:28:44', '', '2017-03-22 10:28:44', '', null, '', null, '2017-03-22 10:28:44', '访问日志', 'Module/edit?id=54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('95AE9F95-422C-4275-9E1A-18C24E4FB417', '2017-03-22 16:36:25', '', '2017-03-22 16:36:25', '', null, '', null, '2017-03-22 16:36:25', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('9633D9B4-CAB5-4CCC-9440-341E90C3C9E8', '2017-03-22 22:49:15', '', '2017-03-22 22:49:15', '', null, '', null, '2017-03-22 22:49:15', '访问日志', 'Dashboard/configsortsubmit?m_atpid=54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('96524CAB-3414-45C6-9AE8-982291BA6569', '2017-03-22 14:16:18', '', '2017-03-22 14:16:18', '', null, '', null, '2017-03-22 14:16:18', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('966E0B94-7B8B-4C14-934F-B778F36265CB', '2017-03-22 10:47:42', '', '2017-03-22 10:47:42', '', null, '', null, '2017-03-22 10:47:42', '访问日志', 'Module/add?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('96717CB1-ACDD-4CF0-80C1-D9D720771B20', '2017-03-22 23:13:43', '', '2017-03-22 23:13:43', '', null, '', null, '2017-03-22 23:13:43', '访问日志', 'Dashboard/chart1?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('96FF704A-F951-4510-81F6-E477F3E42443', '2017-03-22 13:26:44', '', '2017-03-22 13:26:44', '', null, '', null, '2017-03-22 13:26:44', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('9738C54A-CD1D-4B7D-9E2F-BE92E4027AD9', '2017-03-22 22:56:12', '', '2017-03-22 22:56:12', '', null, '', null, '2017-03-22 22:56:12', '访问日志', 'Module/edit?id=6A38DDDB-38B4-4C82-8367-326EF35DC448', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('974D56A6-6F9D-4659-8CB2-D60C0F55D2E4', '2017-03-22 11:15:46', '', '2017-03-22 11:15:46', '', null, '', null, '2017-03-22 11:15:46', '访问日志', 'Role/del?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('9754FF2C-E58F-47BE-B905-306B574BA9AC', '2017-03-22 22:54:59', '', '2017-03-22 22:54:59', '', null, '', null, '2017-03-22 22:54:59', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('97B02A01-28DF-435F-BF5B-D6D6D1A4DAB8', '2017-03-22 16:40:01', '', '2017-03-22 16:40:01', '', null, '', null, '2017-03-22 16:40:01', '访问日志', 'Dashboard/index?m_atpid=m1', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('97FD5847-F2F1-4E05-AF06-AC53B1AF4E5A', '2017-03-22 11:22:52', '', '2017-03-22 11:22:52', '', null, '', null, '2017-03-22 11:22:52', '访问日志', 'User/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('981D2117-0535-40A3-B921-B96193416B74', '2017-03-22 22:56:19', '', '2017-03-22 22:56:19', '', null, '', null, '2017-03-22 22:56:19', '访问日志', 'Dashboard/chart1?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('9821CEAC-4987-476B-9C6F-E17FD029BE6F', '2017-03-22 09:55:37', '', '2017-03-22 09:55:37', '', null, '', null, '2017-03-22 09:55:37', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('98390BD7-9D31-4222-B4ED-227E1972F4F6', '2017-03-22 16:37:24', '', '2017-03-22 16:37:24', '', null, '', null, '2017-03-22 16:37:24', '访问日志', 'Role/edit?id=7E46C663-EEC9-4CFF-866F-544334789B98', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('986D648A-4AFF-49F9-A35F-4542A4A3E5B0', '2017-03-22 13:36:54', '', '2017-03-22 13:36:54', '', null, '', null, '2017-03-22 13:36:54', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('98B39DD6-2113-422B-A3A7-106C9FC55363', '2017-03-22 11:14:59', '', '2017-03-22 11:14:59', '', null, '', null, '2017-03-22 11:14:59', '访问日志', 'Role/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('99055AFF-5336-44A9-B501-C09D76BE3ED2', '2017-03-22 22:57:03', '', '2017-03-22 22:57:03', '', null, '', null, '2017-03-22 22:57:03', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('99417547-14D0-410C-B754-2054B2B2AD6E', '2017-03-22 14:40:23', '', '2017-03-22 14:40:23', '', null, '', null, '2017-03-22 14:40:23', '访问日志', 'Role?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('99452713-5DED-4771-9402-71657D61C45A', '2017-03-22 14:40:41', '', '2017-03-22 14:40:41', '', null, '', null, '2017-03-22 14:40:41', '访问日志', 'Role/edit?id=7E46C663-EEC9-4CFF-866F-544334789B98', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('99D0F0FF-8FD4-4B5C-998F-EE3C9F0B794B', '2017-03-22 11:15:34', '', '2017-03-22 11:15:34', '', null, '', null, '2017-03-22 11:15:34', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('9A394BD3-2F08-4ECB-9F18-21DA326AAA9C', '2017-03-22 16:35:46', '', '2017-03-22 16:35:46', '', null, '', null, '2017-03-22 16:35:46', '访问日志', 'Role?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('9A44A0E4-48CC-4FD3-B89F-A2E9FF0B0EB5', '2017-03-22 22:55:59', '', '2017-03-22 22:55:59', '', null, '', null, '2017-03-22 22:55:59', '访问日志', 'Dashboard/embedpage?m_atpid=6A38DDDB-38B4-4C82-8367-326EF35DC448', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('9A4E87FC-A8BA-4592-812C-5CCA7305D146', '2017-03-22 22:51:14', '', '2017-03-22 22:51:14', '', null, '', null, '2017-03-22 22:51:14', '访问日志', 'Dashboard/chart1?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('9A5DADBD-04B6-4875-BF9D-1B7321F73591', '2017-03-22 11:15:57', '', '2017-03-22 11:15:57', '', null, '', null, '2017-03-22 11:15:57', '访问日志', 'Role/edit?id=7E46C663-EEC9-4CFF-866F-544334789B98', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('9A64184E-B183-4190-AEB2-771777AC4737', '2017-03-22 14:05:07', '', '2017-03-22 14:05:07', '', null, '', null, '2017-03-22 14:05:07', '访问日志', 'Dashboard/index?m_atpid=m1', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('9A718496-FC18-4780-BC22-66BFA6231C6E', '2017-03-22 09:53:40', '', '2017-03-22 09:53:40', '', null, '', null, '2017-03-22 09:53:40', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('9AB5BBCF-6B33-4332-9807-355FA41DF902', '2017-03-22 13:45:28', '', '2017-03-22 13:45:28', '', null, '', null, '2017-03-22 13:45:28', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('9ABBFE7C-A497-4F76-99EC-C607E0412EDD', '2017-03-22 22:31:40', '', '2017-03-22 22:31:40', '', null, '', null, '2017-03-22 22:31:40', '访问日志', 'User/edit?id=F8087DF6-8BB3-4DAA-A49F-ECBBB01C9336', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('9B078523-4C23-4CA0-B72D-E01FD398B4D3', '2017-03-22 10:57:15', '', '2017-03-22 10:57:15', '', null, '', null, '2017-03-22 10:57:15', '访问日志', 'Table/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('9B89924C-0F5A-49F0-9787-2408FA8ED911', '2017-03-22 10:47:38', '', '2017-03-22 10:47:38', '', null, '', null, '2017-03-22 10:47:38', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('9B92A9B6-B8CB-4B40-B9F3-BA90EE466DFF', '2017-03-22 13:54:30', '', '2017-03-22 13:54:30', '', null, '', null, '2017-03-22 13:54:30', '访问日志', 'Module/edit?id=54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('9BB8DD58-A8B2-4CE2-AEB2-5B0C74689BAB', '2017-03-22 14:40:40', '', '2017-03-22 14:40:40', '', null, '', null, '2017-03-22 14:40:40', '访问日志', 'Role/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('9BE297A9-8314-47EC-A910-277B42896955', '2017-03-22 11:15:12', '', '2017-03-22 11:15:12', '', null, '', null, '2017-03-22 11:15:12', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('9C126FD1-8AA6-413D-9CD6-FAB029FEBF27', '2017-03-22 22:32:48', '', '2017-03-22 22:32:48', '', null, '', null, '2017-03-22 22:32:48', '访问日志', 'Dashboard/index?m_atpid=m1', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('9C1937AD-BF30-4403-BE7D-A0454D6F3B73', '2017-03-22 09:46:08', '', '2017-03-22 09:46:08', '', '', '', null, '2017-03-22 09:46:08', '访问日志', 'Log?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('9C48237F-9BE3-4FAC-8AB4-6E2F702950DF', '2017-03-22 16:39:46', '', '2017-03-22 16:39:46', '', null, '', null, '2017-03-22 16:39:46', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('9C6E841F-1270-4661-9A8D-D2DDA667BEE5', '2017-03-22 09:52:58', '', '2017-03-22 09:52:58', '', null, '', null, '2017-03-22 09:52:58', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('9C85E6EA-3FDB-439E-BB4A-B1C9B9A915D9', '2017-03-22 11:23:23', '', '2017-03-22 11:23:23', '', null, '', null, '2017-03-22 11:23:23', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('9CC9AA39-47AC-4198-A41E-C87246489104', '2017-03-22 10:26:19', '', '2017-03-22 10:26:19', '', null, '', null, '2017-03-22 10:26:19', '访问日志', 'Module/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('9CD636E6-1FB8-4BB8-A9C3-7D7CB38799CD', '2017-03-22 09:52:49', '', '2017-03-22 09:52:49', '', null, '', null, '2017-03-22 09:52:49', '访问日志', 'Log?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('9D14BF98-E9A2-4010-8416-EA050685A87D', '2017-03-22 10:47:02', '', '2017-03-22 10:47:02', '', null, '', null, '2017-03-22 10:47:02', '访问日志', 'Module?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('9D27655B-117C-422D-B338-FACB3299C38B', '2017-03-22 22:56:39', '', '2017-03-22 22:56:39', '', null, '', null, '2017-03-22 22:56:39', '访问日志', 'Dashboard/embedpage?m_atpid=6A38DDDB-38B4-4C82-8367-326EF35DC448', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('9D3C5A58-51FD-46DE-A66D-387B0080B440', '2017-03-22 09:47:59', '', '2017-03-22 09:47:59', '', null, '', null, '2017-03-22 09:47:59', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('9E925B26-6C2F-465F-9746-4F07A0A88866', '2017-03-22 11:23:22', '', '2017-03-22 11:23:22', '', null, '', null, '2017-03-22 11:23:22', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('9E92D14D-F3E5-4010-8CCF-8505ED3ED095', '2017-03-22 13:26:17', '', '2017-03-22 13:26:17', '', null, '', null, '2017-03-22 13:26:17', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('9EAD15D8-16D2-4751-9EA5-E7C7C4FA5C39', '2017-03-22 10:49:55', '', '2017-03-22 10:49:55', '', null, '', null, '2017-03-22 10:49:55', '访问日志', 'Module?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('9EB415AC-4692-40B1-B7B1-D827A9713426', '2017-03-22 22:56:04', '', '2017-03-22 22:56:04', '', null, '', null, '2017-03-22 22:56:04', '访问日志', 'Module/edit?id=04464D50-956F-48FD-9B1C-A0712C74A976', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('9F0B3BFB-F746-4151-A7B5-4B25DD88A995', '2017-03-22 13:54:39', '', '2017-03-22 13:54:39', '', null, '', null, '2017-03-22 13:54:39', '访问日志', 'User?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('9F3410BD-271C-41EC-8087-9FED9A5D18FF', '2017-03-22 10:56:57', '', '2017-03-22 10:56:57', '', null, '', null, '2017-03-22 10:56:57', '访问日志', 'Dashboard/index?m_atpid=m1', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('9F7002CE-C740-49C8-A29F-90DE89697582', '2017-03-22 11:21:15', '', '2017-03-22 11:21:15', '', null, '', null, '2017-03-22 11:21:15', '访问日志', 'User/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('A09D1303-B1DF-4716-A1F2-84911959D4E3', '2017-03-22 11:22:36', '', '2017-03-22 11:22:36', '', null, '', null, '2017-03-22 11:22:36', '访问日志', 'User/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('A0A4A9E5-35B2-4CFB-B906-583C18AA3ECD', '2017-03-22 16:37:02', '', '2017-03-22 16:37:02', '', null, '', null, '2017-03-22 16:37:02', '访问日志', 'Role/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('A0BDE1CD-2285-4BE5-B4A7-EC1DC1CCE514', '2017-03-22 13:27:28', '', '2017-03-22 13:27:28', '', null, '', null, '2017-03-22 13:27:28', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('A0E085AC-E69E-4D7B-9483-227F6C2967B0', '2017-03-22 22:21:33', '', '2017-03-22 22:21:33', '', null, '', null, '2017-03-22 22:21:33', '访问日志', 'Dashboard/index?m_atpid=m1', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('A10AAABC-0EEA-4564-8418-992AE10FE44B', '2017-03-22 10:57:15', '', '2017-03-22 10:57:15', '', null, '', null, '2017-03-22 10:57:15', '访问日志', 'Table/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('A11A9CFE-B0B2-4299-8ED2-D3512A3BFB5F', '2017-03-22 09:52:43', '', '2017-03-22 09:52:43', '', null, '', null, '2017-03-22 09:52:43', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('A13B47BC-54D3-4A2D-B0D4-D52852D26ADA', '2017-03-22 22:56:59', '', '2017-03-22 22:56:59', '', null, '', null, '2017-03-22 22:56:59', '访问日志', 'Module/edit?id=04464D50-956F-48FD-9B1C-A0712C74A976', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('A1412CB5-09CE-4D8F-854E-89173B24B89C', '2017-03-22 11:22:29', '', '2017-03-22 11:22:29', '', null, '', null, '2017-03-22 11:22:29', '访问日志', 'User/add?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('A156FCD7-1DE6-40C3-8ECF-5B038532A338', '2017-03-22 22:49:11', '', '2017-03-22 22:49:11', '', null, '', null, '2017-03-22 22:49:11', '访问日志', 'Dashboard/index?m_atpid=54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('A1800E21-2D2C-41A6-9468-1E1B21C67463', '2017-03-22 14:00:04', '', '2017-03-22 14:00:04', '', null, '', null, '2017-03-22 14:00:04', '访问日志', 'Dashboard/index?m_atpid=m1', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('A1ADE7D5-E1D1-4B7D-9E59-E70D084A87C6', '2017-03-22 22:46:47', '', '2017-03-22 22:46:47', '', null, '', null, '2017-03-22 22:46:47', '访问日志', 'Dashboard/embedpage?m_atpid=04464D50-956F-48FD-9B1C-A0712C74A976', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('A1E9C479-F154-4897-B318-8ED03C464AB6', '2017-03-22 13:11:16', '', '2017-03-22 13:11:16', '', null, '', null, '2017-03-22 13:11:16', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('A22E6EC4-4834-4D7E-AC97-78688CC8CCDE', '2017-03-22 11:14:53', '', '2017-03-22 11:14:53', '', null, '', null, '2017-03-22 11:14:53', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('A3226EEF-9D36-47FF-BBFE-7DA584D03D89', '2017-03-22 16:37:30', '', '2017-03-22 16:37:30', '', null, '', null, '2017-03-22 16:37:30', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('A41D8860-A9CD-41A4-A5E6-566C04D82B5E', '2017-03-22 11:22:28', '', '2017-03-22 11:22:28', '', null, '', null, '2017-03-22 11:22:28', '访问日志', 'User/del?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('A43CE093-9950-48BC-B4E7-D1E1C0EFBB63', '2017-03-22 11:23:33', '', '2017-03-22 11:23:33', '', null, '', null, '2017-03-22 11:23:33', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('A472D34D-604D-4E58-BA96-6CF4212DF26B', '2017-03-22 22:35:53', '', '2017-03-22 22:35:53', '', null, '', null, '2017-03-22 22:35:53', '访问日志', 'Dashboard/index?m_atpid=m1', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('A4B5976A-C5C2-4A44-9487-9559C98D3E9D', '2017-03-22 13:37:09', '', '2017-03-22 13:37:09', '', null, '', null, '2017-03-22 13:37:09', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('A521299B-83FC-4FBF-9B92-D7CF514AA301', '2017-03-22 09:53:48', '', '2017-03-22 09:53:48', '', null, '', null, '2017-03-22 09:53:48', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('A5270E76-0411-4527-8ADB-8C0EE4B27A57', '2017-03-22 16:37:18', '', '2017-03-22 16:37:18', '', null, '', null, '2017-03-22 16:37:18', '访问日志', 'Role/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('A5ED48C0-1986-47F5-AF18-183A68FB8145', '2017-03-22 14:37:34', '', '2017-03-22 14:37:34', '', null, '', null, '2017-03-22 14:37:34', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('A60F51A4-05FC-4546-A0F7-0B5BD2683B23', '2017-03-22 10:55:19', '', '2017-03-22 10:55:19', '', null, '', null, '2017-03-22 10:55:19', '访问日志', 'Table/edit?id=9A5BC5EF-B252-43C5-90FC-383B627DDCDD', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('A65BF821-E216-4C5C-8FC1-D90FC6874C10', '2017-03-22 13:27:42', '', '2017-03-22 13:27:42', '', null, '', null, '2017-03-22 13:27:42', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('A660EB45-E785-413A-8057-B582E2388629', '2017-03-22 23:10:34', '', '2017-03-22 23:10:34', '', null, '', null, '2017-03-22 23:10:34', '访问日志', 'Frame?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('A68A6067-09DA-483F-9C7B-E1E18A980B27', '2017-03-22 14:38:09', '', '2017-03-22 14:38:09', '', null, '', null, '2017-03-22 14:38:09', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('A68EC0D0-ABA0-4092-889F-B5E3D9D296AF', '2017-03-22 13:26:45', '', '2017-03-22 13:26:45', '', null, '', null, '2017-03-22 13:26:45', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('A6A06EBA-72E4-4A11-96B6-2058FB763448', '2017-03-22 13:40:22', '', '2017-03-22 13:40:22', '', null, '', null, '2017-03-22 13:40:22', '访问日志', 'Role/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('A6DE19D1-EAE2-4522-881A-C41B21502E3C', '2017-03-22 09:52:49', '', '2017-03-22 09:52:49', '', null, '', null, '2017-03-22 09:52:49', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('A71DF6B3-528D-4039-AC14-B842EFD445B9', '2017-03-22 11:15:11', '', '2017-03-22 11:15:11', '', null, '', null, '2017-03-22 11:15:11', '访问日志', 'Role/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('A753CC5B-FB4D-45A1-9EA9-B958B7041C00', '2017-03-22 11:02:59', '', '2017-03-22 11:02:59', '', null, '', null, '2017-03-22 11:02:59', '访问日志', 'Admin/add?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('A7DADA26-3BB4-45FB-9445-244C3432B527', '2017-03-22 10:45:37', '', '2017-03-22 10:45:37', '', null, '', null, '2017-03-22 10:45:37', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('A88DD2BF-A4D9-411B-A275-DCA10ED92AAD', '2017-03-22 22:55:03', '', '2017-03-22 22:55:03', '', null, '', null, '2017-03-22 22:55:03', '访问日志', 'Dashboard/index?m_atpid=54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('A90B13EA-8043-49CD-88F8-B7E7BD992677', '2017-03-22 11:15:32', '', '2017-03-22 11:15:32', '', null, '', null, '2017-03-22 11:15:32', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('A9159A77-7A10-4AF8-960D-2D4FE22D0956', '2017-03-22 22:28:17', '', '2017-03-22 22:28:17', '', null, '', null, '2017-03-22 22:28:17', '访问日志', 'User/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('A9CA5E82-CA35-4807-ABAA-27CCA932E476', '2017-03-22 22:56:00', '', '2017-03-22 22:56:00', '', null, '', null, '2017-03-22 22:56:00', '访问日志', 'Dashboard/chart1?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('AA901C9A-B391-4055-A994-FD9B9A9A32BB', '2017-03-22 10:45:18', '', '2017-03-22 10:45:18', '', null, '', null, '2017-03-22 10:45:18', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('AB352F7E-7AB5-45F4-98C3-5FFA91A24F63', '2017-03-22 13:40:18', '', '2017-03-22 13:40:18', '', null, '', null, '2017-03-22 13:40:18', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('AB662372-D531-4B88-A304-85E5365C0E03', '2017-03-22 22:56:27', '', '2017-03-22 22:56:27', '', null, '', null, '2017-03-22 22:56:27', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('ABC69788-C0BE-41AC-9D44-B78ED3911EE3', '2017-03-22 13:31:31', '', '2017-03-22 13:31:31', '', null, '', null, '2017-03-22 13:31:31', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('AC0445FB-145E-419E-ACF1-7CEB15DBFE90', '2017-03-22 11:14:31', '', '2017-03-22 11:14:31', '', null, '', null, '2017-03-22 11:14:31', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('AC4BFDB1-5E8D-433E-AEE9-939C0288809A', '2017-03-22 09:54:58', '', '2017-03-22 09:54:58', '', null, '', null, '2017-03-22 09:54:58', '访问日志', 'Index/block?title=%E8%8F%9C%E5%8D%952.3', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('AC7199C5-8F8F-463D-8C57-5B27D89E4C84', '2017-03-22 11:22:10', '', '2017-03-22 11:22:10', '', null, '', null, '2017-03-22 11:22:10', '访问日志', 'User/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('ACC56184-9D39-4F98-B879-AC64D34ADE9D', '2017-03-22 14:00:37', '', '2017-03-22 14:00:37', '', null, '', null, '2017-03-22 14:00:37', '访问日志', 'Table/edit?id=9A5BC5EF-B252-43C5-90FC-383B627DDCDD', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('ACD62E54-F723-401F-96B8-54B8B287D1E9', '2017-03-22 16:36:35', '', '2017-03-22 16:36:35', '', null, '', null, '2017-03-22 16:36:35', '访问日志', 'Role/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('ACE41337-E115-42D4-ACB9-7DFFA766ACD1', '2017-03-22 22:56:31', '', '2017-03-22 22:56:31', '', null, '', null, '2017-03-22 22:56:31', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('AD13D253-21C8-4D0B-8EF7-54C372200672', '2017-03-22 10:47:22', '', '2017-03-22 10:47:22', '', null, '', null, '2017-03-22 10:47:22', '访问日志', 'Module/edit?id=54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('AD418150-A12A-442F-96F1-EEBEF67A9CC6', '2017-03-22 13:40:44', '', '2017-03-22 13:40:44', '', null, '', null, '2017-03-22 13:40:44', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('ADE1D2D9-5B76-4A86-BABD-4E353B6C1662', '2017-03-22 22:21:30', '', '2017-03-22 22:21:30', '', null, '', null, '2017-03-22 22:21:30', '访问日志', 'Login?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('ADED8DAA-09DF-40F2-B6C4-74F621A6D523', '2017-03-22 11:23:19', '', '2017-03-22 11:23:19', '', null, '', null, '2017-03-22 11:23:19', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('AE3C2C0F-DEA1-48FC-AE97-18ECDFF34E64', '2017-03-22 14:23:43', '', '2017-03-22 14:23:43', '', null, '', null, '2017-03-22 14:23:43', '访问日志', 'Admin/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('AE6A91FE-D0B3-4F23-868B-4DBFA9D1D587', '2017-03-22 11:23:01', '', '2017-03-22 11:23:01', '', null, '', null, '2017-03-22 11:23:01', '访问日志', 'User/del?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('AEE6F9EE-1E55-433E-803F-07079651AABE', '2017-03-22 14:16:20', '', '2017-03-22 14:16:20', '', null, '', null, '2017-03-22 14:16:20', '访问日志', 'User?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('AEEDB470-38C0-4510-87E0-0E6ABFF3E507', '2017-03-22 13:44:42', '', '2017-03-22 13:44:42', '', null, '', null, '2017-03-22 13:44:42', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('AF4349E3-BD63-4363-A385-E377B8E62EDE', '2017-03-22 11:23:25', '', '2017-03-22 11:23:25', '', null, '', null, '2017-03-22 11:23:25', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('AF618EC2-B3A8-40A6-8317-18CB65898082', '2017-03-22 22:41:35', '', '2017-03-22 22:41:35', '', null, '', null, '2017-03-22 22:41:35', '访问日志', 'Module?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('AF650EDD-4633-46AE-9861-129DF1043A04', '2017-03-22 09:47:40', '', '2017-03-22 09:47:40', '', null, '', null, '2017-03-22 09:47:40', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('AF81EECE-7F35-4B3F-9CCA-04E0D50B9279', '2017-03-22 13:45:23', '', '2017-03-22 13:45:23', '', null, '', null, '2017-03-22 13:45:23', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('AFB58CF5-167C-45A0-B848-2988E46F0FA0', '2017-03-22 11:15:51', '', '2017-03-22 11:15:51', '', null, '', null, '2017-03-22 11:15:51', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('AFBD9624-4AE2-46C8-94CB-09F938BF0171', '2017-03-22 22:28:01', '', '2017-03-22 22:28:01', '', null, '', null, '2017-03-22 22:28:01', '访问日志', 'User?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('AFFDD00E-838D-4259-8B39-98324C8461B3', '2017-03-22 10:27:04', '', '2017-03-22 10:27:04', '', null, '', null, '2017-03-22 10:27:04', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('B036D6C8-B819-4643-92B5-677FB321B79A', '2017-03-22 16:38:01', '', '2017-03-22 16:38:01', '', null, '', null, '2017-03-22 16:38:01', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('B060B1F0-60F2-4247-A588-04237F29E976', '2017-03-22 11:22:06', '', '2017-03-22 11:22:06', '', null, '', null, '2017-03-22 11:22:06', '访问日志', 'User?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('B0A9463C-52BE-4EF7-A872-CD226EEB0DEC', '2017-03-22 11:15:53', '', '2017-03-22 11:15:53', '', null, '', null, '2017-03-22 11:15:53', '访问日志', 'Role/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('B231EDC0-27BB-4116-9485-DAAF2DD87338', '2017-03-22 11:03:13', '', '2017-03-22 11:03:13', '', null, '', null, '2017-03-22 11:03:13', '访问日志', 'Admin/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('B24B1D6C-465A-404D-BF04-602D26C2ED01', '2017-03-22 13:36:36', '', '2017-03-22 13:36:36', '', null, '', null, '2017-03-22 13:36:36', '访问日志', 'Module/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('B2EECED2-8F30-4176-98E2-EC035A6B375A', '2017-03-22 09:48:48', '', '2017-03-22 09:48:48', '', null, '', null, '2017-03-22 09:48:48', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('B34697ED-6818-43AE-9A8D-DFC8DAD2ED89', '2017-03-22 22:50:36', '', '2017-03-22 22:50:36', '', null, '', null, '2017-03-22 22:50:36', '访问日志', 'Dashboard/embedpage?m_atpid=6A38DDDB-38B4-4C82-8367-326EF35DC448', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('B3884F60-D5C5-4BD5-8627-648028C7EC05', '2017-03-22 22:38:58', '', '2017-03-22 22:38:58', '', null, '', null, '2017-03-22 22:38:58', '访问日志', 'Dashboard/index?m_atpid=m1', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('B3BC2B5B-EE5C-4877-B2A5-C21B7CD98CD8', '2017-03-22 16:37:39', '', '2017-03-22 16:37:39', '', null, '', null, '2017-03-22 16:37:39', '访问日志', 'Module?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('B3C1AC91-653E-425D-B62D-6ECB64C15872', '2017-03-22 22:43:59', '', '2017-03-22 22:43:59', '', null, '', null, '2017-03-22 22:43:59', '访问日志', 'Dashboard/embedpage?m_atpid=04464D50-956F-48FD-9B1C-A0712C74A976', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('B4371F93-0021-4A3D-80BA-C57243C78A1D', '2017-03-22 13:34:04', '', '2017-03-22 13:34:04', '', null, '', null, '2017-03-22 13:34:04', '访问日志', 'Role?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('B47851BD-EE1E-427F-BFFF-81673C014C96', '2017-03-22 13:56:39', '', '2017-03-22 13:56:39', '', null, '', null, '2017-03-22 13:56:39', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('B4B41DFA-9B6D-41FF-94CA-75A38C168D37', '2017-03-22 22:21:50', '', '2017-03-22 22:21:50', '', null, '', null, '2017-03-22 22:21:50', '访问日志', 'User/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('B4D746C2-38BA-4DE2-A5E2-5C784911F5DC', '2017-03-22 22:40:04', '', '2017-03-22 22:40:04', '', null, '', null, '2017-03-22 22:40:04', '访问日志', 'Module?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('B528507A-F224-4FBB-A0F5-E10108BE7B72', '2017-03-22 09:47:53', '', '2017-03-22 09:47:53', '', null, '', null, '2017-03-22 09:47:53', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('B5353186-DCB8-4BDF-AC97-226A2AE75412', '2017-03-22 23:12:47', '', '2017-03-22 23:12:47', '', null, '', null, '2017-03-22 23:12:47', '访问日志', 'Dashboard/embedpage?m_atpid=6A38DDDB-38B4-4C82-8367-326EF35DC448', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('B5800624-5314-4CE5-ABBD-E87A2E95FCAA', '2017-03-22 23:13:29', '', '2017-03-22 23:13:29', '', null, '', null, '2017-03-22 23:13:29', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('B59AC403-3EB0-4370-B4C3-105D0F8664A9', '2017-03-22 13:40:04', '', '2017-03-22 13:40:04', '', null, '', null, '2017-03-22 13:40:04', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('B65426E2-7477-4643-84A1-5FFE29142534', '2017-03-22 14:40:32', '', '2017-03-22 14:40:32', '', null, '', null, '2017-03-22 14:40:32', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('B65E4CF5-BC6D-46AC-9ACA-B5FA1FEC0F32', '2017-03-22 11:15:50', '', '2017-03-22 11:15:50', '', null, '', null, '2017-03-22 11:15:50', '访问日志', 'Role/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('B6E43BC9-2DA9-4AB8-8F49-B54C97E65CC8', '2017-03-22 22:51:07', '', '2017-03-22 22:51:07', '', null, '', null, '2017-03-22 22:51:07', '访问日志', 'Dashboard/index?m_atpid=54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('B720817B-2375-44FB-8276-9BB7CD4859A8', '2017-03-22 10:22:58', '', '2017-03-22 10:22:58', '', null, '', null, '2017-03-22 10:22:58', '访问日志', 'Module/edit?id=undefined', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('B7E138A4-ED23-4FAD-B5DA-283B9A4B9522', '2017-03-22 22:21:36', '', '2017-03-22 22:21:36', '', null, '', null, '2017-03-22 22:21:36', '访问日志', 'Role?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('B843634B-5EF6-4D5D-A1FC-61E77B37E4C2', '2017-03-22 22:54:51', '', '2017-03-22 22:54:51', '', null, '', null, '2017-03-22 22:54:51', '访问日志', 'Module/edit?id=04464D50-956F-48FD-9B1C-A0712C74A976', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('B8F72942-F512-4867-BF9D-70EF4AFC5732', '2017-03-22 22:21:49', '', '2017-03-22 22:21:49', '', null, '', null, '2017-03-22 22:21:49', '访问日志', 'User?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('B91B8897-B4ED-4C47-BD30-EDD2AC53C79A', '2017-03-22 14:06:50', '', '2017-03-22 14:06:50', '', null, '', null, '2017-03-22 14:06:50', '访问日志', 'Table/edit?id=9A5BC5EF-B252-43C5-90FC-383B627DDCDD', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('B933D66A-5444-4B57-B467-4B88FC171661', '2017-03-22 09:55:16', '', '2017-03-22 09:55:16', '', null, '', null, '2017-03-22 09:55:16', '访问日志', 'Admin/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('B989B1DD-8656-48B5-805F-B08C2B3E5CBD', '2017-03-22 16:36:03', '', '2017-03-22 16:36:03', '', null, '', null, '2017-03-22 16:36:03', '访问日志', 'Frame?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('BA241DDF-8643-4CAA-B21D-1CF37D3706BB', '2017-03-22 22:42:34', '', '2017-03-22 22:42:34', '', null, '', null, '2017-03-22 22:42:34', '访问日志', 'Dashboard/chart1?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('BA32969D-8D76-474F-BF92-126E2B2086C2', '2017-03-22 22:41:01', '', '2017-03-22 22:41:01', '', null, '', null, '2017-03-22 22:41:01', '访问日志', 'Dashboard/embedpage?m_atpid=6A38DDDB-38B4-4C82-8367-326EF35DC448', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('BA7DCCC6-AF2B-42A7-8EC2-F70BC40ABE35', '2017-03-22 14:23:44', '', '2017-03-22 14:23:44', '', null, '', null, '2017-03-22 14:23:44', '访问日志', 'Role?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('BA89EB2D-5E0C-491B-B377-992B49B6694E', '2017-03-22 13:37:34', '', '2017-03-22 13:37:34', '', null, '', null, '2017-03-22 13:37:34', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('BA92CE28-983E-481C-BED8-287F482BF1E2', '2017-03-22 14:41:42', '', '2017-03-22 14:41:42', '', null, '', null, '2017-03-22 14:41:42', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('BAB9B748-2C8C-4542-9EDA-E6D516C40953', '2017-03-22 22:28:02', '', '2017-03-22 22:28:02', '', null, '', null, '2017-03-22 22:28:02', '访问日志', 'User/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('BABCBEA8-A089-496D-8E86-07F92326A8CE', '2017-03-22 23:13:29', '', '2017-03-22 23:13:29', '', null, '', null, '2017-03-22 23:13:29', '访问日志', 'Module/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('BABE1FC9-A570-447D-9E3D-53620EFF40CB', '2017-03-22 10:48:29', '', '2017-03-22 10:48:29', '', null, '', null, '2017-03-22 10:48:29', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('BB0F2060-DC91-40B8-8426-82E331CDDC1A', '2017-03-22 22:56:16', '', '2017-03-22 22:56:16', '', null, '', null, '2017-03-22 22:56:16', '访问日志', 'Module/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('BBA2FF45-D2CF-4001-8DEA-D8CDF95B7997', '2017-03-22 10:55:34', '', '2017-03-22 10:55:34', '', null, '', null, '2017-03-22 10:55:34', '访问日志', 'Module/edit?id=04464D50-956F-48FD-9B1C-A0712C74A976', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('BBA700B4-62A0-44E4-A17F-EAF46D909F4D', '2017-03-22 12:20:53', '', '2017-03-22 12:20:53', '', null, '', null, '2017-03-22 12:20:53', '访问日志', 'Index/block?title=%E4%B8%AA%E4%BA%BA%E8%B5%84%E6%96%99', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('BBC230C3-D251-4EE2-845F-25E5C084BAFA', '2017-03-22 10:26:11', '', '2017-03-22 10:26:11', '', null, '', null, '2017-03-22 10:26:11', '访问日志', 'Module/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('BBE20854-7924-45E8-97B0-A9A281952344', '2017-03-22 10:26:20', '', '2017-03-22 10:26:20', '', null, '', null, '2017-03-22 10:26:20', '访问日志', 'Module/edit?id=undefined', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('BBF23EB4-B1F9-4124-BDC8-8C3F18E68D4C', '2017-03-22 10:49:32', '', '2017-03-22 10:49:32', '', null, '', null, '2017-03-22 10:49:32', '访问日志', 'Module?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('BC7E2927-7E34-4C2C-A989-5BA4F2EEDD34', '2017-03-22 22:35:52', '', '2017-03-22 22:35:52', '', null, '', null, '2017-03-22 22:35:52', '访问日志', 'Dashboard/index?m_atpid=m1', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('BC871C5B-546A-4832-A66C-826CFE265703', '2017-03-22 16:38:46', '', '2017-03-22 16:38:46', '', null, '', null, '2017-03-22 16:38:46', '访问日志', 'Role/edit?id=7E46C663-EEC9-4CFF-866F-544334789B98', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('BC9196FD-E1AE-453D-8CA7-585CCD06B81F', '2017-03-22 10:22:28', '', '2017-03-22 10:22:28', '', null, '', null, '2017-03-22 10:22:28', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('BCAA35A3-7B73-485B-A46B-D4C3AA062BD2', '2017-03-22 13:45:15', '', '2017-03-22 13:45:15', '', null, '', null, '2017-03-22 13:45:15', '访问日志', 'Role/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('BCAC8455-67DA-424E-90D1-8871F61A16FF', '2017-03-22 13:18:18', '', '2017-03-22 13:18:18', '', null, '', null, '2017-03-22 13:18:18', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('BCBD6913-C809-481F-A61C-36127E1916A8', '2017-03-22 22:51:07', '', '2017-03-22 22:51:07', '', null, '', null, '2017-03-22 22:51:07', '访问日志', 'Dashboard/embedpage?m_atpid=6A38DDDB-38B4-4C82-8367-326EF35DC448', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('BCD31DCA-A941-4657-8955-022050FDCBEB', '2017-03-22 11:14:53', '', '2017-03-22 11:14:53', '', null, '', null, '2017-03-22 11:14:53', '访问日志', 'Role?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('BCE46E8D-24F3-426F-BF01-15C3B229EF88', '2017-03-22 11:22:28', '', '2017-03-22 11:22:28', '', null, '', null, '2017-03-22 11:22:28', '访问日志', 'User/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('BD95FD74-AB52-4400-81FD-60407E67084B', '2017-03-22 22:56:18', '', '2017-03-22 22:56:18', '', null, '', null, '2017-03-22 22:56:18', '访问日志', 'Dashboard/index?m_atpid=54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('BDF31E7E-33F0-471F-8280-7EF4234E45C9', '2017-03-22 22:31:50', '', '2017-03-22 22:31:50', '', null, '', null, '2017-03-22 22:31:50', '访问日志', 'User/edit?id=F8087DF6-8BB3-4DAA-A49F-ECBBB01C9336', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('BE5394A1-E0FB-4D5A-901A-E5E6728E079F', '2017-03-22 11:15:39', '', '2017-03-22 11:15:39', '', null, '', null, '2017-03-22 11:15:39', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('BE66BECD-5F6D-47D3-AF8E-F791866C74CF', '2017-03-22 09:52:26', '', '2017-03-22 09:52:26', '', null, '', null, '2017-03-22 09:52:26', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('BED9D758-50A0-47AE-9F34-843B57405333', '2017-03-22 22:45:40', '', '2017-03-22 22:45:40', '', null, '', null, '2017-03-22 22:45:40', '访问日志', 'Dashboard/chart1?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('BEE490A6-8F46-4582-969C-D9A59B744081', '2017-03-22 10:27:19', '', '2017-03-22 10:27:19', '', null, '', null, '2017-03-22 10:27:19', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('BF0826E1-8511-499E-871A-28A88D58B6D2', '2017-03-22 09:47:48', '', '2017-03-22 09:47:48', '', null, '', null, '2017-03-22 09:47:48', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('BF1713C2-18C4-4ACC-A5A8-99790B77146E', '2017-03-22 11:23:14', '', '2017-03-22 11:23:14', '', null, '', null, '2017-03-22 11:23:14', '访问日志', 'Admin/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('BF31CC18-72AC-4780-9D12-5E29D84FB87B', '2017-03-22 13:27:42', '', '2017-03-22 13:27:42', '', null, '', null, '2017-03-22 13:27:42', '访问日志', 'Role?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('BFD7164D-E82B-4640-9B06-8B88E45A209A', '2017-03-22 23:12:41', '', '2017-03-22 23:12:41', '', null, '', null, '2017-03-22 23:12:41', '访问日志', 'Frame?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('C00134F8-290E-4AA4-AC4B-E0EBBE7A17F8', '2017-03-22 14:40:33', '', '2017-03-22 14:40:33', '', null, '', null, '2017-03-22 14:40:33', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('C04E7508-23AB-4849-A1DB-CDB8E416DABE', '2017-03-22 22:46:47', '', '2017-03-22 22:46:47', '', null, '', null, '2017-03-22 22:46:47', '访问日志', 'Dashboard/embedpage?m_atpid=6A38DDDB-38B4-4C82-8367-326EF35DC448', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('C0E91B8B-52E3-4584-8301-E2DC888E2FC0', '2017-03-22 11:22:51', '', '2017-03-22 11:22:51', '', null, '', null, '2017-03-22 11:22:51', '访问日志', 'User/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('C0F71660-16B0-47F5-84A7-28F2A1ED9A79', '2017-03-22 10:49:33', '', '2017-03-22 10:49:33', '', null, '', null, '2017-03-22 10:49:33', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('C1300976-2931-4F5C-BB10-D3C214E7C3B4', '2017-03-22 09:53:43', '', '2017-03-22 09:53:43', '', null, '', null, '2017-03-22 09:53:43', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('C1D340B9-A756-4B90-A97E-1BEAFCF2DA3A', '2017-03-22 16:34:39', '', '2017-03-22 16:34:39', '', null, '', null, '2017-03-22 16:34:39', '访问日志', 'Dashboard/index?m_atpid=m1', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('C28D42D1-5A23-49ED-B9FB-1DA2915CE93B', '2017-03-22 12:22:03', '', '2017-03-22 12:22:03', '', null, '', null, '2017-03-22 12:22:03', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('C3305422-41DA-4FEA-8F27-27A5B5677135', '2017-03-22 13:40:22', '', '2017-03-22 13:40:22', '', null, '', null, '2017-03-22 13:40:22', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('C390F8DF-E609-47CC-BAA0-544FD0AA353E', '2017-03-22 13:28:00', '', '2017-03-22 13:28:00', '', null, '', null, '2017-03-22 13:28:00', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('C3B991F0-C10D-4A5D-899B-5519C8F59BEB', '2017-03-22 11:22:56', '', '2017-03-22 11:22:56', '', null, '', null, '2017-03-22 11:22:56', '访问日志', 'User/edit?id=59ABBB29-1DDA-4D1D-A29E-348EB81A7A92', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('C47D4423-8F78-42EE-ADCA-484BD22E1C63', '2017-03-22 22:51:14', '', '2017-03-22 22:51:14', '', null, '', null, '2017-03-22 22:51:14', '访问日志', 'Dashboard/embedpage?m_atpid=6A38DDDB-38B4-4C82-8367-326EF35DC448', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('C51A8FE0-4DB8-4DAD-95FA-2FAD3348946F', '2017-03-22 10:22:27', '', '2017-03-22 10:22:27', '', null, '', null, '2017-03-22 10:22:27', '访问日志', 'Module?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('C5234224-A4FD-4560-9A93-9F6E14B37DB0', '2017-03-22 22:31:39', '', '2017-03-22 22:31:39', '', null, '', null, '2017-03-22 22:31:39', '访问日志', 'User/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('C527F20D-D7D0-4CBB-B13A-EBE9C6480082', '2017-03-22 14:00:36', '', '2017-03-22 14:00:36', '', null, '', null, '2017-03-22 14:00:36', '访问日志', 'Table/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('C577232C-F9A8-4FDC-A11F-96ACD9796BFD', '2017-03-22 11:03:44', '', '2017-03-22 11:03:44', '', null, '', null, '2017-03-22 11:03:44', '访问日志', 'Admin/add?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('C5A50812-88C3-40BF-BB10-9791D8593377', '2017-03-22 22:49:11', '', '2017-03-22 22:49:11', '', null, '', null, '2017-03-22 22:49:11', '访问日志', 'Dashboard/embedpage?m_atpid=04464D50-956F-48FD-9B1C-A0712C74A976', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('C60292B0-D3BE-4A69-8769-775067A08454', '2017-03-22 11:22:25', '', '2017-03-22 11:22:25', '', null, '', null, '2017-03-22 11:22:25', '访问日志', 'User?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('C62C9B92-4F28-4656-9198-F7679DC3AE7C', '2017-03-22 13:32:15', '', '2017-03-22 13:32:15', '', null, '', null, '2017-03-22 13:32:15', '访问日志', 'Role?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('C63356A7-2FA9-461F-B2D4-864DDDCD0069', '2017-03-22 14:23:44', '', '2017-03-22 14:23:44', '', null, '', null, '2017-03-22 14:23:44', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('C7968596-AC1D-408D-8DBD-3039F202C4D8', '2017-03-22 10:26:08', '', '2017-03-22 10:26:08', '', null, '', null, '2017-03-22 10:26:08', '访问日志', 'Module/edit?id=undefined', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('C7B3BA1F-EF4A-4EA1-85F8-9109B2517AD5', '2017-03-22 09:47:54', '', '2017-03-22 09:47:54', '', null, '', null, '2017-03-22 09:47:54', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('C7F9F847-B6D6-4151-B9ED-CFC1DBFBDBB6', '2017-03-22 16:38:07', '', '2017-03-22 16:38:07', '', null, '', null, '2017-03-22 16:38:07', '访问日志', 'Role/add?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('C814D335-F812-4725-81C1-A5A8BCAD49C2', '2017-03-22 13:11:06', '', '2017-03-22 13:11:06', '', null, '', null, '2017-03-22 13:11:06', '访问日志', '?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('C8394FA6-4C2A-4B34-94B0-AFFCFE409D1B', '2017-03-22 11:15:44', '', '2017-03-22 11:15:44', '', null, '', null, '2017-03-22 11:15:44', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('C8573232-FD1A-452C-A33D-10DE09718ECE', '2017-03-22 13:37:28', '', '2017-03-22 13:37:28', '', null, '', null, '2017-03-22 13:37:28', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('C88637FE-FCE7-47AE-AA14-53F28E49E72A', '2017-03-22 10:55:42', '', '2017-03-22 10:55:42', '', null, '', null, '2017-03-22 10:55:42', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('C953BE96-1089-4743-AEA3-2E3689A2C8DC', '2017-03-22 10:27:04', '', '2017-03-22 10:27:04', '', null, '', null, '2017-03-22 10:27:04', '访问日志', 'Module/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('C957D8F4-23EC-41AC-B00A-499F8951937C', '2017-03-22 22:43:59', '', '2017-03-22 22:43:59', '', null, '', null, '2017-03-22 22:43:59', '访问日志', 'Dashboard/index?m_atpid=54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('C96C34F6-8627-4C38-A4AB-C0E840CA5048', '2017-03-22 09:45:49', '', '2017-03-22 09:45:49', '', '', '', null, '2017-03-22 09:45:49', '访问日志', 'Dashboard/index?m_atpid=m1', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('C9CDCA6F-8A14-459E-8B5C-CFFF2956D73F', '2017-03-22 22:56:11', '', '2017-03-22 22:56:11', '', null, '', null, '2017-03-22 22:56:11', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('CA48AF27-3C03-4687-89F8-BA19901548B3', '2017-03-22 13:20:02', '', '2017-03-22 13:20:02', '', null, '', null, '2017-03-22 13:20:02', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('CA63B472-1884-4CB7-A7BF-57C3209DD61A', '2017-03-22 10:22:23', '', '2017-03-22 10:22:23', '', null, '', null, '2017-03-22 10:22:23', '访问日志', 'Dashboard/index?m_atpid=m1', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('CAE3D617-EA0F-43FF-826D-25C975823898', '2017-03-22 10:28:39', '', '2017-03-22 10:28:39', '', null, '', null, '2017-03-22 10:28:39', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('CB502889-69C6-44E2-995E-D5349A639B33', '2017-03-22 11:15:46', '', '2017-03-22 11:15:46', '', null, '', null, '2017-03-22 11:15:46', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('CB5DC98B-E981-46DD-9BFE-59AEBE5AF1EC', '2017-03-22 09:55:17', '', '2017-03-22 09:55:17', '', null, '', null, '2017-03-22 09:55:17', '访问日志', 'Admin/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('CB6690AC-2C0C-46C0-BEBC-3DC4B26C1F7A', '2017-03-22 22:51:08', '', '2017-03-22 22:51:08', '', null, '', null, '2017-03-22 22:51:08', '访问日志', 'Dashboard/chart1?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('CC1DF321-CEBE-4569-BAA8-671441C5BEBF', '2017-03-22 09:49:20', '', '2017-03-22 09:49:20', '', null, '', null, '2017-03-22 09:49:20', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('CC4C53BB-32B3-42BD-9391-8394D70745E6', '2017-03-22 09:46:06', '', '2017-03-22 09:46:06', '', '', '', null, '2017-03-22 09:46:06', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('CC8B69A6-EF33-483E-999C-EABC7B31AAB3', '2017-03-22 11:23:15', '', '2017-03-22 11:23:15', '', null, '', null, '2017-03-22 11:23:15', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('CCAB3DF7-8D2F-41F8-96DC-C60665AD3A73', '2017-03-22 13:11:06', '', '2017-03-22 13:11:06', '', null, '', null, '2017-03-22 13:11:06', '访问日志', 'Login?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('CCE5636F-4FB1-4B90-9862-21A41F24D642', '2017-03-22 16:37:50', '', '2017-03-22 16:37:50', '', null, '', null, '2017-03-22 16:37:50', '访问日志', 'Module/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('CCE738C4-2DD9-4BFC-92D1-539579B5F800', '2017-03-22 13:37:35', '', '2017-03-22 13:37:35', '', null, '', null, '2017-03-22 13:37:35', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('CD3922E3-BF67-4D37-84AC-D2F66A63B057', '2017-03-22 16:40:04', '', '2017-03-22 16:40:04', '', null, '', null, '2017-03-22 16:40:04', '访问日志', 'User/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('CD745270-CB86-4824-8736-6DC914D96BAE', '2017-03-22 13:37:42', '', '2017-03-22 13:37:42', '', null, '', null, '2017-03-22 13:37:42', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('CDE97A5E-1771-41E0-A841-DE6013E24662', '2017-03-22 22:56:39', '', '2017-03-22 22:56:39', '', null, '', null, '2017-03-22 22:56:39', '访问日志', 'Dashboard/index?m_atpid=54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('CDF7846B-9BDC-4AFC-ADFC-F4617FE2FBF9', '2017-03-22 11:23:14', '', '2017-03-22 11:23:14', '', null, '', null, '2017-03-22 11:23:14', '访问日志', 'Module?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('CE457132-2344-4A77-80BD-AC13315E1A30', '2017-03-22 10:48:43', '', '2017-03-22 10:48:43', '', null, '', null, '2017-03-22 10:48:43', '访问日志', 'Module/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('CEB3A859-7CB0-435D-80DB-88CE46CF3883', '2017-03-22 14:37:37', '', '2017-03-22 14:37:37', '', null, '', null, '2017-03-22 14:37:37', '访问日志', 'Role/edit?id=7E46C663-EEC9-4CFF-866F-544334789B98', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('CFE23283-0093-4B26-89C6-A2D036987318', '2017-03-22 10:57:06', '', '2017-03-22 10:57:06', '', null, '', null, '2017-03-22 10:57:06', '访问日志', 'Table/edit?id=9A5BC5EF-B252-43C5-90FC-383B627DDCDD', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('CFE6A794-4B7A-4678-A6D8-F6AED02AAEBE', '2017-03-22 16:40:05', '', '2017-03-22 16:40:05', '', null, '', null, '2017-03-22 16:40:05', '访问日志', 'User/edit?id=F8087DF6-8BB3-4DAA-A49F-ECBBB01C9336', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('D03F6C01-06ED-4AEB-A245-585597BFB7F9', '2017-03-22 23:12:25', '', '2017-03-22 23:12:25', '', null, '', null, '2017-03-22 23:12:25', '访问日志', 'Frame/welcome?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('D07F7BC6-445F-45A0-9490-FEEA3BFCEC6E', '2017-03-22 11:21:06', '', '2017-03-22 11:21:06', '', null, '', null, '2017-03-22 11:21:06', '访问日志', 'Dashboard/index?m_atpid=m1', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('D08D1908-6576-4B20-9F38-809CCF0AB995', '2017-03-22 09:53:36', '', '2017-03-22 09:53:36', '', null, '', null, '2017-03-22 09:53:36', '访问日志', 'Log?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('D08F34D9-B99C-4CBD-BC92-D23DAF55B0F9', '2017-03-22 12:21:02', '', '2017-03-22 12:21:02', '', null, '', null, '2017-03-22 12:21:02', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('D0A52998-33CB-404A-B587-33D3EBD91079', '2017-03-22 12:20:52', '', '2017-03-22 12:20:52', '', null, '', null, '2017-03-22 12:20:52', '访问日志', 'Index/block?title=%E4%BF%AE%E6%94%B9%E5%A4%B4%E5%83%8F', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('D0C0BDF2-716A-4A25-B439-B793269C5E63', '2017-03-22 13:37:23', '', '2017-03-22 13:37:23', '', null, '', null, '2017-03-22 13:37:23', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('D0CF73B6-313B-4345-8991-C19061246CA4', '2017-03-22 09:52:25', '', '2017-03-22 09:52:25', '', null, '', null, '2017-03-22 09:52:25', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('D1400F01-C444-4367-A72A-0793C846DB1A', '2017-03-22 13:40:36', '', '2017-03-22 13:40:36', '', null, '', null, '2017-03-22 13:40:36', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('D1B7C8F6-686A-4ED2-A6F7-641B000646C0', '2017-03-22 22:45:10', '', '2017-03-22 22:45:10', '', null, '', null, '2017-03-22 22:45:10', '访问日志', 'Dashboard/chart1?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('D1BFA07F-629E-43D9-ABB6-C35C4DFF77C5', '2017-03-22 11:03:41', '', '2017-03-22 11:03:41', '', null, '', null, '2017-03-22 11:03:41', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('D1D66EFF-35D7-4182-B22E-0951F806FAA1', '2017-03-22 13:31:30', '', '2017-03-22 13:31:30', '', null, '', null, '2017-03-22 13:31:30', '访问日志', 'Role?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('D1E3E078-DD0A-4007-B4FE-C1A6C935DC75', '2017-03-22 13:40:01', '', '2017-03-22 13:40:01', '', null, '', null, '2017-03-22 13:40:01', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('D1E684E7-8A84-4DA3-9FF6-156BCF93A423', '2017-03-22 10:28:22', '', '2017-03-22 10:28:22', '', null, '', null, '2017-03-22 10:28:22', '访问日志', 'Module/edit?id=44315C25-BDE8-4A5E-8A3F-698376F9E63E', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('D33E3D60-F85B-470B-A8B7-78AD9DD6007B', '2017-03-22 14:38:11', '', '2017-03-22 14:38:11', '', null, '', null, '2017-03-22 14:38:11', '访问日志', 'Role/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('D383BCCA-569A-42FA-89A2-D7FFA60847E7', '2017-03-22 11:15:27', '', '2017-03-22 11:15:27', '', null, '', null, '2017-03-22 11:15:27', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('D3A72249-894C-4BC1-919D-6D363DA8B692', '2017-03-22 22:50:33', '', '2017-03-22 22:50:33', '', null, '', null, '2017-03-22 22:50:33', '访问日志', 'Dashboard/embedpage?m_atpid=6A38DDDB-38B4-4C82-8367-326EF35DC448', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('D3D0884D-77A7-471E-BE3D-5A8C61B3D753', '2017-03-22 10:27:05', '', '2017-03-22 10:27:05', '', null, '', null, '2017-03-22 10:27:05', '访问日志', 'Module/edit?id=54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('D3D703E5-340B-4E02-8B89-06927D052BAF', '2017-03-22 11:22:33', '', '2017-03-22 11:22:33', '', null, '', null, '2017-03-22 11:22:33', '访问日志', 'User/add?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('D43C5BF4-3CB6-44B1-88B5-0F2C996758DD', '2017-03-22 09:49:21', '', '2017-03-22 09:49:21', '', null, '', null, '2017-03-22 09:49:21', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('D4816220-E4A1-4CBC-8390-5363DCAB4B3D', '2017-03-22 22:32:18', '', '2017-03-22 22:32:18', '', null, '', null, '2017-03-22 22:32:18', '访问日志', 'Role/edit?id=7E46C663-EEC9-4CFF-866F-544334789B98', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('D4855D4A-FCE3-4C3E-9DF2-C9C89D4AB955', '2017-03-22 13:37:16', '', '2017-03-22 13:37:16', '', null, '', null, '2017-03-22 13:37:16', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('D48F987E-02E6-46EE-B597-41662FDCB5F5', '2017-03-22 13:45:32', '', '2017-03-22 13:45:32', '', null, '', null, '2017-03-22 13:45:32', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('D4B659F1-F940-4C3A-81D5-3F458F2DF4DF', '2017-03-22 09:52:34', '', '2017-03-22 09:52:34', '', null, '', null, '2017-03-22 09:52:34', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('D4FAE0FE-386B-42B4-97C4-9798C23EBFA1', '2017-03-22 09:53:58', '', '2017-03-22 09:53:58', '', null, '', null, '2017-03-22 09:53:58', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('D50523B5-2CDB-4139-A512-5487275D5E4F', '2017-03-22 09:48:05', '', '2017-03-22 09:48:05', '', null, '', null, '2017-03-22 09:48:05', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('D5A35234-C66A-49BC-B233-9B7FB68D5D4C', '2017-03-22 13:37:21', '', '2017-03-22 13:37:21', '', null, '', null, '2017-03-22 13:37:21', '访问日志', 'Role?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('D5E3A9E9-FAA6-4940-AC3A-7D421081BBC6', '2017-03-22 22:46:47', '', '2017-03-22 22:46:47', '', null, '', null, '2017-03-22 22:46:47', '访问日志', 'Dashboard/chart1?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('D64FFF63-5E08-4A20-A505-D8C56A29FD76', '2017-03-22 14:16:39', '', '2017-03-22 14:16:39', '', null, '', null, '2017-03-22 14:16:39', '访问日志', 'Table/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('D67EDA63-0AB5-41DF-8298-033ECA457EDB', '2017-03-22 22:28:36', '', '2017-03-22 22:28:36', '', null, '', null, '2017-03-22 22:28:36', '访问日志', 'User?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('D6D80B1B-5A9D-489E-8F84-90570CAF703A', '2017-03-22 10:28:39', '', '2017-03-22 10:28:39', '', null, '', null, '2017-03-22 10:28:39', '访问日志', 'Module/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('D6E8D078-7B21-4E18-AE03-95A39375A884', '2017-03-22 11:23:13', '', '2017-03-22 11:23:13', '', null, '', null, '2017-03-22 11:23:13', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('D6F88E2F-7065-4479-9D84-C44B58ABC930', '2017-03-22 10:03:43', '', '2017-03-22 10:03:43', '', null, '', null, '2017-03-22 10:03:43', '访问日志', 'Admin/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('D723090C-D7EC-452B-A49A-A43A08F717E1', '2017-03-22 22:28:03', '', '2017-03-22 22:28:03', '', null, '', null, '2017-03-22 22:28:03', '访问日志', 'User/edit?id=F8087DF6-8BB3-4DAA-A49F-ECBBB01C9336', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('D86D3422-0164-46E7-B9BD-1002DA5B1845', '2017-03-22 22:54:47', '', '2017-03-22 22:54:47', '', null, '', null, '2017-03-22 22:54:47', '访问日志', 'Dashboard/Dashboard/chart1?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('D8FA7ED5-6751-4757-ADBA-D8A370764B13', '2017-03-22 16:39:54', '', '2017-03-22 16:39:54', '', null, '', null, '2017-03-22 16:39:54', '访问日志', 'Module?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('D9918279-4725-491E-B11F-D3E0919A2B62', '2017-03-22 14:37:33', '', '2017-03-22 14:37:33', '', null, '', null, '2017-03-22 14:37:33', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('D9A37D8C-AD63-446F-A451-21F6BFF45845', '2017-03-22 11:21:15', '', '2017-03-22 11:21:15', '', null, '', null, '2017-03-22 11:21:15', '访问日志', 'User/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('D9AEDAAC-FB14-4BCD-87C9-172E387E3FA9', '2017-03-22 16:36:57', '', '2017-03-22 16:36:57', '', null, '', null, '2017-03-22 16:36:57', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('DA2F5ADC-9C47-40B2-8BA4-2ACA28EAE381', '2017-03-22 22:42:25', '', '2017-03-22 22:42:25', '', null, '', null, '2017-03-22 22:42:25', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('DA3E595A-5A69-4CFA-A81A-91E5DC62C609', '2017-03-22 13:54:35', '', '2017-03-22 13:54:35', '', null, '', null, '2017-03-22 13:54:35', '访问日志', 'Module/edit?id=54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('DA434512-A913-47D0-A13D-8372B26D0CD7', '2017-03-22 10:28:29', '', '2017-03-22 10:28:29', '', null, '', null, '2017-03-22 10:28:29', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('DA532AC3-433A-4664-B77E-68CCDF8E74FF', '2017-03-22 13:37:08', '', '2017-03-22 13:37:08', '', null, '', null, '2017-03-22 13:37:08', '访问日志', 'Role?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('DA720A4B-5C5D-47A4-A44D-1DB32D936E8E', '2017-03-22 10:28:32', '', '2017-03-22 10:28:32', '', null, '', null, '2017-03-22 10:28:32', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('DACAAF79-0A3E-4DDB-9D63-4E7BADBB2FA8', '2017-03-22 16:38:01', '', '2017-03-22 16:38:01', '', null, '', null, '2017-03-22 16:38:01', '访问日志', 'Role/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('DAFD42AF-1952-44B0-BCA4-46747F074BA3', '2017-03-22 22:27:34', '', '2017-03-22 22:27:34', '', null, '', null, '2017-03-22 22:27:34', '访问日志', 'User?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('DAFD9737-0ACD-42CF-87E9-4FD55A18AB26', '2017-03-22 09:48:41', '', '2017-03-22 09:48:41', '', null, '', null, '2017-03-22 09:48:41', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('DB04952D-0747-47F0-932F-D5F2451ED5B8', '2017-03-22 11:00:40', '', '2017-03-22 11:00:40', '', null, '', null, '2017-03-22 11:00:40', '访问日志', 'Index/block?title=%E8%8F%9C%E5%8D%952.2', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('DB50E532-613D-4723-85B9-49CA5D08FA15', '2017-03-22 09:48:38', '', '2017-03-22 09:48:38', '', null, '', null, '2017-03-22 09:48:38', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('DB63CFED-5754-461B-9135-125CC475FCE5', '2017-03-22 11:30:48', '', '2017-03-22 11:30:48', '', null, '', null, '2017-03-22 11:30:48', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('DCCD501C-4F3E-44B0-A1E7-F086F424BD67', '2017-03-22 11:15:09', '', '2017-03-22 11:15:09', '', null, '', null, '2017-03-22 11:15:09', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('DD85D3D9-3F29-4F59-8AF9-C57C6F091D2C', '2017-03-22 11:22:06', '', '2017-03-22 11:22:06', '', null, '', null, '2017-03-22 11:22:06', '访问日志', 'User/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('DDA474A4-6A31-420E-A1E0-D18D9AFB75E1', '2017-03-22 09:45:07', '', '2017-03-22 09:45:07', '', '', '', null, '2017-03-22 09:45:07', '访问日志', 'Dashboard/index?m_atpid=m1', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('DDB0E406-0441-4A99-9544-084830D8FCF9', '2017-03-22 22:56:28', '', '2017-03-22 22:56:28', '', null, '', null, '2017-03-22 22:56:28', '访问日志', 'Module/edit?id=6A38DDDB-38B4-4C82-8367-326EF35DC448', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('DDE5971B-3F78-4EFB-88DC-99036C46BEAA', '2017-03-22 13:11:18', '', '2017-03-22 13:11:18', '', null, '', null, '2017-03-22 13:11:18', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('DE4A4001-E8BC-4779-9916-7550ABB9FE3F', '2017-03-22 11:15:50', '', '2017-03-22 11:15:50', '', null, '', null, '2017-03-22 11:15:50', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('DE62A03E-52C9-42FF-B2D7-7C1AB87A8DEA', '2017-03-22 23:13:32', '', '2017-03-22 23:13:32', '', null, '', null, '2017-03-22 23:13:32', '访问日志', 'Dashboard/index?m_atpid=688BD005-E517-40EA-AB7F-F8386E03B56C', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('DF904F4D-6678-4EBF-93BB-B32B9EE22DDD', '2017-03-22 22:31:39', '', '2017-03-22 22:31:39', '', null, '', null, '2017-03-22 22:31:39', '访问日志', 'User/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('DFCC6C24-D177-49BA-B317-0FA155664F85', '2017-03-22 14:16:17', '', '2017-03-22 14:16:17', '', null, '', null, '2017-03-22 14:16:17', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('E03AC976-2D0E-4C10-9B01-1D53F9C8F437', '2017-03-22 10:47:57', '', '2017-03-22 10:47:57', '', null, '', null, '2017-03-22 10:47:57', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('E09C7A1E-B14C-4717-90F2-E1DD951A609A', '2017-03-22 14:11:56', '', '2017-03-22 14:11:56', '', null, '', null, '2017-03-22 14:11:56', '访问日志', 'Index/block?title=CSV%E6%93%8D%E4%BD%9C', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('E0B56499-A09B-4D47-8AF0-FA0F51903D22', '2017-03-22 22:45:10', '', '2017-03-22 22:45:10', '', null, '', null, '2017-03-22 22:45:10', '访问日志', 'Dashboard/index?m_atpid=54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('E1040434-716C-45A1-8DF0-06E0B329BA64', '2017-03-22 14:03:30', '', '2017-03-22 14:03:30', '', null, '', null, '2017-03-22 14:03:30', '访问日志', 'User/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('E10FE93E-E524-4F89-8741-D41F8A495F81', '2017-03-22 11:23:22', '', '2017-03-22 11:23:22', '', null, '', null, '2017-03-22 11:23:22', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('E122E758-C5F1-430A-9782-EE22EBBC2BAF', '2017-03-22 22:27:36', '', '2017-03-22 22:27:36', '', null, '', null, '2017-03-22 22:27:36', '访问日志', 'User/edit?id=F8087DF6-8BB3-4DAA-A49F-ECBBB01C9336', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('E15474DD-98E4-4A43-9B59-E6E8271739D9', '2017-03-22 11:23:22', '', '2017-03-22 11:23:22', '', null, '', null, '2017-03-22 11:23:22', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('E15ADE18-BE0B-47BC-ABE8-85892353863D', '2017-03-22 16:37:55', '', '2017-03-22 16:37:55', '', null, '', null, '2017-03-22 16:37:55', '访问日志', 'Role/edit?id=7E46C663-EEC9-4CFF-866F-544334789B98', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('E17AD0D7-2734-4E00-8037-55149D455D26', '2017-03-22 13:37:42', '', '2017-03-22 13:37:42', '', null, '', null, '2017-03-22 13:37:42', '访问日志', 'Role?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('E1B5C313-02C0-4E0E-B921-C98E86904843', '2017-03-22 22:56:33', '', '2017-03-22 22:56:33', '', null, '', null, '2017-03-22 22:56:33', '访问日志', 'Dashboard/embedpage?m_atpid=04464D50-956F-48FD-9B1C-A0712C74A976', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('E1BAEAE5-9906-4BE3-ACB8-08243F2BF172', '2017-03-22 09:56:12', '', '2017-03-22 09:56:12', '', null, '', null, '2017-03-22 09:56:12', '访问日志', 'Log?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('E1C52D36-0FC5-4DED-848B-4806B22A80CE', '2017-03-22 11:16:00', '', '2017-03-22 11:16:00', '', null, '', null, '2017-03-22 11:16:00', '访问日志', 'Role/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('E3086FBE-97B3-40FE-86ED-E6B17C89AB87', '2017-03-22 22:42:27', '', '2017-03-22 22:42:27', '', null, '', null, '2017-03-22 22:42:27', '访问日志', 'Module/edit?id=6A38DDDB-38B4-4C82-8367-326EF35DC448', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('E3E679F0-83D0-463B-8444-64CFEE639473', '2017-03-22 11:14:24', '', '2017-03-22 11:14:24', '', null, '', null, '2017-03-22 11:14:24', '访问日志', 'Dashboard/index?m_atpid=m1', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('E3F03F96-C2F2-4683-A4B6-79FB639524A8', '2017-03-22 13:52:13', '', '2017-03-22 13:52:13', '', null, '', null, '2017-03-22 13:52:13', '访问日志', 'Module/edit?id=54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('E3F1B819-E3C5-4D1C-8611-648127A2CA23', '2017-03-22 13:27:29', '', '2017-03-22 13:27:29', '', null, '', null, '2017-03-22 13:27:29', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('E425D23C-4C34-48C2-A08C-98392C0729CB', '2017-03-22 22:50:36', '', '2017-03-22 22:50:36', '', null, '', null, '2017-03-22 22:50:36', '访问日志', 'Dashboard/chart1?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('E4599D00-CDEE-40A1-A74A-578E97A18E11', '2017-03-22 13:55:26', '', '2017-03-22 13:55:26', '', null, '', null, '2017-03-22 13:55:26', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('E4A3F8FC-BCCD-41A8-87DA-F516B9217CCF', '2017-03-22 10:28:03', '', '2017-03-22 10:28:03', '', null, '', null, '2017-03-22 10:28:03', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('E4D20653-7554-40DB-8C84-A50E14340733', '2017-03-22 11:21:10', '', '2017-03-22 11:21:10', '', null, '', null, '2017-03-22 11:21:10', '访问日志', 'User/add?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('E52D2818-1D23-4445-BEAD-D680FFB65B70', '2017-03-22 16:37:27', '', '2017-03-22 16:37:27', '', null, '', null, '2017-03-22 16:37:27', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('E5575ADF-CD6A-46DE-B1B9-8B3F5B15CE3F', '2017-03-22 11:22:08', '', '2017-03-22 11:22:08', '', null, '', null, '2017-03-22 11:22:08', '访问日志', 'User/edit?id=106DCE46-A7DD-4717-937A-C905E7BE8F69', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('E644330D-B2C5-4F66-B19E-BB0C6F48AB66', '2017-03-22 12:21:59', '', '2017-03-22 12:21:59', '', null, '', null, '2017-03-22 12:21:59', '访问日志', 'User/edit?id=F8087DF6-8BB3-4DAA-A49F-ECBBB01C9336', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('E6D42D31-C868-4128-80F7-7460DCF66C8A', '2017-03-22 23:12:37', '', '2017-03-22 23:12:37', '', null, '', null, '2017-03-22 23:12:37', '访问日志', 'Frame/welcome?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('E76B61E5-EDBB-4F42-9E05-396554BB142D', '2017-03-22 10:49:55', '', '2017-03-22 10:49:55', '', null, '', null, '2017-03-22 10:49:55', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('E83A4D2B-AC31-48E6-88F1-DEA43B9BBBB5', '2017-03-22 22:47:42', '', '2017-03-22 22:47:42', '', null, '', null, '2017-03-22 22:47:42', '访问日志', 'Dashboard/chart1?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('E84ABA0F-2F89-450F-BA89-34C99C6E1C44', '2017-03-22 14:35:40', '', '2017-03-22 14:35:40', '', null, '', null, '2017-03-22 14:35:40', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('E8A14E71-6FDC-462D-98A4-5A642D09249B', '2017-03-22 13:36:06', '', '2017-03-22 13:36:06', '', null, '', null, '2017-03-22 13:36:06', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('E8F84BB1-5DD5-46A4-9225-B48A9FD997FD', '2017-03-22 22:50:37', '', '2017-03-22 22:50:37', '', null, '', null, '2017-03-22 22:50:37', '访问日志', 'Dashboard/chart1?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('E9B86A98-85AC-4152-8981-418F7410E44E', '2017-03-22 22:44:26', '', '2017-03-22 22:44:26', '', null, '', null, '2017-03-22 22:44:26', '访问日志', 'Dashboard/embedpage?m_atpid=04464D50-956F-48FD-9B1C-A0712C74A976', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('EA626347-1266-424C-B179-2CAAA4BF52E8', '2017-03-22 22:51:14', '', '2017-03-22 22:51:14', '', null, '', null, '2017-03-22 22:51:14', '访问日志', 'Dashboard/chart1?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('EB18ED1A-844A-4BD5-B9D9-31CCECF49EFC', '2017-03-22 11:21:08', '', '2017-03-22 11:21:08', '', null, '', null, '2017-03-22 11:21:08', '访问日志', 'User/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('EB9FBA36-E5DD-4528-97C9-9D3DBE51AC56', '2017-03-22 22:21:37', '', '2017-03-22 22:21:37', '', null, '', null, '2017-03-22 22:21:37', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('EBA799D4-69C2-431A-8BD7-7BDA5B4B06B7', '2017-03-22 11:23:33', '', '2017-03-22 11:23:33', '', null, '', null, '2017-03-22 11:23:33', '访问日志', 'Module?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('EBDEF83E-D232-469C-AAB2-BBF26EF94CEC', '2017-03-22 16:34:39', '', '2017-03-22 16:34:39', '', null, '', null, '2017-03-22 16:34:39', '访问日志', 'Frame?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('EC09DE06-E7F3-4153-B626-ED2D3EDDF4D5', '2017-03-22 09:47:36', '', '2017-03-22 09:47:36', '', null, '', null, '2017-03-22 09:47:36', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('EC46737F-29D4-41D6-A18E-6BBF174FFF68', '2017-03-22 09:55:39', '', '2017-03-22 09:55:39', '', null, '', null, '2017-03-22 09:55:39', '访问日志', 'Admin/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('ECA3B7A3-ACB7-4264-9CD1-1A8FA4A84985', '2017-03-22 16:39:01', '', '2017-03-22 16:39:01', '', null, '', null, '2017-03-22 16:39:01', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('ED476004-F59E-4B9D-A842-CE4F2AE64BB4', '2017-03-22 16:38:06', '', '2017-03-22 16:38:06', '', null, '', null, '2017-03-22 16:38:06', '访问日志', 'Role/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('EE0DFC4F-C6B5-4505-A7A8-689BD87481F4', '2017-03-22 13:36:36', '', '2017-03-22 13:36:36', '', null, '', null, '2017-03-22 13:36:36', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('EE3838E2-BF72-493B-9C26-EB7BAE9E29BC', '2017-03-22 12:21:53', '', '2017-03-22 12:21:53', '', null, '', null, '2017-03-22 12:21:53', '访问日志', 'Dashboard/index?m_atpid=m1', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('EE60F30E-846B-4D00-814A-C1C7D14D46E5', '2017-03-22 16:38:02', '', '2017-03-22 16:38:02', '', null, '', null, '2017-03-22 16:38:02', '访问日志', 'Role/edit?id=7E46C663-EEC9-4CFF-866F-544334789B98', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('EF27D9A4-1BE6-4979-A194-934FD0EE80D8', '2017-03-22 13:36:26', '', '2017-03-22 13:36:26', '', null, '', null, '2017-03-22 13:36:26', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('EF443572-B234-475D-A7DF-2578CCE3D444', '2017-03-22 09:52:57', '', '2017-03-22 09:52:57', '', null, '', null, '2017-03-22 09:52:57', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('EF527F20-013E-4377-A3C0-249C5D369FF8', '2017-03-22 22:31:57', '', '2017-03-22 22:31:57', '', null, '', null, '2017-03-22 22:31:57', '访问日志', 'User/edit?id=F8087DF6-8BB3-4DAA-A49F-ECBBB01C9336', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('EF5DA386-D7C3-43BF-AFBA-4258DE697C5E', '2017-03-22 10:26:02', '', '2017-03-22 10:26:02', '', null, '', null, '2017-03-22 10:26:02', '访问日志', 'Dashboard/index?m_atpid=m1', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('EF62B070-EE8A-4B3D-87DE-E45D3C68307A', '2017-03-22 23:00:00', '', '2017-03-22 23:00:00', '', null, '', null, '2017-03-22 23:00:00', '访问日志', 'Frame/welcome?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('EFAB256C-5E75-4A71-A5C0-85F4D7A95EB5', '2017-03-22 13:35:41', '', '2017-03-22 13:35:41', '', null, '', null, '2017-03-22 13:35:41', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('F0015D35-EE64-4E45-95AF-A56779B6D377', '2017-03-22 16:36:48', '', '2017-03-22 16:36:48', '', null, '', null, '2017-03-22 16:36:48', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('F00B4339-41D8-4D52-9E41-88DEB1D01DC8', '2017-03-22 22:42:25', '', '2017-03-22 22:42:25', '', null, '', null, '2017-03-22 22:42:25', '访问日志', 'Module/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('F0162B3A-3452-4240-A456-0D838B21D651', '2017-03-22 16:36:31', '', '2017-03-22 16:36:31', '', null, '', null, '2017-03-22 16:36:31', '访问日志', 'Role/edit?id=7E46C663-EEC9-4CFF-866F-544334789B98', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('F023DBAD-A2E8-4F00-B26F-02CFB0214378', '2017-03-22 11:15:55', '', '2017-03-22 11:15:55', '', null, '', null, '2017-03-22 11:15:55', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('F02AC366-3270-43DB-96D5-BE7601DC664E', '2017-03-22 09:46:14', '', '2017-03-22 09:46:14', '', '', '', null, '2017-03-22 09:46:14', '访问日志', 'Log?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('F0A71ED8-8FE8-4018-82EE-0F7ACF3349FB', '2017-03-22 16:36:21', '', '2017-03-22 16:36:21', '', null, '', null, '2017-03-22 16:36:21', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('F0C1B320-E292-4029-AEA6-5F8E8DB0DD42', '2017-03-22 12:22:00', '', '2017-03-22 12:22:00', '', null, '', null, '2017-03-22 12:22:00', '访问日志', 'Role?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('F0E73DAF-E5BC-427F-92ED-4A937B51CC87', '2017-03-22 14:05:10', '', '2017-03-22 14:05:10', '', null, '', null, '2017-03-22 14:05:10', '访问日志', 'Table/edit?id=9A5BC5EF-B252-43C5-90FC-383B627DDCDD', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('F0EE40FF-DB13-4FFA-BB6D-BB14B3329A90', '2017-03-22 22:42:33', '', '2017-03-22 22:42:33', '', null, '', null, '2017-03-22 22:42:33', '访问日志', 'Dashboard/index?m_atpid=54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('F105639F-AE24-4338-96D5-9370F5563E70', '2017-03-22 10:48:34', '', '2017-03-22 10:48:34', '', null, '', null, '2017-03-22 10:48:34', '访问日志', 'Module/edit?id=6A38DDDB-38B4-4C82-8367-326EF35DC448', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('F1183BD4-39C0-4E3E-97E4-60F4BC3AB301', '2017-03-22 10:27:13', '', '2017-03-22 10:27:13', '', null, '', null, '2017-03-22 10:27:13', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('F1E68E9A-0E69-4307-B5B6-7EC527D2B203', '2017-03-22 13:38:43', '', '2017-03-22 13:38:43', '', null, '', null, '2017-03-22 13:38:43', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('F22DFA6E-5785-4BB7-8C59-227A1DAEC198', '2017-03-22 11:00:41', '', '2017-03-22 11:00:41', '', null, '', null, '2017-03-22 11:00:41', '访问日志', 'Index/block?title=%E8%8F%9C%E5%8D%952.1', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('F33BC950-DDD7-434A-81D4-D32522CB27B2', '2017-03-22 13:51:51', '', '2017-03-22 13:51:51', '', null, '', null, '2017-03-22 13:51:51', '访问日志', 'Admin/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('F3A365F4-7D15-4D8F-9F09-5015906FDEC9', '2017-03-22 22:28:36', '', '2017-03-22 22:28:36', '', null, '', null, '2017-03-22 22:28:36', '访问日志', 'User/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('F3F8BD70-E58C-4D85-9931-BBE3B28A7690', '2017-03-22 22:21:45', '', '2017-03-22 22:21:45', '', null, '', null, '2017-03-22 22:21:45', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('F422BF4E-C124-417A-80EA-CEB8480F00EE', '2017-03-22 14:40:29', '', '2017-03-22 14:40:29', '', null, '', null, '2017-03-22 14:40:29', '访问日志', 'Role/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('F423A67C-912A-4148-8C8D-E5C5829B9FC4', '2017-03-22 22:47:42', '', '2017-03-22 22:47:42', '', null, '', null, '2017-03-22 22:47:42', '访问日志', 'Dashboard/embedpage?m_atpid=04464D50-956F-48FD-9B1C-A0712C74A976', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('F436026E-B288-47D6-BC4A-841C2AAC43C3', '2017-03-22 14:40:48', '', '2017-03-22 14:40:48', '', null, '', null, '2017-03-22 14:40:48', '访问日志', 'Role/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('F44FE0CC-822E-44B9-93D3-5E83D705B612', '2017-03-22 23:12:45', '', '2017-03-22 23:12:45', '', null, '', null, '2017-03-22 23:12:45', '访问日志', 'Dashboard/index?m_atpid=92A1299A-6E21-4C66-BE69-FAEE7D666068', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('F51A5B68-BE93-4216-A173-2D9DF093507C', '2017-03-22 10:26:11', '', '2017-03-22 10:26:11', '', null, '', null, '2017-03-22 10:26:11', '访问日志', 'Module/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('F52D5DBD-051B-4571-B75F-926DF90C47F4', '2017-03-22 14:40:30', '', '2017-03-22 14:40:30', '', null, '', null, '2017-03-22 14:40:30', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('F5D1FF2A-0572-4826-9F27-A6F409A8FE2D', '2017-03-22 14:38:15', '', '2017-03-22 14:38:15', '', null, '', null, '2017-03-22 14:38:15', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('F5F718B1-A912-4702-8DCB-A69E6F060366', '2017-03-22 23:12:37', '', '2017-03-22 23:12:37', '', null, '', null, '2017-03-22 23:12:37', '访问日志', 'Frame?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('F67503B9-2DD9-49A6-A153-49D5FDA729EB', '2017-03-22 13:37:22', '', '2017-03-22 13:37:22', '', null, '', null, '2017-03-22 13:37:22', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('F75F4D57-C584-44E3-8969-BA10518E4132', '2017-03-22 14:35:36', '', '2017-03-22 14:35:36', '', null, '', null, '2017-03-22 14:35:36', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('F7BCCAE8-0B8C-481A-AFA0-43DDC3C3FE45', '2017-03-22 23:12:41', '', '2017-03-22 23:12:41', '', null, '', null, '2017-03-22 23:12:41', '访问日志', 'Frame/welcome?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('F8138FEB-CFF5-48C4-9200-2E18F450C387', '2017-03-22 13:36:48', '', '2017-03-22 13:36:48', '', null, '', null, '2017-03-22 13:36:48', '访问日志', 'Module/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('F91262AB-9DB7-44D5-9291-938143C5396B', '2017-03-22 09:52:34', '', '2017-03-22 09:52:34', '', null, '', null, '2017-03-22 09:52:34', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('F9728DD1-9241-472C-B680-B386CB5C50F6', '2017-03-22 13:11:09', '', '2017-03-22 13:11:09', '', null, '', null, '2017-03-22 13:11:09', '访问日志', 'Dashboard/index?m_atpid=m1', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('F97BF65E-E880-48B5-8A97-5B1580DB7337', '2017-03-22 22:45:11', '', '2017-03-22 22:45:11', '', null, '', null, '2017-03-22 22:45:11', '访问日志', 'Dashboard/chart1?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('FA8CD370-30A4-474A-80CB-1376BF89363D', '2017-03-22 09:45:47', '', '2017-03-22 09:45:47', '', '', '', null, '2017-03-22 09:45:47', '访问日志', 'Dashboard/index?m_atpid=m1', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('FAAFA010-308B-4F5D-8E53-6598DEB43603', '2017-03-22 14:40:35', '', '2017-03-22 14:40:35', '', null, '', null, '2017-03-22 14:40:35', '访问日志', 'Role/edit?id=7E46C663-EEC9-4CFF-866F-544334789B98', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('FAB1899D-55A2-4DC9-A5DB-FDCE2F1D4D45', '2017-03-22 10:28:25', '', '2017-03-22 10:28:25', '', null, '', null, '2017-03-22 10:28:25', '访问日志', 'Module/edit?id=54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('FB048994-740A-4A95-B86F-92FDB79F0E61', '2017-03-22 23:12:47', '', '2017-03-22 23:12:47', '', null, '', null, '2017-03-22 23:12:47', '访问日志', 'Dashboard/chart1?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('FB3256D6-3ACC-4A51-8A4E-94919BA4C611', '2017-03-22 09:49:55', '', '2017-03-22 09:49:55', '', null, '', null, '2017-03-22 09:49:55', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('FB4573CD-0517-4C18-B3A3-7A8B8972B8FF', '2017-03-22 10:22:55', '', '2017-03-22 10:22:55', '', null, '', null, '2017-03-22 10:22:55', '访问日志', 'Module/edit?id=undefined', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('FB4E4707-88CD-4B72-A808-C55B591A5612', '2017-03-22 22:21:30', '', '2017-03-22 22:21:30', '', null, '', null, '2017-03-22 22:21:30', '访问日志', '?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('FB675F03-3545-4AE9-802A-0D71A317977B', '2017-03-22 11:15:31', '', '2017-03-22 11:15:31', '', null, '', null, '2017-03-22 11:15:31', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('FB7C13BD-E438-46B0-A2A4-3CE8165483F6', '2017-03-22 09:47:43', '', '2017-03-22 09:47:43', '', null, '', null, '2017-03-22 09:47:43', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('FB892624-64D8-439C-9D80-040D31841296', '2017-03-22 10:22:39', '', '2017-03-22 10:22:39', '', null, '', null, '2017-03-22 10:22:39', '访问日志', 'Module/submit?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('FBAF579B-15E2-4C04-86DE-9C6E8729F2B9', '2017-03-22 09:52:26', '', '2017-03-22 09:52:26', '', null, '', null, '2017-03-22 09:52:26', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('FBF40270-E42B-48C9-A449-F1FB1FAEBDE7', '2017-03-22 16:39:02', '', '2017-03-22 16:39:02', '', null, '', null, '2017-03-22 16:39:02', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('FC70554F-EAFA-4D24-BFAA-A8A1A29944E6', '2017-03-22 09:45:48', '', '2017-03-22 09:45:48', '', '', '', null, '2017-03-22 09:45:48', '访问日志', 'Frame?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('FCEF115F-95D3-4228-BEA5-5F03C567FFE8', '2017-03-22 13:44:41', '', '2017-03-22 13:44:41', '', null, '', null, '2017-03-22 13:44:41', '访问日志', 'Role?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('FD39677A-E76C-4E3B-9FB3-54B1A06C8058', '2017-03-22 11:34:12', '', '2017-03-22 11:34:12', '', null, '', null, '2017-03-22 11:34:12', '访问日志', 'Role/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('FDB2BC3A-D9F1-43C2-81B7-2BB4FE843E37', '2017-03-22 16:37:40', '', '2017-03-22 16:37:40', '', null, '', null, '2017-03-22 16:37:40', '访问日志', 'Module/add?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('FE0F066E-5322-40CB-992C-92F70C6C8ADE', '2017-03-22 13:55:59', '', '2017-03-22 13:55:59', '', null, '', null, '2017-03-22 13:55:59', '访问日志', 'User/edit?id=F8087DF6-8BB3-4DAA-A49F-ECBBB01C9336', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('FE41DAB6-B8A9-4E05-9EDB-FEDA20F53FDC', '2017-03-22 13:11:14', '', '2017-03-22 13:11:14', '', null, '', null, '2017-03-22 13:11:14', '访问日志', 'Log/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('FE62E6D2-E196-4D08-810C-55C0CE6C2107', '2017-03-22 22:55:59', '', '2017-03-22 22:55:59', '', null, '', null, '2017-03-22 22:55:59', '访问日志', 'Dashboard/embedpage?m_atpid=04464D50-956F-48FD-9B1C-A0712C74A976', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('FF053DB2-F70C-4BCF-97E8-25D3737245AB', '2017-03-22 22:40:58', '', '2017-03-22 22:40:58', '', null, '', null, '2017-03-22 22:40:58', '访问日志', 'Frame?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('FF24535C-5811-4673-B37F-EACC33E430F6', '2017-03-22 13:32:50', '', '2017-03-22 13:32:50', '', null, '', null, '2017-03-22 13:32:50', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('FF6D065E-5F8F-4AE9-9252-3D8E4DCE7A93', '2017-03-22 14:40:25', '', '2017-03-22 14:40:25', '', null, '', null, '2017-03-22 14:40:25', '访问日志', 'Role/edit?id=70049DBF-664D-47FE-9A63-2A215C1C9197', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('FF79B18A-85D2-46AD-A3CE-7D9C5B926243', '2017-03-22 11:00:47', '', '2017-03-22 11:00:47', '', null, '', null, '2017-03-22 11:00:47', '访问日志', 'Admin/getData?', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('FF92C7BC-4A73-4109-A85F-A11F0DCAC893', '2017-03-22 22:44:26', '', '2017-03-22 22:44:26', '', null, '', null, '2017-03-22 22:44:26', '访问日志', 'Dashboard/embedpage?m_atpid=6A38DDDB-38B4-4C82-8367-326EF35DC448', '0.0.0.0', '', '');
INSERT INTO `newatp_log` VALUES ('FFFC2FB4-5888-4222-BE22-FB0CF2FDAAFB', '2017-03-22 13:40:36', '', '2017-03-22 13:40:36', '', null, '', null, '2017-03-22 13:40:36', '访问日志', 'Role/submit?', '0.0.0.0', '', '');

-- ----------------------------
-- Table structure for newatp_module
-- ----------------------------
DROP TABLE IF EXISTS `newatp_module`;
CREATE TABLE `newatp_module` (
  `m_atpid` varchar(200) NOT NULL,
  `m_atpcreatedatetime` varchar(200) DEFAULT NULL,
  `m_atpcreateuser` varchar(200) DEFAULT NULL,
  `m_atplastmodifydatetime` varchar(200) DEFAULT NULL,
  `m_atplastmodifyuser` varchar(200) DEFAULT NULL,
  `m_atpstatus` varchar(200) DEFAULT NULL,
  `m_atpremark` varchar(200) DEFAULT NULL,
  `m_atpsort` varchar(200) DEFAULT NULL,
  `m_type` varchar(200) DEFAULT NULL,
  `m_subtype` varchar(200) DEFAULT NULL,
  `m_name` varchar(200) DEFAULT NULL,
  `m_code` varchar(200) DEFAULT NULL,
  `m_desc` varchar(200) DEFAULT NULL,
  `m_pic` varchar(200) DEFAULT NULL,
  `m_pid` varchar(200) DEFAULT NULL,
  `m_width` varchar(200) DEFAULT NULL,
  `m_hight` varchar(200) DEFAULT NULL,
  `m_order` varchar(200) DEFAULT NULL,
  `m_url` varchar(200) DEFAULT NULL,
  `m_urltype` varchar(200) DEFAULT NULL,
  `m_urltarget` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`m_atpid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of newatp_module
-- ----------------------------
INSERT INTO `newatp_module` VALUES ('0231142D-E384-4FC3-A207-762D0BC9E5F8', '2017-03-22 10:22:53', '', '2017-03-22 10:28:29', '', 'DEL', null, null, '模块', '123', '1', '1231', '1231', null, '', '', '', '', '', '外链', '_SELF');
INSERT INTO `newatp_module` VALUES ('04464D50-956F-48FD-9B1C-A0712C74A976', '2017-03-22 10:47:57', '', '2017-03-22 22:57:03', '', null, null, null, '内模块', '', '科研生产1', 'kysc1', '科研生产1科研生产1科研生产1科研生产1科研生产1', '2017-03-22/58d1e60bea68c.jpg', '54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '6', '2', '', 'http://www.baidu.com', '外链', '_SELF');
INSERT INTO `newatp_module` VALUES ('44315C25-BDE8-4A5E-8A3F-698376F9E63E', '2017-03-22 10:22:39', '', '2017-03-22 10:28:32', '', 'DEL', null, null, '模块', '', '', '', '', null, '', '', '', '', '', '外链', '_SELF');
INSERT INTO `newatp_module` VALUES ('54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '2017-03-22 10:26:19', '', '2017-03-22 13:54:33', '', null, null, null, '模块', '', '科研生产', 'kysc', '科研生产相关模块', '2017-03-22/58d211999aab5.jpg', null, '12', '5', '0', 'baidu.com', '内链', '_SELF');
INSERT INTO `newatp_module` VALUES ('5AB8AA38-2DEA-4D56-855E-9C0752B43DB4', '2017-03-22 10:26:11', '', '2017-03-22 10:28:32', '', 'DEL', null, null, '模块', '13121313', '', '', '', null, null, '', '', '', '', '外链', '_SELF');
INSERT INTO `newatp_module` VALUES ('688BD005-E517-40EA-AB7F-F8386E03B56C', '2017-03-22 16:37:50', '', '2017-03-22 16:37:50', '', null, null, null, '模块', '', '测试张文磊', '', '', '2017-03-22/58d237dee3094.jpg', null, '', '', '', '', '外链', '_SELF');
INSERT INTO `newatp_module` VALUES ('6A38DDDB-38B4-4C82-8367-326EF35DC448', '2017-03-22 10:48:16', '', '2017-03-22 22:56:31', '', null, null, null, '内模块', '', '科研生产2', 'kysc2', '', '2017-03-22/58d1e5f03f077.jpg', '54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '6', '2', '', 'Dashboard/chart1', '内链', '_SELF');
INSERT INTO `newatp_module` VALUES ('74DCD057-9ABF-465F-964A-038C065F0B0A', '2017-03-22 10:28:36', '', '2017-03-22 10:47:38', '', 'DEL', null, null, '模块', '', '', '2312312', '', null, null, '', '', '', '', '外链', '_SELF');
INSERT INTO `newatp_module` VALUES ('92A1299A-6E21-4C66-BE69-FAEE7D666068', '2017-03-22 13:36:26', '', '2017-03-22 13:36:48', '', null, null, null, '模块', '', '人力资源视图', 'rlzy', '', '2017-03-22/58d20d5a8199e.jpg', null, '2', '3', '', '', '外链', '_SELF');
INSERT INTO `newatp_module` VALUES ('C9280983-B1F6-4191-96DB-5BCEFDD088C8', '2017-03-22 23:13:29', '', '2017-03-22 23:13:29', '', null, null, null, '内模块', '', '测试', '', '', '2017-03-22/58d29499a689f.jpg', '688BD005-E517-40EA-AB7F-F8386E03B56C', '12', '2', '', 'http://www.baidu.com', '外链', '_SELF');

-- ----------------------------
-- Table structure for newatp_role
-- ----------------------------
DROP TABLE IF EXISTS `newatp_role`;
CREATE TABLE `newatp_role` (
  `r_atpid` varchar(200) NOT NULL,
  `r_atpcreatedatetime` varchar(200) DEFAULT NULL,
  `r_atpcreateuser` varchar(200) DEFAULT NULL,
  `r_atplastmodifydatetime` varchar(200) DEFAULT NULL,
  `r_atplastmodifyuser` varchar(200) DEFAULT NULL,
  `r_atpstatus` varchar(200) DEFAULT NULL,
  `r_atpremark` varchar(200) DEFAULT NULL,
  `r_atpsort` varchar(200) DEFAULT NULL,
  `r_name` varchar(200) DEFAULT NULL,
  `r_code` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`r_atpid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of newatp_role
-- ----------------------------
INSERT INTO `newatp_role` VALUES ('38117743-59A4-4C2E-82F1-C7D20D0C86FC', '2017-03-22 11:15:11', '', '2017-03-22 11:15:44', '', 'DEL', null, null, '1232222', '1123');
INSERT INTO `newatp_role` VALUES ('70049DBF-664D-47FE-9A63-2A215C1C9197', '2017-03-22 11:15:50', '', '2017-03-22 16:39:01', '', null, null, null, '陈炜钊', '333');
INSERT INTO `newatp_role` VALUES ('7E46C663-EEC9-4CFF-866F-544334789B98', '2017-03-22 11:15:48', '', '2017-03-22 16:38:06', '', null, null, null, '史向东', '大大');
INSERT INTO `newatp_role` VALUES ('988EC079-E6C2-4D78-9946-D5873B61FD7E', '2017-03-22 11:14:59', '', '2017-03-22 11:15:44', '', 'DEL', null, null, '123222', '1123333');
INSERT INTO `newatp_role` VALUES ('A8BD7DC5-71B5-4A28-9E33-C61C5B3766A0', '2017-03-22 11:14:31', '', '2017-03-22 11:15:46', '', 'DEL', null, null, '123大大', '1123');
INSERT INTO `newatp_role` VALUES ('EFB398FF-A4B4-4B78-96BB-981892E8A4C4', '2017-03-22 16:38:12', '', '2017-03-22 16:39:51', '', null, null, null, '测试', '001');

-- ----------------------------
-- Table structure for newatp_rolemodule
-- ----------------------------
DROP TABLE IF EXISTS `newatp_rolemodule`;
CREATE TABLE `newatp_rolemodule` (
  `rm_atpid` varchar(200) NOT NULL,
  `rm_atpcreatedatetime` varchar(200) DEFAULT NULL,
  `rm_atpcreateuser` varchar(200) DEFAULT NULL,
  `rm_atplastmodifydatetime` varchar(200) DEFAULT NULL,
  `rm_atplastmodifyuser` varchar(200) DEFAULT NULL,
  `rm_atpstatus` varchar(200) DEFAULT NULL,
  `rm_atpremark` varchar(200) DEFAULT NULL,
  `rm_atpsort` varchar(200) DEFAULT NULL,
  `rm_roleid` varchar(200) DEFAULT NULL,
  `rm_moduleid` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`rm_atpid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of newatp_rolemodule
-- ----------------------------
INSERT INTO `newatp_rolemodule` VALUES ('08BE0FC9-F307-45EB-A249-077B1FF4D973', '2017-03-22 16:38:06', '', '2017-03-22 16:38:06', '', null, null, null, '7E46C663-EEC9-4CFF-866F-544334789B98', '688BD005-E517-40EA-AB7F-F8386E03B56C');
INSERT INTO `newatp_rolemodule` VALUES ('0DE01FE8-0AC9-4DA9-A85A-D916A7DBDD63', '2017-03-22 16:36:48', '', '2017-03-22 16:36:48', '', 'DEL', null, null, '70049DBF-664D-47FE-9A63-2A215C1C9197', '92A1299A-6E21-4C66-BE69-FAEE7D666068');
INSERT INTO `newatp_rolemodule` VALUES ('203276D6-A32B-4F4D-9A96-BD0414D2109C', '2017-03-22 16:37:34', '', '2017-03-22 16:37:34', '', 'DEL', null, null, '7E46C663-EEC9-4CFF-866F-544334789B98', '92A1299A-6E21-4C66-BE69-FAEE7D666068');
INSERT INTO `newatp_rolemodule` VALUES ('27101034-81BE-4979-87A7-457D5EBB6032', '2017-03-22 16:36:24', '', '2017-03-22 16:36:24', '', 'DEL', null, null, '70049DBF-664D-47FE-9A63-2A215C1C9197', '92A1299A-6E21-4C66-BE69-FAEE7D666068');
INSERT INTO `newatp_rolemodule` VALUES ('2B846BF4-2818-4854-937A-294EBAF70AAC', '2017-03-22 16:36:29', '', '2017-03-22 16:36:29', '', 'DEL', null, null, '70049DBF-664D-47FE-9A63-2A215C1C9197', '54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0');
INSERT INTO `newatp_rolemodule` VALUES ('4115846D-374C-433D-9D3D-9DB73AB1625B', '2017-03-22 16:38:12', '', '2017-03-22 16:38:12', '', 'DEL', null, null, 'EFB398FF-A4B4-4B78-96BB-981892E8A4C4', '54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0');
INSERT INTO `newatp_rolemodule` VALUES ('475ADC37-B544-4D72-8053-32930525BC22', '2017-03-22 16:37:02', '', '2017-03-22 16:37:02', '', 'DEL', null, null, '7E46C663-EEC9-4CFF-866F-544334789B98', '54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0');
INSERT INTO `newatp_rolemodule` VALUES ('495C7FC6-E93E-4A8F-84B8-58F1BAF068A6', '2017-03-22 16:38:06', '', '2017-03-22 16:38:06', '', null, null, null, '7E46C663-EEC9-4CFF-866F-544334789B98', '54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0');
INSERT INTO `newatp_rolemodule` VALUES ('77F98AEF-9D47-43C3-860C-C68CCF37DED8', '2017-03-22 16:37:18', '', '2017-03-22 16:37:18', '', 'DEL', null, null, '70049DBF-664D-47FE-9A63-2A215C1C9197', '92A1299A-6E21-4C66-BE69-FAEE7D666068');
INSERT INTO `newatp_rolemodule` VALUES ('7C615FC5-FA55-428B-B5BA-CD56739A5B63', '2017-03-22 16:37:02', '', '2017-03-22 16:37:02', '', 'DEL', null, null, '7E46C663-EEC9-4CFF-866F-544334789B98', '92A1299A-6E21-4C66-BE69-FAEE7D666068');
INSERT INTO `newatp_rolemodule` VALUES ('8D862890-6B9C-4A48-AE43-6150571C5EC5', '2017-03-22 16:36:24', '', '2017-03-22 16:36:24', '', 'DEL', null, null, '70049DBF-664D-47FE-9A63-2A215C1C9197', '54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0');
INSERT INTO `newatp_rolemodule` VALUES ('91BD7BD5-D163-4E52-A472-BA77AE87B110', '2017-03-22 16:38:01', '', '2017-03-22 16:38:01', '', 'DEL', null, null, '7E46C663-EEC9-4CFF-866F-544334789B98', '92A1299A-6E21-4C66-BE69-FAEE7D666068');
INSERT INTO `newatp_rolemodule` VALUES ('97C8E92D-3925-487B-A234-11226A31F40F', '2017-03-22 16:39:51', '', '2017-03-22 16:39:51', '', null, null, null, 'EFB398FF-A4B4-4B78-96BB-981892E8A4C4', '92A1299A-6E21-4C66-BE69-FAEE7D666068');
INSERT INTO `newatp_rolemodule` VALUES ('9C82E6EC-1730-4E2A-AB45-73839E2D287A', '2017-03-22 16:38:01', '', '2017-03-22 16:38:01', '', 'DEL', null, null, '7E46C663-EEC9-4CFF-866F-544334789B98', '688BD005-E517-40EA-AB7F-F8386E03B56C');
INSERT INTO `newatp_rolemodule` VALUES ('A1FF6BD3-DB33-4F39-AA69-2017AFB5D75E', '2017-03-22 16:36:54', '', '2017-03-22 16:36:54', '', 'DEL', null, null, '70049DBF-664D-47FE-9A63-2A215C1C9197', '54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0');
INSERT INTO `newatp_rolemodule` VALUES ('A5555FC8-FEFD-422F-83E0-0B1ECCDF89BD', '2017-03-22 16:37:37', '', '2017-03-22 16:37:37', '', 'DEL', null, null, '70049DBF-664D-47FE-9A63-2A215C1C9197', '54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0');
INSERT INTO `newatp_rolemodule` VALUES ('A55C9299-9BC0-4122-BB90-EBF766F24174', '2017-03-22 16:39:01', '', '2017-03-22 16:39:01', '', null, null, null, '70049DBF-664D-47FE-9A63-2A215C1C9197', '54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0');
INSERT INTO `newatp_rolemodule` VALUES ('AA042CDB-F55C-4ACB-921E-717D71A2577E', '2017-03-22 16:36:35', '', '2017-03-22 16:36:35', '', 'DEL', null, null, '7E46C663-EEC9-4CFF-866F-544334789B98', '54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0');
INSERT INTO `newatp_rolemodule` VALUES ('C5FBCD7E-F925-447B-9D09-B46117F3900C', '2017-03-22 16:39:46', '', '2017-03-22 16:39:46', '', 'DEL', null, null, 'EFB398FF-A4B4-4B78-96BB-981892E8A4C4', '92A1299A-6E21-4C66-BE69-FAEE7D666068');
INSERT INTO `newatp_rolemodule` VALUES ('CFAC61C7-3298-4789-9808-CDE34AF7746B', '2017-03-22 16:38:06', '', '2017-03-22 16:38:06', '', null, null, null, '7E46C663-EEC9-4CFF-866F-544334789B98', '92A1299A-6E21-4C66-BE69-FAEE7D666068');
INSERT INTO `newatp_rolemodule` VALUES ('D0ECA0B1-73F1-4E93-84CD-539F3DA8C0AC', '2017-03-22 16:36:35', '', '2017-03-22 16:36:35', '', 'DEL', null, null, '7E46C663-EEC9-4CFF-866F-544334789B98', '92A1299A-6E21-4C66-BE69-FAEE7D666068');
INSERT INTO `newatp_rolemodule` VALUES ('E829353D-0885-4B91-9334-184BE7BA68BB', '2017-03-22 16:36:48', '', '2017-03-22 16:36:48', '', 'DEL', null, null, '70049DBF-664D-47FE-9A63-2A215C1C9197', '54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0');
INSERT INTO `newatp_rolemodule` VALUES ('F04CEDB7-2C38-4E56-9355-0B4F92795DD4', '2017-03-22 16:39:01', '', '2017-03-22 16:39:01', '', null, null, null, '70049DBF-664D-47FE-9A63-2A215C1C9197', '92A1299A-6E21-4C66-BE69-FAEE7D666068');
INSERT INTO `newatp_rolemodule` VALUES ('F3EFBE6A-0D4F-42F3-BE6D-2B0FE40D2EB4', '2017-03-22 16:36:54', '', '2017-03-22 16:36:54', '', 'DEL', null, null, '70049DBF-664D-47FE-9A63-2A215C1C9197', '92A1299A-6E21-4C66-BE69-FAEE7D666068');
INSERT INTO `newatp_rolemodule` VALUES ('F51070F1-31C8-431C-B3E5-8D30A024080D', '2017-03-22 16:37:18', '', '2017-03-22 16:37:18', '', 'DEL', null, null, '70049DBF-664D-47FE-9A63-2A215C1C9197', '54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0');

-- ----------------------------
-- Table structure for newatp_user
-- ----------------------------
DROP TABLE IF EXISTS `newatp_user`;
CREATE TABLE `newatp_user` (
  `u_atpid` varchar(200) NOT NULL,
  `u_atpcreatedatetime` varchar(200) DEFAULT NULL,
  `u_atpcreateuser` varchar(200) DEFAULT NULL,
  `u_atplastmodifydatetime` varchar(200) DEFAULT NULL,
  `u_atplastmodifyuser` varchar(200) DEFAULT NULL,
  `u_atpstatus` varchar(200) DEFAULT NULL,
  `u_atpremark` varchar(200) DEFAULT NULL,
  `u_atpsort` varchar(200) DEFAULT NULL,
  `u_account` varchar(200) DEFAULT NULL,
  `u_password` varchar(200) DEFAULT NULL,
  `u_domainaccount` varchar(200) DEFAULT NULL,
  `u_department` varchar(200) DEFAULT NULL,
  `u_work` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`u_atpid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of newatp_user
-- ----------------------------
INSERT INTO `newatp_user` VALUES ('106DCE46-A7DD-4717-937A-C905E7BE8F69', '2017-03-22 11:21:15', '', '2017-03-22 11:22:28', '', 'DEL', null, null, '的点点滴滴', '1231', '1231', '1231', '12312321');
INSERT INTO `newatp_user` VALUES ('59ABBB29-1DDA-4D1D-A29E-348EB81A7A92', '2017-03-22 11:22:36', '', '2017-03-22 11:23:01', '', 'DEL', null, null, ' 阿萨达安安', '', ' ', '', '');
INSERT INTO `newatp_user` VALUES ('F8087DF6-8BB3-4DAA-A49F-ECBBB01C9336', '2017-03-22 11:22:31', '', '2017-03-22 22:32:01', '', null, null, null, '撒打算', '', '', '', '');

-- ----------------------------
-- Table structure for newatp_userconfig
-- ----------------------------
DROP TABLE IF EXISTS `newatp_userconfig`;
CREATE TABLE `newatp_userconfig` (
  `uc_atpid` varchar(200) NOT NULL,
  `uc_atpcreatedatetime` varchar(200) DEFAULT NULL,
  `uc_atpcreateuser` varchar(200) DEFAULT NULL,
  `uc_atplastmodifydatetime` varchar(200) DEFAULT NULL,
  `uc_atplastmodifyuser` varchar(200) DEFAULT NULL,
  `uc_atpstatus` varchar(200) DEFAULT NULL,
  `uc_atpremark` varchar(200) DEFAULT NULL,
  `uc_atpsort` varchar(200) DEFAULT NULL,
  `uc_userid` varchar(200) DEFAULT NULL,
  `uc_moduleid1` varchar(200) DEFAULT NULL,
  `uc_moduleid2` varchar(200) DEFAULT NULL,
  `uc_width` varchar(200) DEFAULT NULL,
  `uc_hight` varchar(200) DEFAULT NULL,
  `uc_order` varchar(200) DEFAULT NULL,
  `uc_isopen` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`uc_atpid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of newatp_userconfig
-- ----------------------------
INSERT INTO `newatp_userconfig` VALUES ('iid544bfc78-0f12-11e7-b49f-005056c00001', '2017-03-22 23:13:32', '', '2017-03-22 23:13:32', '', null, null, null, '', '688BD005-E517-40EA-AB7F-F8386E03B56C', 'C9280983-B1F6-4191-96DB-5BCEFDD088C8', '12', '2', '', '打开');
INSERT INTO `newatp_userconfig` VALUES ('iid5a389834-0f12-11e7-b49f-005056c00001', '2017-03-22 23:13:42', '', '2017-03-22 23:13:42', '', null, null, null, '', '54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '04464D50-956F-48FD-9B1C-A0712C74A976', '6', '2', '', '打开');
INSERT INTO `newatp_userconfig` VALUES ('iid5a38b6a5-0f12-11e7-b49f-005056c00001', '2017-03-22 23:13:42', '', '2017-03-22 23:13:42', '', null, null, null, '', '54DBDDEE-9C59-4EAD-82CF-FF59886CBEE0', '6A38DDDB-38B4-4C82-8367-326EF35DC448', '6', '2', '', '打开');

-- ----------------------------
-- Table structure for newatp_userfunc
-- ----------------------------
DROP TABLE IF EXISTS `newatp_userfunc`;
CREATE TABLE `newatp_userfunc` (
  `u_atpid` varchar(200) NOT NULL,
  `u_atpcreatedatetime` varchar(200) DEFAULT NULL,
  `u_atpcreateuser` varchar(200) DEFAULT NULL,
  `u_atplastmodifydatetime` varchar(200) DEFAULT NULL,
  `u_atplastmodifyuser` varchar(200) DEFAULT NULL,
  `u_atpstatus` varchar(200) DEFAULT NULL COMMENT '默认为[null],删除后内容更改为[DEL]',
  `u_account` varchar(200) DEFAULT NULL COMMENT '账号，字符串',
  `u_password` varchar(200) DEFAULT NULL COMMENT '密码，密码框',
  `u_name` varchar(200) DEFAULT NULL COMMENT '名称，字符串',
  `u_birthday` varchar(200) DEFAULT NULL COMMENT '出生日期，日期选择',
  `u_regdatetime` varchar(200) DEFAULT NULL COMMENT '注册时间，日期时间选择',
  `u_resttime` varchar(200) DEFAULT NULL COMMENT '休息时间，时间选择',
  `u_age` varchar(200) DEFAULT NULL COMMENT '年龄，整数选择',
  `u_rax` varchar(200) DEFAULT NULL COMMENT '税，小数选择',
  `u_money` varchar(200) DEFAULT NULL COMMENT '收入，费用选择',
  `u_role` varchar(200) DEFAULT NULL COMMENT '角色，固定下拉框选择',
  `u_issuper` varchar(200) DEFAULT NULL COMMENT '特长生，单选开关',
  `u_refereeid` varchar(200) DEFAULT NULL COMMENT '推荐人，外键选择',
  `u_filename` varchar(200) DEFAULT NULL COMMENT '文件名',
  `u_filelocation` varchar(200) DEFAULT NULL COMMENT '文件路径',
  `u_content` text COMMENT '学生详情，图文混编',
  PRIMARY KEY (`u_atpid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of newatp_userfunc
-- ----------------------------
INSERT INTO `newatp_userfunc` VALUES ('9A5BC5EF-B252-43C5-90FC-383B627DDCDD', '2017-03-22 09:19:13', '', '2017-03-22 10:57:15', '', null, '123', '55', '44', '2017-03-07', '2017-03-23 09:19:25', '09:19:30', '33', '', '', '安全员', '是', '9A5BC5EF-B252-43C5-90FC-383B627DDCDD', '2017-03-22/58d1e80bb8b80.jpg', null, null);

-- ----------------------------
-- Table structure for newatp_userrole
-- ----------------------------
DROP TABLE IF EXISTS `newatp_userrole`;
CREATE TABLE `newatp_userrole` (
  `ur_atpid` varchar(200) NOT NULL,
  `ur_atpcreatedatetime` varchar(200) DEFAULT NULL,
  `ur_atpcreateuser` varchar(200) DEFAULT NULL,
  `ur_atplastmodifydatetime` varchar(200) DEFAULT NULL,
  `ur_atplastmodifyuser` varchar(200) DEFAULT NULL,
  `ur_atpstatus` varchar(200) DEFAULT NULL,
  `ur_atpremark` varchar(200) DEFAULT NULL,
  `ur_atpsort` varchar(200) DEFAULT NULL,
  `ur_userid` varchar(200) DEFAULT NULL,
  `ur_roleid` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ur_atpid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of newatp_userrole
-- ----------------------------
INSERT INTO `newatp_userrole` VALUES ('1739E057-1538-4C48-A9F8-A7F10B99F82A', '2017-03-22 22:31:54', '', '2017-03-22 22:31:54', '', 'DEL', null, null, 'F8087DF6-8BB3-4DAA-A49F-ECBBB01C9336', '70049DBF-664D-47FE-9A63-2A215C1C9197');
INSERT INTO `newatp_userrole` VALUES ('3A058B3F-EB4B-491F-BFB2-69CE11F054CD', '2017-03-22 22:31:39', '', '2017-03-22 22:31:39', '', 'DEL', null, null, 'F8087DF6-8BB3-4DAA-A49F-ECBBB01C9336', '7E46C663-EEC9-4CFF-866F-544334789B98');
INSERT INTO `newatp_userrole` VALUES ('51847E9E-6DAF-4057-AA65-36950F50C918', '2017-03-22 22:31:54', '', '2017-03-22 22:31:54', '', 'DEL', null, null, 'F8087DF6-8BB3-4DAA-A49F-ECBBB01C9336', '7E46C663-EEC9-4CFF-866F-544334789B98');
INSERT INTO `newatp_userrole` VALUES ('566DE7BE-7B61-42AA-8354-F85319B3AF0B', '2017-03-22 22:32:01', '', '2017-03-22 22:32:01', '', null, null, null, 'F8087DF6-8BB3-4DAA-A49F-ECBBB01C9336', 'EFB398FF-A4B4-4B78-96BB-981892E8A4C4');
INSERT INTO `newatp_userrole` VALUES ('C263C2B7-E806-4796-83C5-E485C35CEB1E', '2017-03-22 22:31:54', '', '2017-03-22 22:31:54', '', 'DEL', null, null, 'F8087DF6-8BB3-4DAA-A49F-ECBBB01C9336', 'EFB398FF-A4B4-4B78-96BB-981892E8A4C4');
INSERT INTO `newatp_userrole` VALUES ('E90548B8-DE34-47D2-9878-D0C2334F6064', '2017-03-22 22:31:39', '', '2017-03-22 22:31:39', '', 'DEL', null, null, 'F8087DF6-8BB3-4DAA-A49F-ECBBB01C9336', '70049DBF-664D-47FE-9A63-2A215C1C9197');
