/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50151
Source Host           : localhost:3306
Source Database       : city

Target Server Type    : MYSQL
Target Server Version : 50151
File Encoding         : 65001

Date: 2016-01-13 17:29:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_info`
-- ----------------------------
DROP TABLE IF EXISTS `tb_info`;
CREATE TABLE `tb_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `INFO_TYPE` int(11) DEFAULT NULL,
  `INFO_TITLE` varchar(80) DEFAULT NULL,
  `INFO_LINKMAN` varchar(50) DEFAULT NULL,
  `INFO_PHONE` varchar(11) DEFAULT NULL,
  `INFO_DATE` date DEFAULT NULL,
  `INFO_STATE` varchar(10) DEFAULT NULL,
  `INFO_CONTENT` varchar(1000) DEFAULT NULL,
  `INFO_EMAIL` varchar(30) DEFAULT NULL,
  `INFO_PAYFOR` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `INFO_TYPE` (`INFO_TYPE`),
  CONSTRAINT `tb_info_ibfk_1` FOREIGN KEY (`INFO_TYPE`) REFERENCES `tb_type` (`TYPE_SIGN`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_info
-- ----------------------------
INSERT INTO `tb_info` VALUES ('111', '1', '招聘信息标题', '明明', '13222228888', '2014-12-11', '1', '招聘信息内容', 'mm@qq.com', '1');
INSERT INTO `tb_info` VALUES ('112', '2', '培训信息标题', '明明', '13222228888', '2014-12-12', '0', '增训信息内容', 'mm@qq.com', '0');
INSERT INTO `tb_info` VALUES ('113', '3', '房屋信息标题', '明明', '13222228888', '2014-12-13', '1', '房屋信息内容', 'mm@qq.com', '1');
INSERT INTO `tb_info` VALUES ('114', '4', '求购信息标题', '芳芳', '13222226666', '2014-12-14', '1', '求购信息内容', 'ff@163.com', '1');
INSERT INTO `tb_info` VALUES ('115', '5', '招商引资标题', '芳芳', '13222226666', '2014-12-15', '1', '招商引资内容', 'ff@163.com', '1');
INSERT INTO `tb_info` VALUES ('116', '6', '公寓信息标题', '芳芳', '13222226666', '2014-12-16', '0', '公寓信息内容', 'ff@163.com', '0');
INSERT INTO `tb_info` VALUES ('117', '7', '求职信息标题', '芳芳', '13222226666', '2014-12-17', '1', '求职信息内容', 'ff@163.com', '1');
INSERT INTO `tb_info` VALUES ('118', '8', '家教信息标题', '小兔', '13255557777', '2014-12-17', '1', '家教信息内容', 'xt@163.com', '1');
INSERT INTO `tb_info` VALUES ('119', '9', '车辆信息标题', '小兔', '13255557777', '2014-12-18', '1', '车辆信息内容', 'xt@163.com', '0');
INSERT INTO `tb_info` VALUES ('120', '10', '出售信息标题', '小兔', '13255557777', '2014-12-20', '1', '出售信息内容', 'xt@163.com', '1');
INSERT INTO `tb_info` VALUES ('121', '11', '寻找启示标题', '小兔', '13255557777', '2014-12-21', '1', '寻找启示内容', 'xt@163.com', '1');
INSERT INTO `tb_info` VALUES ('123', '2', '标题', '111', '13744448888', '2015-10-05', '0', '1111', 'q@qq.com', '1');
INSERT INTO `tb_info` VALUES ('124', '1', '标题', '1', '13744448888', '2015-10-05', '1', '1', '1@qq.com', '1');
INSERT INTO `tb_info` VALUES ('125', '1', '啊', '汪', '13744448888', '2015-10-05', '1', '123', '1@qq.com', '0');

-- ----------------------------
-- Table structure for `tb_type`
-- ----------------------------
DROP TABLE IF EXISTS `tb_type`;
CREATE TABLE `tb_type` (
  `TYPE_SIGN` int(11) NOT NULL AUTO_INCREMENT,
  `TYPE_NAME` varchar(20) NOT NULL,
  `TYPE_INTRO` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`TYPE_SIGN`),
  KEY `TYPE_SIGN` (`TYPE_SIGN`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_type
-- ----------------------------
INSERT INTO `tb_type` VALUES ('1', 'recruit', '招聘信息');
INSERT INTO `tb_type` VALUES ('2', 'training', '培训信息');
INSERT INTO `tb_type` VALUES ('3', 'house', '房屋信息');
INSERT INTO `tb_type` VALUES ('4', 'buy', '求购信息');
INSERT INTO `tb_type` VALUES ('5', 'invite', '招商引资');
INSERT INTO `tb_type` VALUES ('6', 'apartment', '公寓信息');
INSERT INTO `tb_type` VALUES ('7', 'apply', '求职信息');
INSERT INTO `tb_type` VALUES ('8', 'tutor', '家教信息');
INSERT INTO `tb_type` VALUES ('9', 'car', '车辆信息');
INSERT INTO `tb_type` VALUES ('10', 'sale', '出售信息');
INSERT INTO `tb_type` VALUES ('11', 'search', '寻找启示');

-- ----------------------------
-- Table structure for `tb_user`
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `USER_NAME` varchar(20) NOT NULL,
  `USER_PASSWORD` varchar(30) NOT NULL,
  `USER_TYPE` int(4) NOT NULL,
  `USER_STATE` int(4) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', 'admin', '123', '0', '0');
INSERT INTO `tb_user` VALUES ('2', 'a', '123', '0', '0');
INSERT INTO `tb_user` VALUES ('26', 'c', '888888', '0', '0');
INSERT INTO `tb_user` VALUES ('29', 'aa', '1234567', '0', '1');
INSERT INTO `tb_user` VALUES ('30', 'aaa', '123', '0', '1');
INSERT INTO `tb_user` VALUES ('31', 'aaaa', '1', '0', '1');
INSERT INTO `tb_user` VALUES ('32', 'aaaaa', '1', '0', '1');
INSERT INTO `tb_user` VALUES ('33', 'cc', '123', '0', '0');
