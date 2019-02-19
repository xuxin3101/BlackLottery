/*
Navicat MySQL Data Transfer

Source Server         : 诚信科技
Source Server Version : 50641
Source Host           : 47.107.60.226:3306
Source Database       : bet

Target Server Type    : MYSQL
Target Server Version : 50641
File Encoding         : 65001

Date: 2019-02-15 15:08:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `bet20190201`
-- ----------------------------
DROP TABLE IF EXISTS `bet20190201`;
CREATE TABLE `bet20190201` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `type` int(2) NOT NULL,
  `amount` int(6) NOT NULL,
  `time` datetime NOT NULL,
  `periods` int(3) NOT NULL,
  `ballnum` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`,`time`),
  CONSTRAINT `bet20190201_ibfk_1` FOREIGN KEY (`username`) REFERENCES `BlackLottery`.`users` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bet20190201
-- ----------------------------
INSERT INTO `bet20190201` VALUES ('30', 'admin', '7', '1000', '2019-02-07 17:28:30', '1', '2');
INSERT INTO `bet20190201` VALUES ('31', 'admin', '7', '1000', '2019-02-07 17:29:02', '1', '0');

-- ----------------------------
-- Table structure for `bet20190208`
-- ----------------------------
DROP TABLE IF EXISTS `bet20190208`;
CREATE TABLE `bet20190208` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `type` int(2) NOT NULL,
  `amount` int(6) NOT NULL,
  `time` datetime NOT NULL,
  `periods` int(3) NOT NULL,
  `ballnum` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`,`time`,`type`) USING BTREE,
  CONSTRAINT `bet20190208 _ibfk_1` FOREIGN KEY (`username`) REFERENCES `BlackLottery`.`users` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bet20190208
-- ----------------------------
INSERT INTO `bet20190208` VALUES ('32', 'admin', '3', '100000', '2019-02-08 21:05:47', '1', null);
INSERT INTO `bet20190208` VALUES ('33', 'admin', '1', '10000', '2019-02-08 21:06:29', '1', '0');
INSERT INTO `bet20190208` VALUES ('34', 'admin', '2', '10000', '2019-02-08 21:07:03', '1', '0');
INSERT INTO `bet20190208` VALUES ('35', 'admin', '2', '10000', '2019-02-08 21:25:55', '2', '0');
INSERT INTO `bet20190208` VALUES ('36', 'admin', '6', '100000', '2019-02-08 21:26:21', '2', '0');
INSERT INTO `bet20190208` VALUES ('37', 'admin', '8', '1000', '2019-02-09 10:27:37', '30', null);
INSERT INTO `bet20190208` VALUES ('38', 'admin', '8', '1000', '2019-02-09 10:32:56', '30', null);
INSERT INTO `bet20190208` VALUES ('41', 'admin', '9', '100', '2019-02-09 10:32:56', '30', null);
INSERT INTO `bet20190208` VALUES ('63', 'admin', '3', '100', '2019-02-09 11:25:50', '30', null);
INSERT INTO `bet20190208` VALUES ('64', 'admin', '5', '100', '2019-02-09 11:25:50', '30', null);
INSERT INTO `bet20190208` VALUES ('65', 'admin', '9', '100', '2019-02-09 11:26:06', '30', null);
INSERT INTO `bet20190208` VALUES ('66', 'admin', '10', '100', '2019-02-09 11:26:06', '30', null);
INSERT INTO `bet20190208` VALUES ('67', 'admin', '11', '100', '2019-02-09 11:26:06', '30', null);
INSERT INTO `bet20190208` VALUES ('68', 'admin', '18', '100', '2019-02-09 11:38:30', '30', null);
INSERT INTO `bet20190208` VALUES ('69', 'admin', '18', '1000', '2019-02-09 12:29:46', '31', null);
INSERT INTO `bet20190208` VALUES ('70', 'admin', '18', '1000', '2019-02-09 12:29:54', '31', null);
INSERT INTO `bet20190208` VALUES ('71', 'admin', '18', '1000', '2019-02-09 12:42:52', '32', null);

-- ----------------------------
-- Table structure for `bet20190209`
-- ----------------------------
DROP TABLE IF EXISTS `bet20190209`;
CREATE TABLE `bet20190209` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `type` int(2) NOT NULL,
  `amount` int(6) NOT NULL,
  `time` datetime NOT NULL,
  `periods` int(3) NOT NULL,
  `ballnum` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`,`time`,`type`),
  CONSTRAINT `bet20190209 _ibfk_1` FOREIGN KEY (`username`) REFERENCES `BlackLottery`.`users` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bet20190209
-- ----------------------------
INSERT INTO `bet20190209` VALUES ('32', 'admin', '18', '100', '2019-02-09 13:32:50', '1', null);
INSERT INTO `bet20190209` VALUES ('33', 'admin', '8', '1000', '2019-02-09 16:29:41', '5', null);
INSERT INTO `bet20190209` VALUES ('34', 'admin11', '17', '100', '2019-02-09 16:36:22', '6', null);
INSERT INTO `bet20190209` VALUES ('35', 'admin', '18', '100', '2019-02-09 16:45:44', '7', null);
INSERT INTO `bet20190209` VALUES ('36', 'admin11', '3', '2000', '2019-02-09 17:43:44', '17', null);
INSERT INTO `bet20190209` VALUES ('37', 'admin', '17', '1000', '2019-02-09 19:47:01', '24', null);
INSERT INTO `bet20190209` VALUES ('38', 'admin', '5', '1000', '2019-02-09 20:19:41', '28', null);
INSERT INTO `bet20190209` VALUES ('39', 'admin', '8', '1000', '2019-02-09 20:21:10', '28', null);
INSERT INTO `bet20190209` VALUES ('40', 'admin', '8', '100', '2019-02-09 20:21:32', '28', null);
INSERT INTO `bet20190209` VALUES ('41', 'admin', '8', '100', '2019-02-09 20:22:14', '30', null);
INSERT INTO `bet20190209` VALUES ('43', 'admin', '26', '100', '2019-02-09 21:59:12', '46', '5');
INSERT INTO `bet20190209` VALUES ('44', 'admin', '31', '1000', '2019-02-09 22:09:11', '49', null);
INSERT INTO `bet20190209` VALUES ('45', 'admin', '31', '3', '2019-02-09 22:19:01', '50', null);
INSERT INTO `bet20190209` VALUES ('46', 'admin', '31', '3', '2019-02-09 22:20:04', '50', null);
INSERT INTO `bet20190209` VALUES ('47', 'admin', '31', '100', '2019-02-09 22:22:05', '51', '3');

-- ----------------------------
-- Table structure for `bet20190210`
-- ----------------------------
DROP TABLE IF EXISTS `bet20190210`;
CREATE TABLE `bet20190210` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `type` int(2) NOT NULL,
  `amount` int(6) NOT NULL,
  `time` datetime NOT NULL,
  `periods` int(3) NOT NULL,
  `ballnum` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`,`time`,`type`),
  CONSTRAINT `bet20190210 _ibfk_1` FOREIGN KEY (`username`) REFERENCES `BlackLottery`.`users` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bet20190210
-- ----------------------------
INSERT INTO `bet20190210` VALUES ('32', 'admin', '31', '1000', '2019-02-10 14:10:19', '1', '3');

-- ----------------------------
-- Table structure for `bet20190211`
-- ----------------------------
DROP TABLE IF EXISTS `bet20190211`;
CREATE TABLE `bet20190211` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `type` int(2) NOT NULL,
  `amount` int(6) NOT NULL,
  `time` datetime NOT NULL,
  `periods` int(3) NOT NULL,
  `ballnum` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`,`time`,`type`),
  CONSTRAINT `bet20190211 _ibfk_1` FOREIGN KEY (`username`) REFERENCES `BlackLottery`.`users` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bet20190211
-- ----------------------------
INSERT INTO `bet20190211` VALUES ('32', 'admin11', '3', '1000', '2019-02-11 20:51:33', '9', null);
INSERT INTO `bet20190211` VALUES ('33', 'admin11', '8', '500', '2019-02-11 20:51:42', '9', null);
INSERT INTO `bet20190211` VALUES ('34', 'admin11', '30', '500', '2019-02-11 20:52:01', '9', '15');
INSERT INTO `bet20190211` VALUES ('35', 'admin11', '30', '500', '2019-02-11 20:53:03', '9', '1');
INSERT INTO `bet20190211` VALUES ('36', 'admin11', '29', '500', '2019-02-11 20:53:09', '10', '1');
INSERT INTO `bet20190211` VALUES ('37', 'admin', '3', '100', '2019-02-12 01:37:09', '31', null);
INSERT INTO `bet20190211` VALUES ('38', 'admin', '1', '100', '2019-02-12 01:43:18', '31', '0');
INSERT INTO `bet20190211` VALUES ('39', 'admin', '1', '100', '2019-02-12 01:44:41', '31', '0');
INSERT INTO `bet20190211` VALUES ('40', 'admin', '6', '100', '2019-02-12 01:44:41', '31', '0');
INSERT INTO `bet20190211` VALUES ('41', '12345678', '3', '5000', '2019-02-12 02:04:28', '32', null);
INSERT INTO `bet20190211` VALUES ('42', '12345678', '4', '10000', '2019-02-12 02:04:45', '32', null);

-- ----------------------------
-- Table structure for `bet20190212`
-- ----------------------------
DROP TABLE IF EXISTS `bet20190212`;
CREATE TABLE `bet20190212` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `type` int(2) NOT NULL,
  `amount` int(6) NOT NULL,
  `time` datetime NOT NULL,
  `periods` int(3) NOT NULL,
  `ballnum` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`,`time`,`type`,`ballnum`) USING BTREE,
  CONSTRAINT `bet20190212 _ibfk_1` FOREIGN KEY (`username`) REFERENCES `BlackLottery`.`users` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bet20190212
-- ----------------------------
INSERT INTO `bet20190212` VALUES ('34', 'admin', '3', '100', '2019-02-12 10:21:10', '1', null);
INSERT INTO `bet20190212` VALUES ('39', 'admin', '6', '100', '2019-02-12 10:28:14', '1', '0');
INSERT INTO `bet20190212` VALUES ('40', 'admin', '26', '100', '2019-02-12 10:28:53', '1', '2');
INSERT INTO `bet20190212` VALUES ('43', 'admin', '1', '100', '2019-02-12 10:29:46', '1', '0');
INSERT INTO `bet20190212` VALUES ('44', 'admin', '2', '100', '2019-02-12 10:29:46', '1', '0');
INSERT INTO `bet20190212` VALUES ('47', 'admin', '26', '100', '2019-02-12 10:31:07', '1', '3');
INSERT INTO `bet20190212` VALUES ('48', 'admin', '26', '100', '2019-02-12 10:31:07', '1', '9');
INSERT INTO `bet20190212` VALUES ('49', 'aaaaaaa', '3', '100', '2019-02-12 21:16:18', '32', null);
INSERT INTO `bet20190212` VALUES ('51', 'admin', '3', '100', '2019-02-12 21:16:52', '32', null);
INSERT INTO `bet20190212` VALUES ('52', 'admin', '26', '100', '2019-02-12 21:17:12', '32', '0');
INSERT INTO `bet20190212` VALUES ('53', 'admin', '26', '100', '2019-02-12 21:17:12', '32', '2');
INSERT INTO `bet20190212` VALUES ('55', 'admin', '6', '100', '2019-02-12 21:17:28', '32', '0');
INSERT INTO `bet20190212` VALUES ('56', 'admin', '7', '100', '2019-02-12 21:17:37', '32', '5');
INSERT INTO `bet20190212` VALUES ('57', 'aaaaaaa', '4', '100', '2019-02-12 21:18:11', '32', null);
INSERT INTO `bet20190212` VALUES ('58', 'admin', '1', '100', '2019-02-12 21:18:39', '32', '0');
INSERT INTO `bet20190212` VALUES ('59', 'aaaaaaa', '2', '100', '2019-02-12 21:19:00', '32', '0');
INSERT INTO `bet20190212` VALUES ('60', 'aaaaaaa', '6', '100', '2019-02-12 21:19:12', '32', '0');
INSERT INTO `bet20190212` VALUES ('61', 'aaaaaaa', '7', '100', '2019-02-12 21:19:25', '32', '5');
INSERT INTO `bet20190212` VALUES ('62', '12345678', '3', '500', '2019-02-12 23:05:10', '51', null);
INSERT INTO `bet20190212` VALUES ('63', '12345678', '4', '1000', '2019-02-12 23:05:10', '51', null);
INSERT INTO `bet20190212` VALUES ('64', '12345678', '3', '700', '2019-02-12 23:14:43', '54', null);
INSERT INTO `bet20190212` VALUES ('65', '12345678', '4', '1000', '2019-02-12 23:14:43', '54', null);
INSERT INTO `bet20190212` VALUES ('66', '12345678', '5', '100', '2019-02-12 23:14:43', '54', null);
INSERT INTO `bet20190212` VALUES ('67', '12345678', '26', '200', '2019-02-12 23:16:06', '54', '3');
INSERT INTO `bet20190212` VALUES ('68', '12345678', '26', '200', '2019-02-12 23:16:11', '54', '4');
INSERT INTO `bet20190212` VALUES ('69', '12345678', '26', '200', '2019-02-12 23:16:15', '54', '4');
INSERT INTO `bet20190212` VALUES ('70', '12345678', '26', '200', '2019-02-12 23:16:15', '54', '5');
INSERT INTO `bet20190212` VALUES ('71', '12345678', '26', '200', '2019-02-12 23:16:23', '54', '6');
INSERT INTO `bet20190212` VALUES ('72', '12345678', '26', '200', '2019-02-12 23:16:23', '54', '7');
INSERT INTO `bet20190212` VALUES ('73', '12345678', '26', '200', '2019-02-12 23:16:27', '54', '8');
INSERT INTO `bet20190212` VALUES ('74', '12345678', '26', '200', '2019-02-12 23:16:27', '54', '9');
INSERT INTO `bet20190212` VALUES ('75', '12345678', '26', '200', '2019-02-12 23:16:30', '54', '8');
INSERT INTO `bet20190212` VALUES ('76', '12345678', '26', '200', '2019-02-12 23:16:30', '54', '9');
INSERT INTO `bet20190212` VALUES ('77', '12345678', '26', '200', '2019-02-12 23:16:30', '54', '1');
INSERT INTO `bet20190212` VALUES ('78', '12345678', '26', '200', '2019-02-12 23:16:30', '54', '2');
INSERT INTO `bet20190212` VALUES ('79', '12345678', '3', '300', '2019-02-12 23:22:05', '56', null);
INSERT INTO `bet20190212` VALUES ('80', '12345678', '4', '500', '2019-02-12 23:22:05', '56', null);
INSERT INTO `bet20190212` VALUES ('81', '12345678', '5', '20', '2019-02-12 23:22:05', '56', null);
INSERT INTO `bet20190212` VALUES ('82', '12345678', '1', '400', '2019-02-12 23:22:24', '56', '0');
INSERT INTO `bet20190212` VALUES ('83', '12345678', '28', '100', '2019-02-12 23:23:29', '56', '2');
INSERT INTO `bet20190212` VALUES ('84', '12345678', '28', '100', '2019-02-12 23:23:43', '56', '1');
INSERT INTO `bet20190212` VALUES ('85', '12345678', '28', '100', '2019-02-12 23:23:43', '56', '3');
INSERT INTO `bet20190212` VALUES ('86', '12345678', '28', '100', '2019-02-12 23:23:43', '56', '4');
INSERT INTO `bet20190212` VALUES ('87', '12345678', '28', '100', '2019-02-12 23:23:43', '56', '5');
INSERT INTO `bet20190212` VALUES ('88', '12345678', '28', '100', '2019-02-12 23:23:43', '56', '6');
INSERT INTO `bet20190212` VALUES ('89', '12345678', '28', '100', '2019-02-12 23:23:43', '56', '7');
INSERT INTO `bet20190212` VALUES ('90', '12345678', '28', '100', '2019-02-12 23:23:43', '56', '8');
INSERT INTO `bet20190212` VALUES ('91', '12345678', '28', '100', '2019-02-12 23:23:43', '56', '9');
INSERT INTO `bet20190212` VALUES ('92', '12345678', '27', '2000', '2019-02-12 23:24:40', '56', '0');

-- ----------------------------
-- Table structure for `bet20190213`
-- ----------------------------
DROP TABLE IF EXISTS `bet20190213`;
CREATE TABLE `bet20190213` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `type` int(2) NOT NULL,
  `amount` int(6) NOT NULL,
  `time` datetime NOT NULL,
  `periods` int(3) NOT NULL,
  `ballnum` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`,`time`,`type`,`ballnum`),
  CONSTRAINT `bet20190213 _ibfk_1` FOREIGN KEY (`username`) REFERENCES `BlackLottery`.`users` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bet20190213
-- ----------------------------
INSERT INTO `bet20190213` VALUES ('32', 'admin', '18', '100', '2019-02-13 11:24:06', '12', null);
INSERT INTO `bet20190213` VALUES ('33', '12345678', '28', '2', '2019-02-13 17:05:55', '16', '5');
INSERT INTO `bet20190213` VALUES ('36', '12345678', '28', '2', '2019-02-13 17:07:30', '16', '3');
INSERT INTO `bet20190213` VALUES ('37', 'admin', '1', '100', '2019-02-14 10:22:20', '16', '2');
INSERT INTO `bet20190213` VALUES ('38', 'admin', '1', '100', '2019-02-14 10:22:27', '16', '1');
INSERT INTO `bet20190213` VALUES ('39', 'admin', '1', '100', '2019-02-14 11:05:56', '16', '5');
INSERT INTO `bet20190213` VALUES ('40', 'admin', '1', '100', '2019-02-14 11:06:29', '16', '3');
INSERT INTO `bet20190213` VALUES ('41', 'admin', '26', '100', '2019-02-14 11:13:59', '16', '6');
INSERT INTO `bet20190213` VALUES ('42', 'admin', '26', '100', '2019-02-14 11:31:03', '16', '8');
INSERT INTO `bet20190213` VALUES ('43', 'admin', '26', '100', '2019-02-14 11:31:03', '16', '9');

-- ----------------------------
-- Table structure for `bet20190214`
-- ----------------------------
DROP TABLE IF EXISTS `bet20190214`;
CREATE TABLE `bet20190214` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `type` int(2) NOT NULL,
  `amount` int(6) NOT NULL,
  `time` datetime NOT NULL,
  `periods` int(3) NOT NULL,
  `ballnum` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`,`time`,`type`,`ballnum`),
  CONSTRAINT `bet20190214 _ibfk_1` FOREIGN KEY (`username`) REFERENCES `BlackLottery`.`users` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bet20190214
-- ----------------------------
INSERT INTO `bet20190214` VALUES ('40', 'admin', '1', '100', '2019-02-14 14:10:14', '8', '3');
INSERT INTO `bet20190214` VALUES ('41', 'admin', '1', '100', '2019-02-14 14:11:00', '8', '3');
INSERT INTO `bet20190214` VALUES ('42', 'admin', '2', '100', '2019-02-14 14:11:11', '8', '3');

-- ----------------------------
-- Table structure for `bet20190215`
-- ----------------------------
DROP TABLE IF EXISTS `bet20190215`;
CREATE TABLE `bet20190215` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `type` int(2) NOT NULL,
  `amount` int(6) NOT NULL,
  `time` datetime NOT NULL,
  `periods` int(3) NOT NULL,
  `ballnum` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`,`time`,`type`,`ballnum`),
  CONSTRAINT `bet20190215 _ibfk_1` FOREIGN KEY (`username`) REFERENCES `BlackLottery`.`users` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bet20190215
-- ----------------------------
INSERT INTO `bet20190215` VALUES ('32', 'admin', '7', '100', '2019-02-15 11:04:50', '7', '0');

-- ----------------------------
-- Table structure for `status`
-- ----------------------------
DROP TABLE IF EXISTS `status`;
CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of status
-- ----------------------------
INSERT INTO `status` VALUES ('1', '1');
