/*
Navicat MySQL Data Transfer

Source Server         : 诚信科技
Source Server Version : 50641
Source Host           : 47.107.60.226:3306
Source Database       : BlackLottery

Target Server Type    : MYSQL
Target Server Version : 50641
File Encoding         : 65001

Date: 2019-02-15 16:10:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `adminuser`
-- ----------------------------
DROP TABLE IF EXISTS `adminuser`;
CREATE TABLE `adminuser` (
  `id` int(2) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of adminuser
-- ----------------------------
INSERT INTO `adminuser` VALUES ('1', 'admin', 'admin');

-- ----------------------------
-- Table structure for `bills`
-- ----------------------------
DROP TABLE IF EXISTS `bills`;
CREATE TABLE `bills` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `gamename` varchar(15) NOT NULL,
  `amount` int(6) NOT NULL,
  `surplus` int(7) NOT NULL,
  `type` int(1) NOT NULL,
  `remarks` varchar(15) DEFAULT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=239 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bills
-- ----------------------------
INSERT INTO `bills` VALUES ('93', 'admin', '牛牛游戏', '-1000', '1898588', '9', null, '2019-02-09 20:19:41');
INSERT INTO `bills` VALUES ('94', 'admin', '牛牛游戏', '-1000', '1897588', '5', null, '2019-02-09 20:21:10');
INSERT INTO `bills` VALUES ('95', 'admin', '牛牛游戏', '-100', '1897488', '5', null, '2019-02-09 20:21:32');
INSERT INTO `bills` VALUES ('96', 'admin', '牛牛游戏', '12000', '1909488', '1', '', '2019-02-09 20:21:38');
INSERT INTO `bills` VALUES ('97', 'admin', '牛牛游戏', '1200', '1910688', '1', '', '2019-02-09 20:21:38');
INSERT INTO `bills` VALUES ('98', 'admin', '牛牛游戏', '-100', '1910588', '5', null, '2019-02-09 20:22:14');
INSERT INTO `bills` VALUES ('99', 'admin', '充值', '100', '1910688', '2', '', '2019-02-09 20:26:11');
INSERT INTO `bills` VALUES ('100', 'admin', '牛牛游戏', '1200', '1911888', '1', '', '2019-02-09 20:28:41');
INSERT INTO `bills` VALUES ('101', 'admin', '直选数字', '-100', '1911788', '5', null, '2019-02-09 21:53:16');
INSERT INTO `bills` VALUES ('102', 'admin', '直选数字', '-100', '1911688', '5', '5', '2019-02-09 21:59:12');
INSERT INTO `bills` VALUES ('103', 'admin', '德州扑克游戏', '900', '1912683', '1', '', '2019-02-09 21:59:58');
INSERT INTO `bills` VALUES ('104', 'admin', '任选数字', '-1000', '1911683', '5', null, '2019-02-09 22:09:11');
INSERT INTO `bills` VALUES ('105', 'admin', '任选数字', '-3', '1911680', '5', null, '2019-02-09 22:19:01');
INSERT INTO `bills` VALUES ('106', 'admin', '任选数字', '-3', '1911677', '5', null, '2019-02-09 22:20:04');
INSERT INTO `bills` VALUES ('107', 'admin', '任选数字', '-100', '1911577', '5', '3', '2019-02-09 22:22:05');
INSERT INTO `bills` VALUES ('108', 'admin', '任选数字', '-1000', '1910674', '5', '3', '2019-02-10 14:10:19');
INSERT INTO `bills` VALUES ('109', 'admin', '充值', '100', '1911771', '2', '', '2019-02-11 10:27:57');
INSERT INTO `bills` VALUES ('110', 'admin11', '充值', '5000', '17900', '2', '', '2019-02-11 20:49:16');
INSERT INTO `bills` VALUES ('111', 'admin11', '充值', '200', '18100', '2', '', '2019-02-11 20:49:30');
INSERT INTO `bills` VALUES ('112', 'admin11', '龙虎游戏', '-1000', '17100', '5', null, '2019-02-11 20:51:33');
INSERT INTO `bills` VALUES ('113', 'admin11', '牛牛游戏', '-500', '16600', '5', null, '2019-02-11 20:51:42');
INSERT INTO `bills` VALUES ('114', 'admin11', '直选数字', '-500', '16100', '5', '15', '2019-02-11 20:52:01');
INSERT INTO `bills` VALUES ('115', 'admin11', '直选数字', '-500', '16085', '5', '1', '2019-02-11 20:53:03');
INSERT INTO `bills` VALUES ('116', 'admin11', '龙虎游戏', '1900', '18484', '1', '', '2019-02-11 20:53:06');
INSERT INTO `bills` VALUES ('117', 'admin11', '直选数字', '-500', '17984', '5', '1', '2019-02-11 20:53:09');
INSERT INTO `bills` VALUES ('118', 'admin11', '充值', '-5000', '13483', '2', '', '2019-02-11 20:56:09');
INSERT INTO `bills` VALUES ('119', 'admin', '龙虎游戏', '-100', '1911671', '5', null, '2019-02-12 01:37:09');
INSERT INTO `bills` VALUES ('120', 'admin', '大小游戏', '-100', '1911571', '5', '0', '2019-02-12 01:43:18');
INSERT INTO `bills` VALUES ('121', 'admin', '大小游戏', '-100', '1911471', '5', '0', '2019-02-12 01:44:41');
INSERT INTO `bills` VALUES ('122', 'admin', '单双游戏', '-100', '1911371', '5', '0', '2019-02-12 01:44:41');
INSERT INTO `bills` VALUES ('123', 'admin', '单双游戏', '190', '1911561', '1', '0', '2019-02-12 01:57:54');
INSERT INTO `bills` VALUES ('124', '12345678', '充值', '10000', '10000', '2', '', '2019-02-12 02:04:05');
INSERT INTO `bills` VALUES ('125', '12345678', '充值', '10000', '20000', '2', '', '2019-02-12 02:04:08');
INSERT INTO `bills` VALUES ('126', '12345678', '充值', '10000', '30000', '2', '', '2019-02-12 02:04:08');
INSERT INTO `bills` VALUES ('127', '12345678', '充值', '10000', '40000', '2', '', '2019-02-12 02:04:08');
INSERT INTO `bills` VALUES ('128', '12345678', '充值', '10000', '50000', '2', '', '2019-02-12 02:04:08');
INSERT INTO `bills` VALUES ('129', '12345678', '充值', '10000', '60000', '2', '', '2019-02-12 02:04:09');
INSERT INTO `bills` VALUES ('130', '12345678', '充值', '10000', '70000', '2', '', '2019-02-12 02:04:09');
INSERT INTO `bills` VALUES ('131', '12345678', '龙虎游戏', '-5000', '65000', '5', null, '2019-02-12 02:04:28');
INSERT INTO `bills` VALUES ('132', '12345678', '龙虎游戏', '-10000', '55000', '5', null, '2019-02-12 02:04:45');
INSERT INTO `bills` VALUES ('133', '12345678', '龙虎游戏', '9500', '64500', '1', '', '2019-02-12 02:04:54');
INSERT INTO `bills` VALUES ('135', 'admin', '龙虎游戏', '190', '1911751', '1', '', '2019-02-12 02:19:09');
INSERT INTO `bills` VALUES ('136', '12345678', '龙虎游戏', '9500', '74000', '1', '', '2019-02-12 02:25:06');
INSERT INTO `bills` VALUES ('137', '12345678', '龙虎游戏', '9500', '83500', '1', '', '2019-02-12 02:26:56');
INSERT INTO `bills` VALUES ('138', 'admin', '龙虎游戏', '190', '1911941', '1', '', '2019-02-12 02:32:49');
INSERT INTO `bills` VALUES ('139', 'admin', '单双游戏', '190', '1912131', '1', '0', '2019-02-12 02:41:32');
INSERT INTO `bills` VALUES ('141', 'admin', '龙虎游戏', '-100', '1912031', '5', null, '2019-02-12 10:21:10');
INSERT INTO `bills` VALUES ('144', 'admin', '单双游戏', '-100', '1911931', '5', '0', '2019-02-12 10:28:14');
INSERT INTO `bills` VALUES ('145', 'admin', '直选数字', '-100', '1911831', '5', '2', '2019-02-12 10:28:53');
INSERT INTO `bills` VALUES ('147', 'admin', '大小游戏', '-100', '1911829', '5', '0', '2019-02-12 10:29:46');
INSERT INTO `bills` VALUES ('148', 'admin', '大小游戏', '-100', '1911729', '5', '0', '2019-02-12 10:29:46');
INSERT INTO `bills` VALUES ('150', 'admin', '直选数字', '-100', '1911629', '5', '3', '2019-02-12 10:31:07');
INSERT INTO `bills` VALUES ('151', 'admin', '直选数字', '-100', '1911529', '5', '9', '2019-02-12 10:31:07');
INSERT INTO `bills` VALUES ('152', 'admin', '大小游戏', '190', '1911907', '1', '0', '2019-02-12 13:42:44');
INSERT INTO `bills` VALUES ('153', 'aaaaaaa', '充值', '1000', '1000', '2', '', '2019-02-12 20:42:49');
INSERT INTO `bills` VALUES ('154', 'aaaaaaa', '龙虎游戏', '-100', '900', '5', null, '2019-02-12 21:16:18');
INSERT INTO `bills` VALUES ('156', 'admin', '龙虎游戏', '-100', '1911807', '5', null, '2019-02-12 21:16:52');
INSERT INTO `bills` VALUES ('157', 'admin', '直选数字', '-100', '1911707', '5', '0', '2019-02-12 21:17:12');
INSERT INTO `bills` VALUES ('158', 'admin', '直选数字', '-100', '1911607', '5', '2', '2019-02-12 21:17:12');
INSERT INTO `bills` VALUES ('160', 'admin', '单双游戏', '-100', '1911705', '5', '0', '2019-02-12 21:17:28');
INSERT INTO `bills` VALUES ('161', 'admin', '单双游戏', '-100', '1911605', '5', '5', '2019-02-12 21:17:37');
INSERT INTO `bills` VALUES ('162', 'aaaaaaa', '龙虎游戏', '-100', '800', '5', null, '2019-02-12 21:18:11');
INSERT INTO `bills` VALUES ('163', 'admin', '大小游戏', '-100', '1911505', '5', '0', '2019-02-12 21:18:39');
INSERT INTO `bills` VALUES ('164', 'aaaaaaa', '大小游戏', '-100', '700', '5', '0', '2019-02-12 21:19:00');
INSERT INTO `bills` VALUES ('165', 'aaaaaaa', '单双游戏', '-100', '600', '5', '0', '2019-02-12 21:19:12');
INSERT INTO `bills` VALUES ('166', 'aaaaaaa', '单双游戏', '-100', '500', '5', '5', '2019-02-12 21:19:25');
INSERT INTO `bills` VALUES ('167', 'admin', '单双游戏', '190', '1911695', '1', '5', '2019-02-12 21:19:47');
INSERT INTO `bills` VALUES ('168', 'admin', '大小游戏', '190', '1911885', '1', '0', '2019-02-12 21:19:47');
INSERT INTO `bills` VALUES ('169', 'aaaaaaa', '单双游戏', '190', '690', '1', '5', '2019-02-12 21:19:47');
INSERT INTO `bills` VALUES ('170', '12345678', '龙虎游戏', '-500', '83000', '5', null, '2019-02-12 23:05:10');
INSERT INTO `bills` VALUES ('171', '12345678', '龙虎游戏', '-1000', '82000', '5', null, '2019-02-12 23:05:10');
INSERT INTO `bills` VALUES ('172', '12345678', '龙虎游戏', '950', '82950', '1', '', '2019-02-12 23:13:42');
INSERT INTO `bills` VALUES ('173', '12345678', '龙虎游戏', '-700', '82250', '5', null, '2019-02-12 23:14:43');
INSERT INTO `bills` VALUES ('174', '12345678', '龙虎游戏', '-1000', '81250', '5', null, '2019-02-12 23:14:43');
INSERT INTO `bills` VALUES ('175', '12345678', '龙虎游戏', '-100', '81150', '5', null, '2019-02-12 23:14:43');
INSERT INTO `bills` VALUES ('176', '12345678', '直选数字', '-200', '80950', '5', '3', '2019-02-12 23:16:06');
INSERT INTO `bills` VALUES ('177', '12345678', '直选数字', '-200', '80947', '5', '4', '2019-02-12 23:16:11');
INSERT INTO `bills` VALUES ('178', '12345678', '直选数字', '-200', '80943', '5', '4', '2019-02-12 23:16:15');
INSERT INTO `bills` VALUES ('179', '12345678', '直选数字', '-200', '80743', '5', '5', '2019-02-12 23:16:15');
INSERT INTO `bills` VALUES ('180', '12345678', '直选数字', '-200', '80934', '5', '6', '2019-02-12 23:16:23');
INSERT INTO `bills` VALUES ('181', '12345678', '直选数字', '-200', '80734', '5', '7', '2019-02-12 23:16:23');
INSERT INTO `bills` VALUES ('182', '12345678', '直选数字', '-200', '80921', '5', '8', '2019-02-12 23:16:27');
INSERT INTO `bills` VALUES ('183', '12345678', '直选数字', '-200', '80721', '5', '9', '2019-02-12 23:16:27');
INSERT INTO `bills` VALUES ('184', '12345678', '直选数字', '-200', '80904', '5', '8', '2019-02-12 23:16:30');
INSERT INTO `bills` VALUES ('185', '12345678', '直选数字', '-200', '80704', '5', '9', '2019-02-12 23:16:30');
INSERT INTO `bills` VALUES ('186', '12345678', '直选数字', '-200', '80504', '5', '1', '2019-02-12 23:16:30');
INSERT INTO `bills` VALUES ('187', '12345678', '直选数字', '-200', '80304', '5', '2', '2019-02-12 23:16:30');
INSERT INTO `bills` VALUES ('188', '12345678', '龙虎游戏', '1330', '82414', '1', '', '2019-02-12 23:20:48');
INSERT INTO `bills` VALUES ('189', '12345678', '直选个位', '1800', '84214', '1', '', '2019-02-12 23:20:48');
INSERT INTO `bills` VALUES ('190', '12345678', '直选个位', '1800', '86014', '1', '', '2019-02-12 23:20:48');
INSERT INTO `bills` VALUES ('191', '12345678', '龙虎游戏', '-300', '85714', '5', null, '2019-02-12 23:22:05');
INSERT INTO `bills` VALUES ('192', '12345678', '龙虎游戏', '-500', '85214', '5', null, '2019-02-12 23:22:05');
INSERT INTO `bills` VALUES ('193', '12345678', '龙虎游戏', '-20', '85194', '5', null, '2019-02-12 23:22:05');
INSERT INTO `bills` VALUES ('194', '12345678', '大小游戏', '-400', '84794', '5', '0', '2019-02-12 23:22:24');
INSERT INTO `bills` VALUES ('195', '12345678', '直选数字', '-100', '84694', '5', '2', '2019-02-12 23:23:29');
INSERT INTO `bills` VALUES ('196', '12345678', '直选数字', '-100', '84692', '5', '1', '2019-02-12 23:23:43');
INSERT INTO `bills` VALUES ('197', '12345678', '直选数字', '-100', '84592', '5', '3', '2019-02-12 23:23:43');
INSERT INTO `bills` VALUES ('198', '12345678', '直选数字', '-100', '84492', '5', '4', '2019-02-12 23:23:43');
INSERT INTO `bills` VALUES ('199', '12345678', '直选数字', '-100', '84392', '5', '5', '2019-02-12 23:23:43');
INSERT INTO `bills` VALUES ('200', '12345678', '直选数字', '-100', '84292', '5', '6', '2019-02-12 23:23:43');
INSERT INTO `bills` VALUES ('201', '12345678', '直选数字', '-100', '84192', '5', '7', '2019-02-12 23:23:43');
INSERT INTO `bills` VALUES ('202', '12345678', '直选数字', '-100', '84092', '5', '8', '2019-02-12 23:23:43');
INSERT INTO `bills` VALUES ('203', '12345678', '直选数字', '-100', '83992', '5', '9', '2019-02-12 23:23:43');
INSERT INTO `bills` VALUES ('204', '12345678', '直选数字', '-2000', '82749', '5', '0', '2019-02-12 23:24:40');
INSERT INTO `bills` VALUES ('205', '12345678', '龙虎游戏', '570', '85319', '1', '', '2019-02-12 23:27:49');
INSERT INTO `bills` VALUES ('206', '12345678', '直选百位', '900', '86219', '1', '', '2019-02-12 23:27:49');
INSERT INTO `bills` VALUES ('207', 'admin', '德州扑克', '-100', '1911785', '5', null, '2019-02-13 11:24:06');
INSERT INTO `bills` VALUES ('208', 'admin', '德州扑克游戏', '400100', '2311885', '1', '', '2019-02-13 11:24:36');
INSERT INTO `bills` VALUES ('209', '12345678', '直选数字', '-2', '86217', '5', '5', '2019-02-13 17:05:55');
INSERT INTO `bills` VALUES ('212', '12345678', '直选数字', '-2', '86212', '5', '3', '2019-02-13 17:07:30');
INSERT INTO `bills` VALUES ('213', 'admin', '大小游戏', '-100', '2311785', '5', '2', '2019-02-14 10:22:20');
INSERT INTO `bills` VALUES ('214', 'admin', '大小游戏', '-100', '2311685', '5', '1', '2019-02-14 10:22:27');
INSERT INTO `bills` VALUES ('215', 'admin', '大小游戏', '-100', '2311585', '5', '5', '2019-02-14 11:05:56');
INSERT INTO `bills` VALUES ('216', 'admin', '大小游戏', '-100', '2311485', '5', '3', '2019-02-14 11:06:29');
INSERT INTO `bills` VALUES ('217', 'admin', '直选数字', '-100', '2311385', '5', '6', '2019-02-14 11:13:59');
INSERT INTO `bills` VALUES ('218', 'admin', '直选数字', '-100', '2311379', '5', '8', '2019-02-14 11:31:03');
INSERT INTO `bills` VALUES ('219', 'admin', '直选数字', '-100', '2311279', '5', '9', '2019-02-14 11:31:03');
INSERT INTO `bills` VALUES ('220', 'admin', '大小游戏', '190', '2311652', '1', '2', '2019-02-14 12:31:37');
INSERT INTO `bills` VALUES ('221', 'admin', '大小游戏', '190', '2311842', '1', '1', '2019-02-14 12:31:37');
INSERT INTO `bills` VALUES ('222', 'admin', '大小游戏', '190', '2312032', '1', '3', '2019-02-14 12:31:37');
INSERT INTO `bills` VALUES ('231', 'admin', '大小游戏', '-100', '2311932', '5', '3', '2019-02-14 14:10:14');
INSERT INTO `bills` VALUES ('232', 'admin', '大小游戏', '-100', '2311832', '5', '3', '2019-02-14 14:11:00');
INSERT INTO `bills` VALUES ('233', 'admin', '大小游戏', '-100', '2311732', '5', '3', '2019-02-14 14:11:11');
INSERT INTO `bills` VALUES ('234', 'admin', '大小游戏', '190', '2311922', '1', '3', '2019-02-14 14:19:43');
INSERT INTO `bills` VALUES ('235', 'admin', '结算', '100', '2311822', '6', '', '2019-02-14 16:56:26');
INSERT INTO `bills` VALUES ('236', 'admin', '结算', '-100', '2311722', '6', '', '2019-02-14 16:58:55');
INSERT INTO `bills` VALUES ('237', 'admin', '单双游戏', '-100', '2311622', '5', '0', '2019-02-15 11:04:50');
INSERT INTO `bills` VALUES ('238', 'admin', '单双游戏', '190', '2311812', '1', '0', '2019-02-15 11:11:54');

-- ----------------------------
-- Table structure for `chatrecord`
-- ----------------------------
DROP TABLE IF EXISTS `chatrecord`;
CREATE TABLE `chatrecord` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chatrecord
-- ----------------------------
INSERT INTO `chatrecord` VALUES ('1', 'admin', '我赚翻了，你呢');
INSERT INTO `chatrecord` VALUES ('2', '唐纳德·特朗普', '都给我哭');
INSERT INTO `chatrecord` VALUES ('3', '﻿女', '你在吗？怎么不见你上线？');
INSERT INTO `chatrecord` VALUES ('4', '男', '心无时不跳，我无处不在。');
INSERT INTO `chatrecord` VALUES ('5', '女', '原来是个“隐君子”');
INSERT INTO `chatrecord` VALUES ('6', '男', '隐名免灾祸,隐身免烦恼。');
INSERT INTO `chatrecord` VALUES ('7', '女', '不知道“小隐于野，大隐于市”吗？');
INSERT INTO `chatrecord` VALUES ('8', '男', '知人知面不知心，隐名隐身难隐情。');
INSERT INTO `chatrecord` VALUES ('9', '女', '哇，好难懂啊，你学哲学的？');
INSERT INTO `chatrecord` VALUES ('10', '男', '学文学的都是傻子，学哲学的都是疯子。');
INSERT INTO `chatrecord` VALUES ('11', '女', '真精辟啊，你是不是经常这样在网上泡妞？');
INSERT INTO `chatrecord` VALUES ('12', '男', '流汗流血不流泪，泡茶泡吧不泡妞。');
INSERT INTO `chatrecord` VALUES ('13', '女', '好酷呀，可是人不可能没有感情呀！');
INSERT INTO `chatrecord` VALUES ('14', '男', '蒸桑拿蒸馒头不争名利，弹吉它弹棉花不谈感情。');
INSERT INTO `chatrecord` VALUES ('15', '女', '我开始流汗了，你真是个牛人！');
INSERT INTO `chatrecord` VALUES ('16', '男', '玩什么都别玩爱情，信什么也别信男人。');
INSERT INTO `chatrecord` VALUES ('17', '女', '嗯，至理名言，你受过感情的伤呀？');
INSERT INTO `chatrecord` VALUES ('18', '男', '爱有多深，恨有多深。');
INSERT INTO `chatrecord` VALUES ('19', '女', '怎么感觉那么沧桑啊。');
INSERT INTO `chatrecord` VALUES ('20', '男', '女人因为成熟而沧桑，男人因为沧桑而成熟。');
INSERT INTO `chatrecord` VALUES ('21', '女', '有点难懂，但又很有道理。');
INSERT INTO `chatrecord` VALUES ('22', '男', '男人善于花言巧语，女人喜欢花前月下。');
INSERT INTO `chatrecord` VALUES ('23', '女', '你是怪物吧！');
INSERT INTO `chatrecord` VALUES ('24', '男', '每个人都是怪物，每句话都是真理。');
INSERT INTO `chatrecord` VALUES ('25', '女', '天啊，和你生活在一起会累死了，肯定没人会嫁给你。');
INSERT INTO `chatrecord` VALUES ('26', '男', '笨男人要结婚，笨女人要减肥。');
INSERT INTO `chatrecord` VALUES ('27', '女', '我要哭了！');
INSERT INTO `chatrecord` VALUES ('28', '男', '爱与恨都是寂寞的空气，哭与笑表达同样的意义。');
INSERT INTO `chatrecord` VALUES ('29', '女', '哭和笑怎么能一样，去死吧！');
INSERT INTO `chatrecord` VALUES ('30', '男', '苦与乐都是财富，生与死都要绚丽。');
INSERT INTO `chatrecord` VALUES ('31', '女', '和你说话真累，其实你不懂女人心。');
INSERT INTO `chatrecord` VALUES ('32', '男', '女人希望男人表露心灵，男人希望女人裸露身体。');
INSERT INTO `chatrecord` VALUES ('33', '女', '嗯这句话有道理，你有没有女朋友？');
INSERT INTO `chatrecord` VALUES ('34', '男', '黄脸老婆易寻，红颜知己难觅。');
INSERT INTO `chatrecord` VALUES ('35', '女', '和你结婚会不会开心？');
INSERT INTO `chatrecord` VALUES ('36', '男', '男人的痛苦从结婚开始，女人的痛苦从认识男人开始。');
INSERT INTO `chatrecord` VALUES ('37', '女', '天啊，那还是不要接近你了...');
INSERT INTO `chatrecord` VALUES ('38', '男', '最易接近的是身体，最难接近的是心灵。');
INSERT INTO `chatrecord` VALUES ('39', '女', '你喜欢怎样的女孩子？');
INSERT INTO `chatrecord` VALUES ('40', '男', '女人喜欢的男人越成熟越好，男人喜欢的女孩越单纯越好。');
INSERT INTO `chatrecord` VALUES ('41', '女', '不是吧，我怎么听说男人对不单纯的女人也感兴趣？');
INSERT INTO `chatrecord` VALUES ('42', '男', '好男人应在床上勇猛，好女人应在床上放荡。');
INSERT INTO `chatrecord` VALUES ('43', '女', '哈哈色狼的尾巴露出来了！');
INSERT INTO `chatrecord` VALUES ('44', '男', '男人好色称为色狼，男人不好色称为色盲。');
INSERT INTO `chatrecord` VALUES ('45', '女', '你讲话很搞笑呀。');
INSERT INTO `chatrecord` VALUES ('46', '男', '世间纷繁万般无奈，心头只求片刻安宁。');
INSERT INTO `chatrecord` VALUES ('47', '女', '下次还能和你聊吗？');
INSERT INTO `chatrecord` VALUES ('48', '男', '做男人无能会使女人寄希望于未来，做女人失败会使男人寄思念于过去。');
INSERT INTO `chatrecord` VALUES ('49', '女', '哈哈，你的意思是我们现在就见面？');
INSERT INTO `chatrecord` VALUES ('50', '男', '心动不如行动，说到不如做到。');
INSERT INTO `chatrecord` VALUES ('51', '女', 'OK，我决定了，去见你！');
INSERT INTO `chatrecord` VALUES ('52', '男', '');
INSERT INTO `chatrecord` VALUES ('53', '奥巴马', '中了窝草');

-- ----------------------------
-- Table structure for `checkupdate`
-- ----------------------------
DROP TABLE IF EXISTS `checkupdate`;
CREATE TABLE `checkupdate` (
  `id` int(1) NOT NULL,
  `versioncode` char(5) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of checkupdate
-- ----------------------------
INSERT INTO `checkupdate` VALUES ('1', '1.1.1', 'http://www.xcjbq.com/blacklottery/update/H598CE9EC.wgt');

-- ----------------------------
-- Table structure for `login`
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `token` varchar(32) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `ip` char(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO `login` VALUES ('1', 'admin', '401fe28da6459bb3eec2576712e5a995', '2019-02-15 00:02:41', '45.115.158.11');
INSERT INTO `login` VALUES ('3', 'admin11', '0962aeb10520a535285a984b8cc44757', '2019-02-14 13:56:13', '45.115.158.11');
INSERT INTO `login` VALUES ('4', '123456789', 'e596bd26844c19f9a0059469d5061f31', '2019-02-03 21:27:44', '117.136.56.16');
INSERT INTO `login` VALUES ('5', 'm12345678', '40b39ba3c7cbb8e477e7b5a5ddb0f9fb', '2019-02-03 21:57:48', '223.104.17.121');
INSERT INTO `login` VALUES ('6', 'm666888', '6d105aec07b9feb6af7117b87590f0d9', '2019-02-09 17:33:20', '223.104.17.78');
INSERT INTO `login` VALUES ('7', '123123', '3b1b46858f32775ab26a0e0976778e97', '2019-02-11 23:25:56', '1.191.227.23');
INSERT INTO `login` VALUES ('8', '12345678', 'cac70c3a8d22c5c43c88b8ff51a3641e', '2019-02-12 02:03:47', '112.99.103.252');
INSERT INTO `login` VALUES ('9', 'aaaaaaa', '5dc6b0eaf0c00526196cd6668342a10d', '2019-02-12 20:31:15', '112.238.134.129');
INSERT INTO `login` VALUES ('10', '123456', '83c2d9fee997cc342cd943ea09bb48b2', '2019-02-13 11:06:10', '117.136.0.148');
INSERT INTO `login` VALUES ('11', 'TXF0920', '64fccb476d0a3525b854c8dae4ebd97d', '2019-02-13 11:15:22', '36.157.128.148');

-- ----------------------------
-- Table structure for `lotteryresult`
-- ----------------------------
DROP TABLE IF EXISTS `lotteryresult`;
CREATE TABLE `lotteryresult` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `ball1` int(1) NOT NULL,
  `ball2` int(1) NOT NULL,
  `ball3` int(1) NOT NULL,
  `ball4` int(1) NOT NULL,
  `ball5` int(1) NOT NULL,
  `period` int(3) NOT NULL,
  `time` date NOT NULL,
  `createtime` time DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `period` (`period`,`time`)
) ENGINE=InnoDB AUTO_INCREMENT=13823 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lotteryresult
-- ----------------------------
INSERT INTO `lotteryresult` VALUES ('19', '1', '5', '6', '5', '2', '1', '2019-02-08', null);
INSERT INTO `lotteryresult` VALUES ('20', '1', '7', '0', '0', '9', '2', '2019-02-08', null);
INSERT INTO `lotteryresult` VALUES ('21', '5', '3', '5', '5', '7', '3', '2019-02-08', null);
INSERT INTO `lotteryresult` VALUES ('22', '0', '8', '7', '1', '7', '4', '2019-02-08', null);
INSERT INTO `lotteryresult` VALUES ('23', '4', '1', '8', '0', '6', '5', '2019-02-08', null);
INSERT INTO `lotteryresult` VALUES ('24', '0', '5', '4', '0', '2', '6', '2019-02-08', null);
INSERT INTO `lotteryresult` VALUES ('25', '0', '7', '5', '0', '5', '7', '2019-02-08', null);
INSERT INTO `lotteryresult` VALUES ('26', '2', '7', '1', '6', '9', '8', '2019-02-08', null);
INSERT INTO `lotteryresult` VALUES ('27', '6', '2', '9', '3', '7', '9', '2019-02-08', null);
INSERT INTO `lotteryresult` VALUES ('28', '5', '3', '1', '7', '1', '10', '2019-02-08', null);
INSERT INTO `lotteryresult` VALUES ('29', '1', '7', '1', '8', '8', '11', '2019-02-08', null);
INSERT INTO `lotteryresult` VALUES ('30', '0', '2', '7', '2', '0', '12', '2019-02-08', null);
INSERT INTO `lotteryresult` VALUES ('31', '3', '8', '2', '1', '1', '13', '2019-02-08', null);
INSERT INTO `lotteryresult` VALUES ('32', '3', '7', '1', '9', '9', '14', '2019-02-08', null);
INSERT INTO `lotteryresult` VALUES ('33', '3', '6', '4', '1', '7', '15', '2019-02-08', null);
INSERT INTO `lotteryresult` VALUES ('34', '5', '9', '1', '3', '5', '16', '2019-02-08', null);
INSERT INTO `lotteryresult` VALUES ('35', '3', '1', '3', '2', '8', '17', '2019-02-08', null);
INSERT INTO `lotteryresult` VALUES ('36', '3', '0', '2', '8', '4', '18', '2019-02-08', null);
INSERT INTO `lotteryresult` VALUES ('37', '0', '9', '1', '6', '7', '19', '2019-02-08', null);
INSERT INTO `lotteryresult` VALUES ('38', '4', '2', '0', '5', '4', '20', '2019-02-08', null);
INSERT INTO `lotteryresult` VALUES ('39', '6', '2', '1', '0', '6', '21', '2019-02-08', null);
INSERT INTO `lotteryresult` VALUES ('40', '3', '1', '4', '8', '3', '22', '2019-02-08', null);
INSERT INTO `lotteryresult` VALUES ('51', '6', '1', '7', '6', '8', '200', '2019-02-09', null);
INSERT INTO `lotteryresult` VALUES ('6294', '7', '7', '7', '7', '7', '1', '2019-02-09', null);
INSERT INTO `lotteryresult` VALUES ('6295', '4', '4', '4', '4', '4', '2', '2019-02-09', null);
INSERT INTO `lotteryresult` VALUES ('6296', '4', '4', '4', '4', '4', '3', '2019-02-09', null);
INSERT INTO `lotteryresult` VALUES ('6298', '9', '3', '7', '8', '9', '4', '2019-02-09', null);
INSERT INTO `lotteryresult` VALUES ('6299', '8', '7', '9', '2', '5', '5', '2019-02-09', null);
INSERT INTO `lotteryresult` VALUES ('6300', '2', '3', '8', '3', '4', '6', '2019-02-09', null);
INSERT INTO `lotteryresult` VALUES ('6301', '6', '6', '6', '6', '6', '7', '2019-02-09', null);
INSERT INTO `lotteryresult` VALUES ('6302', '4', '6', '9', '0', '5', '8', '2019-02-09', null);
INSERT INTO `lotteryresult` VALUES ('6303', '4', '1', '3', '1', '0', '9', '2019-02-09', null);
INSERT INTO `lotteryresult` VALUES ('6304', '6', '1', '3', '1', '5', '10', '2019-02-09', null);
INSERT INTO `lotteryresult` VALUES ('6305', '9', '9', '7', '0', '9', '11', '2019-02-09', null);
INSERT INTO `lotteryresult` VALUES ('6306', '8', '7', '7', '1', '2', '12', '2019-02-09', null);
INSERT INTO `lotteryresult` VALUES ('6307', '5', '0', '7', '7', '9', '13', '2019-02-09', null);
INSERT INTO `lotteryresult` VALUES ('6308', '0', '1', '6', '5', '5', '14', '2019-02-09', null);
INSERT INTO `lotteryresult` VALUES ('6309', '4', '8', '6', '1', '6', '15', '2019-02-09', null);
INSERT INTO `lotteryresult` VALUES ('6310', '7', '1', '9', '2', '7', '16', '2019-02-09', null);
INSERT INTO `lotteryresult` VALUES ('6311', '5', '5', '6', '7', '4', '17', '2019-02-09', null);
INSERT INTO `lotteryresult` VALUES ('6312', '3', '7', '7', '7', '2', '18', '2019-02-09', null);
INSERT INTO `lotteryresult` VALUES ('6313', '8', '4', '4', '8', '6', '19', '2019-02-09', null);
INSERT INTO `lotteryresult` VALUES ('6314', '5', '1', '9', '8', '3', '20', '2019-02-09', null);
INSERT INTO `lotteryresult` VALUES ('6315', '2', '0', '9', '2', '5', '21', '2019-02-09', null);
INSERT INTO `lotteryresult` VALUES ('6316', '0', '5', '5', '8', '5', '22', '2019-02-09', null);
INSERT INTO `lotteryresult` VALUES ('10260', '3', '7', '2', '0', '2', '23', '2019-02-09', null);
INSERT INTO `lotteryresult` VALUES ('10261', '0', '5', '1', '9', '5', '24', '2019-02-09', null);
INSERT INTO `lotteryresult` VALUES ('10262', '7', '9', '6', '3', '7', '25', '2019-02-09', null);
INSERT INTO `lotteryresult` VALUES ('10263', '5', '1', '7', '2', '7', '26', '2019-02-09', null);
INSERT INTO `lotteryresult` VALUES ('10264', '6', '4', '2', '6', '4', '27', '2019-02-09', null);
INSERT INTO `lotteryresult` VALUES ('10265', '3', '1', '3', '2', '2', '28', '2019-02-09', null);
INSERT INTO `lotteryresult` VALUES ('10266', '4', '8', '6', '7', '6', '29', '2019-02-09', null);
INSERT INTO `lotteryresult` VALUES ('10267', '1', '4', '8', '6', '2', '30', '2019-02-09', null);
INSERT INTO `lotteryresult` VALUES ('10268', '3', '4', '2', '5', '6', '31', '2019-02-09', null);
INSERT INTO `lotteryresult` VALUES ('10269', '8', '0', '0', '1', '5', '32', '2019-02-09', null);
INSERT INTO `lotteryresult` VALUES ('10270', '9', '1', '3', '5', '2', '33', '2019-02-09', null);
INSERT INTO `lotteryresult` VALUES ('10271', '4', '3', '1', '9', '4', '34', '2019-02-09', null);
INSERT INTO `lotteryresult` VALUES ('10272', '7', '5', '1', '2', '5', '35', '2019-02-09', null);
INSERT INTO `lotteryresult` VALUES ('10273', '9', '5', '0', '4', '6', '36', '2019-02-09', null);
INSERT INTO `lotteryresult` VALUES ('10274', '3', '8', '5', '8', '1', '37', '2019-02-09', null);
INSERT INTO `lotteryresult` VALUES ('10275', '9', '0', '3', '4', '0', '38', '2019-02-09', null);
INSERT INTO `lotteryresult` VALUES ('10276', '6', '4', '1', '4', '6', '39', '2019-02-09', null);
INSERT INTO `lotteryresult` VALUES ('10277', '5', '0', '1', '1', '9', '40', '2019-02-09', null);
INSERT INTO `lotteryresult` VALUES ('10278', '6', '0', '2', '1', '9', '41', '2019-02-09', null);
INSERT INTO `lotteryresult` VALUES ('10279', '7', '0', '1', '4', '2', '42', '2019-02-09', null);
INSERT INTO `lotteryresult` VALUES ('10280', '1', '0', '8', '2', '1', '43', '2019-02-09', null);
INSERT INTO `lotteryresult` VALUES ('10281', '6', '3', '3', '5', '7', '44', '2019-02-09', null);
INSERT INTO `lotteryresult` VALUES ('10282', '1', '5', '3', '4', '1', '45', '2019-02-09', null);
INSERT INTO `lotteryresult` VALUES ('10283', '2', '1', '6', '7', '5', '46', '2019-02-09', null);
INSERT INTO `lotteryresult` VALUES ('10284', '3', '9', '9', '6', '3', '47', '2019-02-09', null);
INSERT INTO `lotteryresult` VALUES ('10285', '1', '1', '8', '7', '3', '48', '2019-02-09', null);
INSERT INTO `lotteryresult` VALUES ('10286', '3', '9', '3', '1', '5', '49', '2019-02-09', null);
INSERT INTO `lotteryresult` VALUES ('10287', '6', '4', '7', '8', '2', '50', '2019-02-09', null);
INSERT INTO `lotteryresult` VALUES ('10288', '0', '2', '2', '2', '1', '51', '2019-02-10', null);
INSERT INTO `lotteryresult` VALUES ('10289', '1', '6', '8', '7', '0', '1', '2019-02-10', null);
INSERT INTO `lotteryresult` VALUES ('10290', '4', '2', '2', '5', '9', '2', '2019-02-10', null);
INSERT INTO `lotteryresult` VALUES ('10291', '1', '2', '9', '3', '2', '3', '2019-02-10', null);
INSERT INTO `lotteryresult` VALUES ('10292', '7', '2', '9', '3', '9', '4', '2019-02-10', null);
INSERT INTO `lotteryresult` VALUES ('10293', '3', '1', '5', '0', '4', '5', '2019-02-10', null);
INSERT INTO `lotteryresult` VALUES ('10294', '5', '2', '3', '3', '4', '6', '2019-02-10', null);
INSERT INTO `lotteryresult` VALUES ('10295', '0', '4', '2', '6', '0', '7', '2019-02-10', null);
INSERT INTO `lotteryresult` VALUES ('10296', '4', '2', '0', '2', '7', '8', '2019-02-10', null);
INSERT INTO `lotteryresult` VALUES ('10297', '7', '7', '1', '1', '6', '9', '2019-02-10', null);
INSERT INTO `lotteryresult` VALUES ('10298', '4', '7', '8', '0', '6', '10', '2019-02-10', null);
INSERT INTO `lotteryresult` VALUES ('10299', '1', '8', '3', '3', '7', '11', '2019-02-10', null);
INSERT INTO `lotteryresult` VALUES ('10300', '1', '7', '1', '6', '2', '12', '2019-02-10', null);
INSERT INTO `lotteryresult` VALUES ('10301', '2', '1', '3', '7', '0', '13', '2019-02-10', null);
INSERT INTO `lotteryresult` VALUES ('10302', '2', '0', '4', '6', '0', '14', '2019-02-10', null);
INSERT INTO `lotteryresult` VALUES ('10303', '4', '2', '4', '3', '4', '15', '2019-02-10', null);
INSERT INTO `lotteryresult` VALUES ('10304', '3', '1', '3', '1', '9', '16', '2019-02-10', null);
INSERT INTO `lotteryresult` VALUES ('10305', '5', '3', '5', '1', '1', '17', '2019-02-10', null);
INSERT INTO `lotteryresult` VALUES ('10306', '3', '2', '1', '5', '8', '18', '2019-02-10', null);
INSERT INTO `lotteryresult` VALUES ('10307', '2', '6', '7', '0', '4', '19', '2019-02-10', null);
INSERT INTO `lotteryresult` VALUES ('10308', '0', '2', '7', '7', '1', '20', '2019-02-10', null);
INSERT INTO `lotteryresult` VALUES ('10309', '4', '4', '9', '1', '5', '21', '2019-02-10', null);
INSERT INTO `lotteryresult` VALUES ('10310', '9', '5', '3', '6', '0', '22', '2019-02-10', null);
INSERT INTO `lotteryresult` VALUES ('10311', '4', '7', '0', '3', '2', '23', '2019-02-10', null);
INSERT INTO `lotteryresult` VALUES ('10312', '6', '7', '6', '8', '8', '24', '2019-02-10', null);
INSERT INTO `lotteryresult` VALUES ('10313', '8', '3', '9', '3', '1', '25', '2019-02-10', null);
INSERT INTO `lotteryresult` VALUES ('10314', '7', '7', '1', '4', '4', '26', '2019-02-10', null);
INSERT INTO `lotteryresult` VALUES ('10315', '8', '9', '2', '0', '2', '27', '2019-02-10', null);
INSERT INTO `lotteryresult` VALUES ('10316', '8', '6', '2', '7', '0', '28', '2019-02-10', null);
INSERT INTO `lotteryresult` VALUES ('10317', '3', '7', '3', '5', '2', '29', '2019-02-10', null);
INSERT INTO `lotteryresult` VALUES ('10318', '2', '5', '7', '7', '4', '30', '2019-02-10', null);
INSERT INTO `lotteryresult` VALUES ('10319', '4', '2', '8', '4', '5', '31', '2019-02-11', null);
INSERT INTO `lotteryresult` VALUES ('10320', '3', '2', '1', '3', '0', '1', '2019-02-11', null);
INSERT INTO `lotteryresult` VALUES ('10321', '8', '0', '4', '1', '1', '2', '2019-02-11', null);
INSERT INTO `lotteryresult` VALUES ('10322', '3', '1', '5', '0', '9', '3', '2019-02-11', null);
INSERT INTO `lotteryresult` VALUES ('10323', '3', '1', '5', '9', '7', '4', '2019-02-11', null);
INSERT INTO `lotteryresult` VALUES ('10324', '4', '3', '8', '0', '3', '5', '2019-02-11', null);
INSERT INTO `lotteryresult` VALUES ('10325', '4', '6', '3', '5', '7', '6', '2019-02-11', null);
INSERT INTO `lotteryresult` VALUES ('10326', '6', '9', '1', '8', '6', '7', '2019-02-11', null);
INSERT INTO `lotteryresult` VALUES ('10327', '3', '5', '1', '2', '4', '8', '2019-02-11', null);
INSERT INTO `lotteryresult` VALUES ('10328', '5', '6', '4', '4', '1', '9', '2019-02-11', null);
INSERT INTO `lotteryresult` VALUES ('10329', '6', '4', '9', '0', '2', '10', '2019-02-11', null);
INSERT INTO `lotteryresult` VALUES ('10330', '0', '2', '2', '1', '5', '11', '2019-02-11', null);
INSERT INTO `lotteryresult` VALUES ('10331', '7', '0', '4', '7', '2', '12', '2019-02-11', null);
INSERT INTO `lotteryresult` VALUES ('10332', '7', '2', '3', '1', '8', '13', '2019-02-11', null);
INSERT INTO `lotteryresult` VALUES ('10333', '8', '7', '2', '7', '8', '14', '2019-02-11', null);
INSERT INTO `lotteryresult` VALUES ('10334', '9', '7', '8', '6', '5', '15', '2019-02-11', null);
INSERT INTO `lotteryresult` VALUES ('10335', '5', '5', '9', '2', '0', '16', '2019-02-11', null);
INSERT INTO `lotteryresult` VALUES ('10336', '2', '4', '9', '0', '7', '17', '2019-02-11', null);
INSERT INTO `lotteryresult` VALUES ('10337', '6', '4', '4', '3', '0', '18', '2019-02-11', null);
INSERT INTO `lotteryresult` VALUES ('10338', '9', '9', '5', '2', '4', '19', '2019-02-11', null);
INSERT INTO `lotteryresult` VALUES ('10339', '4', '8', '9', '2', '9', '20', '2019-02-11', null);
INSERT INTO `lotteryresult` VALUES ('10340', '2', '6', '5', '3', '8', '21', '2019-02-11', null);
INSERT INTO `lotteryresult` VALUES ('10341', '9', '2', '3', '1', '3', '22', '2019-02-11', null);
INSERT INTO `lotteryresult` VALUES ('10342', '6', '9', '4', '7', '4', '23', '2019-02-11', null);
INSERT INTO `lotteryresult` VALUES ('10343', '6', '5', '6', '4', '8', '24', '2019-02-11', null);
INSERT INTO `lotteryresult` VALUES ('10344', '4', '5', '5', '0', '6', '25', '2019-02-11', null);
INSERT INTO `lotteryresult` VALUES ('10345', '9', '0', '8', '5', '3', '26', '2019-02-11', null);
INSERT INTO `lotteryresult` VALUES ('10346', '6', '8', '7', '6', '5', '27', '2019-02-11', null);
INSERT INTO `lotteryresult` VALUES ('10347', '5', '1', '8', '8', '9', '28', '2019-02-11', null);
INSERT INTO `lotteryresult` VALUES ('10348', '9', '2', '3', '7', '9', '29', '2019-02-11', null);
INSERT INTO `lotteryresult` VALUES ('10349', '1', '9', '8', '6', '9', '30', '2019-02-11', null);
INSERT INTO `lotteryresult` VALUES ('12994', '4', '2', '0', '5', '5', '1', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('12995', '7', '6', '1', '0', '5', '2', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('12996', '2', '0', '8', '0', '8', '3', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('12997', '9', '3', '2', '4', '6', '4', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('12998', '5', '0', '9', '1', '0', '5', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('12999', '1', '1', '8', '5', '5', '6', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13000', '7', '0', '1', '1', '8', '7', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13001', '2', '5', '7', '4', '5', '8', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13002', '6', '1', '9', '0', '8', '9', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13003', '0', '4', '9', '7', '4', '10', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13004', '2', '9', '3', '7', '7', '11', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13005', '8', '1', '8', '7', '7', '12', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13006', '9', '6', '7', '9', '2', '13', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13007', '0', '3', '1', '5', '8', '14', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13008', '3', '5', '2', '0', '1', '15', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13009', '7', '4', '9', '5', '3', '16', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13010', '7', '5', '1', '4', '1', '17', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13011', '3', '4', '8', '5', '8', '18', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13012', '2', '8', '7', '8', '4', '19', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13013', '7', '6', '9', '6', '5', '20', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13014', '7', '2', '3', '8', '9', '21', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13015', '4', '4', '4', '3', '5', '22', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13016', '4', '8', '8', '6', '0', '23', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13017', '7', '5', '8', '7', '1', '24', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13018', '8', '8', '5', '5', '9', '25', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13019', '9', '8', '5', '3', '7', '26', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13020', '3', '0', '1', '0', '3', '27', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13021', '7', '2', '6', '4', '4', '28', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13022', '2', '4', '1', '9', '2', '29', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13023', '9', '0', '3', '2', '5', '30', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13682', '3', '5', '8', '6', '8', '31', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13683', '6', '6', '6', '0', '6', '32', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13684', '3', '7', '2', '8', '4', '33', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13685', '6', '7', '9', '6', '4', '34', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13686', '0', '5', '9', '7', '5', '35', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13687', '5', '9', '8', '5', '5', '36', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13688', '1', '0', '9', '0', '7', '37', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13689', '5', '1', '6', '6', '1', '38', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13690', '4', '0', '9', '3', '1', '39', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13691', '8', '0', '0', '1', '2', '40', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13692', '5', '7', '8', '0', '6', '41', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13693', '2', '9', '9', '5', '1', '42', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13694', '5', '9', '3', '9', '6', '43', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13695', '0', '5', '7', '0', '3', '44', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13696', '3', '0', '4', '9', '4', '45', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13697', '3', '6', '1', '6', '9', '46', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13698', '0', '8', '9', '0', '6', '47', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13699', '2', '5', '5', '4', '9', '48', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13700', '4', '6', '4', '0', '5', '49', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13701', '6', '9', '0', '9', '9', '50', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13702', '3', '1', '2', '5', '2', '51', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13703', '0', '8', '4', '2', '4', '52', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13705', '7', '2', '9', '7', '3', '53', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13706', '5', '9', '3', '9', '4', '54', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13707', '4', '5', '4', '8', '8', '55', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13709', '2', '8', '5', '2', '0', '56', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13710', '1', '2', '4', '1', '0', '57', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13711', '8', '4', '1', '0', '9', '58', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13712', '1', '9', '5', '5', '1', '59', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13714', '6', '2', '8', '6', '5', '60', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13715', '2', '6', '6', '3', '1', '61', '2019-02-12', null);
INSERT INTO `lotteryresult` VALUES ('13716', '7', '9', '3', '6', '2', '1', '2019-02-13', null);
INSERT INTO `lotteryresult` VALUES ('13718', '3', '2', '8', '6', '2', '2', '2019-02-13', null);
INSERT INTO `lotteryresult` VALUES ('13719', '6', '7', '4', '8', '8', '3', '2019-02-13', null);
INSERT INTO `lotteryresult` VALUES ('13720', '9', '4', '3', '6', '1', '4', '2019-02-13', null);
INSERT INTO `lotteryresult` VALUES ('13721', '6', '7', '3', '3', '5', '5', '2019-02-13', null);
INSERT INTO `lotteryresult` VALUES ('13722', '3', '3', '6', '4', '9', '6', '2019-02-13', null);
INSERT INTO `lotteryresult` VALUES ('13723', '7', '5', '1', '8', '2', '7', '2019-02-13', null);
INSERT INTO `lotteryresult` VALUES ('13724', '4', '6', '6', '7', '0', '8', '2019-02-13', null);
INSERT INTO `lotteryresult` VALUES ('13725', '6', '6', '3', '1', '9', '9', '2019-02-13', null);
INSERT INTO `lotteryresult` VALUES ('13726', '4', '8', '7', '8', '0', '10', '2019-02-13', null);
INSERT INTO `lotteryresult` VALUES ('13727', '1', '9', '4', '8', '9', '11', '2019-02-13', null);
INSERT INTO `lotteryresult` VALUES ('13728', '4', '4', '4', '4', '4', '12', '2019-02-13', null);
INSERT INTO `lotteryresult` VALUES ('13729', '2', '0', '5', '4', '4', '13', '2019-02-13', null);
INSERT INTO `lotteryresult` VALUES ('13730', '7', '0', '7', '7', '6', '14', '2019-02-13', null);
INSERT INTO `lotteryresult` VALUES ('13731', '4', '6', '9', '5', '3', '15', '2019-02-13', '11:58:17');
INSERT INTO `lotteryresult` VALUES ('13732', '5', '5', '9', '6', '3', '16', '2019-02-13', '12:31:37');
INSERT INTO `lotteryresult` VALUES ('13733', '9', '9', '8', '4', '3', '1', '2019-02-14', '12:31:38');
INSERT INTO `lotteryresult` VALUES ('13734', '3', '1', '0', '5', '7', '2', '2019-02-14', '13:19:24');
INSERT INTO `lotteryresult` VALUES ('13735', '0', '0', '3', '4', '2', '3', '2019-02-14', '13:29:27');
INSERT INTO `lotteryresult` VALUES ('13736', '1', '2', '6', '3', '9', '4', '2019-02-14', '13:39:30');
INSERT INTO `lotteryresult` VALUES ('13737', '6', '1', '0', '5', '5', '5', '2019-02-14', '13:49:33');
INSERT INTO `lotteryresult` VALUES ('13738', '8', '2', '5', '6', '7', '6', '2019-02-14', '13:59:36');
INSERT INTO `lotteryresult` VALUES ('13739', '7', '5', '8', '0', '6', '7', '2019-02-14', '14:09:39');
INSERT INTO `lotteryresult` VALUES ('13740', '2', '1', '3', '3', '4', '8', '2019-02-14', '14:19:43');
INSERT INTO `lotteryresult` VALUES ('13741', '1', '1', '5', '2', '4', '9', '2019-02-14', '14:29:46');
INSERT INTO `lotteryresult` VALUES ('13742', '6', '4', '0', '4', '1', '10', '2019-02-14', '14:39:49');
INSERT INTO `lotteryresult` VALUES ('13743', '8', '5', '2', '8', '6', '11', '2019-02-14', '14:49:53');
INSERT INTO `lotteryresult` VALUES ('13744', '4', '2', '4', '2', '3', '12', '2019-02-14', '14:59:56');
INSERT INTO `lotteryresult` VALUES ('13745', '0', '9', '5', '4', '3', '13', '2019-02-14', '15:09:59');
INSERT INTO `lotteryresult` VALUES ('13746', '6', '3', '9', '3', '5', '14', '2019-02-14', '15:20:02');
INSERT INTO `lotteryresult` VALUES ('13747', '1', '0', '7', '7', '7', '15', '2019-02-14', '15:30:05');
INSERT INTO `lotteryresult` VALUES ('13748', '6', '7', '3', '3', '5', '16', '2019-02-14', '15:40:08');
INSERT INTO `lotteryresult` VALUES ('13749', '2', '8', '4', '3', '9', '17', '2019-02-14', '15:50:12');
INSERT INTO `lotteryresult` VALUES ('13750', '2', '3', '3', '2', '3', '18', '2019-02-14', '16:00:16');
INSERT INTO `lotteryresult` VALUES ('13751', '3', '7', '1', '9', '5', '19', '2019-02-14', '16:10:19');
INSERT INTO `lotteryresult` VALUES ('13752', '5', '9', '4', '3', '2', '20', '2019-02-14', '16:20:23');
INSERT INTO `lotteryresult` VALUES ('13753', '8', '0', '5', '1', '5', '21', '2019-02-14', '16:30:26');
INSERT INTO `lotteryresult` VALUES ('13754', '5', '5', '4', '6', '9', '22', '2019-02-14', '16:40:29');
INSERT INTO `lotteryresult` VALUES ('13755', '4', '8', '3', '9', '0', '23', '2019-02-14', '16:50:32');
INSERT INTO `lotteryresult` VALUES ('13756', '6', '8', '4', '5', '1', '24', '2019-02-14', '17:00:35');
INSERT INTO `lotteryresult` VALUES ('13757', '2', '5', '5', '6', '5', '25', '2019-02-14', '17:10:38');
INSERT INTO `lotteryresult` VALUES ('13758', '4', '8', '9', '8', '8', '26', '2019-02-14', '17:20:41');
INSERT INTO `lotteryresult` VALUES ('13759', '4', '4', '3', '6', '0', '27', '2019-02-14', '17:30:44');
INSERT INTO `lotteryresult` VALUES ('13760', '5', '2', '2', '4', '4', '28', '2019-02-14', '17:40:48');
INSERT INTO `lotteryresult` VALUES ('13761', '0', '4', '5', '0', '5', '29', '2019-02-14', '17:50:51');
INSERT INTO `lotteryresult` VALUES ('13762', '4', '8', '8', '3', '7', '30', '2019-02-14', '18:00:54');
INSERT INTO `lotteryresult` VALUES ('13763', '2', '5', '7', '7', '5', '31', '2019-02-14', '18:10:57');
INSERT INTO `lotteryresult` VALUES ('13764', '0', '0', '6', '7', '3', '32', '2019-02-14', '18:21:00');
INSERT INTO `lotteryresult` VALUES ('13765', '0', '5', '3', '9', '1', '33', '2019-02-14', '18:31:04');
INSERT INTO `lotteryresult` VALUES ('13766', '9', '0', '2', '1', '9', '34', '2019-02-14', '18:41:07');
INSERT INTO `lotteryresult` VALUES ('13767', '5', '1', '4', '7', '5', '35', '2019-02-14', '18:51:10');
INSERT INTO `lotteryresult` VALUES ('13768', '2', '1', '5', '5', '8', '36', '2019-02-14', '19:01:13');
INSERT INTO `lotteryresult` VALUES ('13769', '4', '9', '8', '4', '8', '37', '2019-02-14', '19:11:16');
INSERT INTO `lotteryresult` VALUES ('13770', '4', '1', '1', '1', '6', '38', '2019-02-14', '19:21:19');
INSERT INTO `lotteryresult` VALUES ('13771', '3', '0', '7', '9', '1', '39', '2019-02-14', '19:31:22');
INSERT INTO `lotteryresult` VALUES ('13772', '1', '9', '5', '1', '8', '40', '2019-02-14', '19:41:26');
INSERT INTO `lotteryresult` VALUES ('13773', '5', '0', '2', '6', '4', '41', '2019-02-14', '19:51:31');
INSERT INTO `lotteryresult` VALUES ('13774', '6', '1', '6', '3', '7', '42', '2019-02-14', '20:01:35');
INSERT INTO `lotteryresult` VALUES ('13775', '2', '8', '1', '5', '6', '43', '2019-02-14', '20:11:39');
INSERT INTO `lotteryresult` VALUES ('13776', '0', '0', '0', '6', '5', '44', '2019-02-14', '20:21:43');
INSERT INTO `lotteryresult` VALUES ('13777', '6', '4', '2', '2', '5', '45', '2019-02-14', '20:31:47');
INSERT INTO `lotteryresult` VALUES ('13778', '9', '2', '4', '8', '7', '46', '2019-02-14', '20:41:51');
INSERT INTO `lotteryresult` VALUES ('13779', '8', '6', '0', '0', '0', '47', '2019-02-14', '20:51:54');
INSERT INTO `lotteryresult` VALUES ('13780', '1', '7', '5', '7', '6', '48', '2019-02-14', '21:01:57');
INSERT INTO `lotteryresult` VALUES ('13781', '0', '2', '5', '6', '7', '49', '2019-02-14', '21:12:00');
INSERT INTO `lotteryresult` VALUES ('13782', '8', '3', '8', '1', '0', '50', '2019-02-14', '21:22:03');
INSERT INTO `lotteryresult` VALUES ('13783', '3', '7', '3', '8', '2', '51', '2019-02-14', '21:32:06');
INSERT INTO `lotteryresult` VALUES ('13784', '5', '2', '9', '5', '4', '52', '2019-02-14', '21:42:09');
INSERT INTO `lotteryresult` VALUES ('13785', '3', '6', '3', '9', '7', '53', '2019-02-14', '21:52:12');
INSERT INTO `lotteryresult` VALUES ('13786', '7', '5', '7', '4', '5', '54', '2019-02-14', '22:02:15');
INSERT INTO `lotteryresult` VALUES ('13787', '2', '8', '0', '6', '7', '55', '2019-02-14', '22:12:18');
INSERT INTO `lotteryresult` VALUES ('13788', '2', '8', '7', '2', '9', '56', '2019-02-14', '22:22:21');
INSERT INTO `lotteryresult` VALUES ('13789', '4', '9', '8', '4', '2', '57', '2019-02-14', '22:32:24');
INSERT INTO `lotteryresult` VALUES ('13790', '7', '1', '2', '9', '6', '58', '2019-02-14', '22:42:27');
INSERT INTO `lotteryresult` VALUES ('13791', '2', '6', '1', '1', '1', '59', '2019-02-14', '22:52:30');
INSERT INTO `lotteryresult` VALUES ('13792', '0', '1', '0', '5', '9', '60', '2019-02-14', '23:02:33');
INSERT INTO `lotteryresult` VALUES ('13793', '9', '3', '5', '1', '3', '61', '2019-02-14', '23:12:36');
INSERT INTO `lotteryresult` VALUES ('13794', '6', '3', '5', '3', '0', '62', '2019-02-14', '23:22:40');
INSERT INTO `lotteryresult` VALUES ('13795', '8', '6', '9', '4', '2', '63', '2019-02-14', '23:32:43');
INSERT INTO `lotteryresult` VALUES ('13796', '7', '6', '6', '9', '8', '64', '2019-02-14', '23:42:46');
INSERT INTO `lotteryresult` VALUES ('13797', '1', '7', '4', '8', '1', '65', '2019-02-14', '23:52:49');
INSERT INTO `lotteryresult` VALUES ('13798', '8', '0', '7', '8', '2', '66', '2019-02-14', '00:02:52');
INSERT INTO `lotteryresult` VALUES ('13799', '2', '1', '3', '6', '1', '1', '2019-02-15', '10:11:30');
INSERT INTO `lotteryresult` VALUES ('13800', '2', '5', '3', '5', '6', '2', '2019-02-15', '10:21:34');
INSERT INTO `lotteryresult` VALUES ('13801', '7', '3', '6', '1', '0', '3', '2019-02-15', '10:31:38');
INSERT INTO `lotteryresult` VALUES ('13802', '1', '2', '4', '9', '3', '4', '2019-02-15', '10:41:42');
INSERT INTO `lotteryresult` VALUES ('13803', '1', '6', '4', '9', '3', '5', '2019-02-15', '10:51:46');
INSERT INTO `lotteryresult` VALUES ('13804', '8', '2', '9', '2', '4', '6', '2019-02-15', '11:01:50');
INSERT INTO `lotteryresult` VALUES ('13805', '1', '9', '7', '7', '2', '7', '2019-02-15', '11:11:54');
INSERT INTO `lotteryresult` VALUES ('13806', '6', '2', '4', '3', '8', '8', '2019-02-15', '11:21:58');
INSERT INTO `lotteryresult` VALUES ('13807', '7', '0', '4', '8', '3', '9', '2019-02-15', '11:32:02');
INSERT INTO `lotteryresult` VALUES ('13808', '2', '2', '1', '4', '0', '10', '2019-02-15', '11:42:06');
INSERT INTO `lotteryresult` VALUES ('13809', '5', '3', '6', '3', '9', '11', '2019-02-15', '11:52:10');
INSERT INTO `lotteryresult` VALUES ('13810', '2', '4', '8', '9', '1', '12', '2019-02-15', '12:02:14');
INSERT INTO `lotteryresult` VALUES ('13811', '1', '9', '4', '0', '6', '13', '2019-02-15', '12:12:18');
INSERT INTO `lotteryresult` VALUES ('13812', '9', '1', '3', '3', '0', '14', '2019-02-15', '12:22:22');
INSERT INTO `lotteryresult` VALUES ('13813', '2', '4', '4', '0', '9', '15', '2019-02-15', '12:32:26');
INSERT INTO `lotteryresult` VALUES ('13814', '3', '1', '1', '3', '5', '16', '2019-02-15', '12:42:30');
INSERT INTO `lotteryresult` VALUES ('13815', '1', '7', '7', '6', '3', '17', '2019-02-15', '12:52:34');
INSERT INTO `lotteryresult` VALUES ('13816', '5', '0', '4', '5', '4', '18', '2019-02-15', '15:06:41');
INSERT INTO `lotteryresult` VALUES ('13817', '5', '0', '0', '0', '2', '19', '2019-02-15', '15:16:44');
INSERT INTO `lotteryresult` VALUES ('13818', '2', '4', '4', '1', '7', '20', '2019-02-15', '15:26:47');
INSERT INTO `lotteryresult` VALUES ('13819', '8', '0', '2', '5', '1', '21', '2019-02-15', '15:36:48');
INSERT INTO `lotteryresult` VALUES ('13820', '2', '8', '4', '5', '6', '22', '2019-02-15', '15:46:51');
INSERT INTO `lotteryresult` VALUES ('13821', '7', '9', '2', '4', '2', '23', '2019-02-15', '15:56:52');
INSERT INTO `lotteryresult` VALUES ('13822', '2', '8', '7', '5', '3', '24', '2019-02-15', '16:06:53');

-- ----------------------------
-- Table structure for `odds`
-- ----------------------------
DROP TABLE IF EXISTS `odds`;
CREATE TABLE `odds` (
  `id` int(1) NOT NULL,
  `bigorsmall` float(3,2) NOT NULL,
  `longhu` float(3,2) NOT NULL,
  `draw` float(4,2) NOT NULL,
  `niu1` float(4,2) NOT NULL,
  `niu2` float(4,2) NOT NULL,
  `niu3` float(4,2) NOT NULL,
  `niu4` float(4,2) NOT NULL,
  `niu5` float(4,2) NOT NULL,
  `niu6` float(4,2) NOT NULL,
  `niu7` float(4,2) NOT NULL,
  `niu8` float(4,2) NOT NULL,
  `niu9` float(4,2) NOT NULL,
  `niuniu` float(4,2) NOT NULL,
  `baozi` int(4) NOT NULL,
  `sizhang` int(3) NOT NULL,
  `hulu` int(3) NOT NULL,
  `shunzi` int(2) NOT NULL,
  `sanzhang` int(2) NOT NULL,
  `liangdui` int(2) NOT NULL,
  `yidui` float(2,1) NOT NULL,
  `wuli` int(3) NOT NULL,
  `danshuang` float(3,2) NOT NULL,
  `zhixuan` float(4,2) NOT NULL,
  `renxuan` float(3,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of odds
-- ----------------------------
INSERT INTO `odds` VALUES ('1', '0.95', '0.95', '8.50', '13.50', '12.50', '13.50', '12.50', '13.50', '12.50', '13.50', '12.50', '13.50', '13.50', '8000', '180', '90', '70', '12', '9', '1.3', '380', '0.70', '8.50', '0.95');

-- ----------------------------
-- Table structure for `odds_mem`
-- ----------------------------
DROP TABLE IF EXISTS `odds_mem`;
CREATE TABLE `odds_mem` (
  `level` int(1) NOT NULL,
  `bigorsmall` float(3,2) NOT NULL,
  `longhu` float(3,2) NOT NULL,
  `draw` float(4,2) NOT NULL,
  `niu1` float(4,2) NOT NULL,
  `niu2` float(4,2) NOT NULL,
  `niu3` float(4,2) NOT NULL,
  `niu4` float(4,2) NOT NULL,
  `niu5` float(4,2) NOT NULL,
  `niu6` float(4,2) NOT NULL,
  `niu7` float(4,2) NOT NULL,
  `niu8` float(4,2) NOT NULL,
  `niu9` float(4,2) NOT NULL,
  `niuniu` float(4,2) NOT NULL,
  `baozi` int(4) NOT NULL,
  `sizhang` int(3) NOT NULL,
  `hulu` int(3) NOT NULL,
  `shunzi` int(2) NOT NULL,
  `sanzhang` int(2) NOT NULL,
  `liangdui` int(2) NOT NULL,
  `yidui` float(2,1) NOT NULL,
  `wuli` int(3) NOT NULL,
  `danshuang` float(3,2) NOT NULL,
  `zhixuan` float(4,2) NOT NULL,
  `renxuan` float(3,2) NOT NULL,
  PRIMARY KEY (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of odds_mem
-- ----------------------------
INSERT INTO `odds_mem` VALUES ('0', '0.90', '0.90', '8.00', '11.00', '10.00', '11.00', '10.00', '11.00', '10.00', '11.00', '10.00', '11.00', '11.00', '4000', '140', '60', '50', '9', '6', '1.1', '200', '0.90', '8.00', '0.90');
INSERT INTO `odds_mem` VALUES ('1', '0.93', '0.94', '8.60', '13.00', '12.00', '13.00', '12.00', '13.00', '12.00', '13.00', '12.00', '13.00', '13.00', '7500', '180', '80', '65', '11', '7', '1.3', '370', '0.93', '8.60', '0.94');
INSERT INTO `odds_mem` VALUES ('2', '0.95', '0.98', '8.80', '14.00', '13.00', '14.00', '13.00', '14.00', '13.00', '14.00', '13.00', '14.00', '14.00', '8000', '190', '90', '70', '13', '12', '1.4', '980', '0.95', '8.80', '0.98');
INSERT INTO `odds_mem` VALUES ('3', '0.97', '1.00', '9.10', '15.00', '14.00', '15.00', '14.00', '15.00', '14.00', '15.00', '14.00', '15.00', '15.00', '9000', '199', '99', '79', '13', '9', '1.5', '399', '0.97', '9.10', '1.00');
INSERT INTO `odds_mem` VALUES ('4', '0.98', '1.06', '9.28', '15.00', '14.00', '15.00', '14.00', '15.00', '14.00', '15.00', '14.00', '15.00', '15.00', '9000', '200', '100', '80', '13', '9', '1.6', '400', '0.98', '9.06', '0.97');
INSERT INTO `odds_mem` VALUES ('5', '0.97', '1.00', '9.10', '15.00', '14.00', '15.00', '14.00', '15.00', '14.00', '15.00', '14.00', '15.00', '15.00', '9000', '199', '99', '79', '13', '9', '1.5', '399', '0.98', '9.10', '1.00');
INSERT INTO `odds_mem` VALUES ('6', '0.97', '1.00', '9.10', '15.00', '14.00', '15.00', '14.00', '15.00', '14.00', '15.00', '14.00', '15.00', '15.00', '9000', '199', '99', '79', '13', '9', '0.5', '399', '0.98', '9.10', '1.00');
INSERT INTO `odds_mem` VALUES ('7', '0.97', '1.00', '9.10', '15.00', '14.00', '15.00', '14.00', '15.00', '14.00', '15.00', '14.00', '15.00', '15.00', '9000', '199', '99', '79', '13', '9', '1.5', '399', '0.98', '9.10', '1.00');
INSERT INTO `odds_mem` VALUES ('8', '0.97', '1.00', '9.10', '15.00', '14.00', '15.00', '14.00', '15.00', '14.00', '15.00', '14.00', '15.00', '15.00', '9000', '199', '99', '79', '13', '9', '1.5', '399', '0.98', '9.10', '1.00');
INSERT INTO `odds_mem` VALUES ('9', '0.97', '1.00', '9.10', '15.00', '14.00', '15.00', '14.00', '15.00', '14.00', '15.00', '14.00', '15.00', '14.00', '9000', '199', '99', '79', '13', '9', '1.5', '399', '0.98', '9.10', '1.00');

-- ----------------------------
-- Table structure for `periods`
-- ----------------------------
DROP TABLE IF EXISTS `periods`;
CREATE TABLE `periods` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `periods` int(3) NOT NULL,
  `time` date NOT NULL,
  `tablename` varchar(20) NOT NULL,
  `createtime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=330 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of periods
-- ----------------------------
INSERT INTO `periods` VALUES ('1', '1', '2019-02-01', 'bet20190201', null);
INSERT INTO `periods` VALUES ('2', '2', '2019-02-01', 'bet20190201', null);
INSERT INTO `periods` VALUES ('3', '150', '2019-02-01', 'bet20190201', null);
INSERT INTO `periods` VALUES ('4', '200', '2019-02-01', 'bet20190201', null);
INSERT INTO `periods` VALUES ('5', '200', '2019-02-08', 'bet20190201', '2019-02-08 20:50:24');
INSERT INTO `periods` VALUES ('12', '1', '2019-02-08', 'bet20190208', '2019-02-08 21:18:07');
INSERT INTO `periods` VALUES ('13', '2', '2019-02-08', 'bet20190208', '2019-02-08 21:25:09');
INSERT INTO `periods` VALUES ('14', '3', '2019-02-08', 'bet20190208', '2019-02-08 21:32:12');
INSERT INTO `periods` VALUES ('15', '4', '2019-02-08', 'bet20190208', '2019-02-08 21:39:15');
INSERT INTO `periods` VALUES ('16', '5', '2019-02-08', 'bet20190208', '2019-02-08 21:46:18');
INSERT INTO `periods` VALUES ('17', '6', '2019-02-08', 'bet20190208', '2019-02-08 21:53:22');
INSERT INTO `periods` VALUES ('18', '7', '2019-02-08', 'bet20190208', '2019-02-08 22:00:25');
INSERT INTO `periods` VALUES ('19', '8', '2019-02-08', 'bet20190208', '2019-02-08 22:07:28');
INSERT INTO `periods` VALUES ('20', '9', '2019-02-08', 'bet20190208', '2019-02-08 22:14:31');
INSERT INTO `periods` VALUES ('21', '10', '2019-02-08', 'bet20190208', '2019-02-08 22:21:34');
INSERT INTO `periods` VALUES ('22', '11', '2019-02-08', 'bet20190208', '2019-02-08 22:28:39');
INSERT INTO `periods` VALUES ('23', '12', '2019-02-08', 'bet20190208', '2019-02-08 22:35:42');
INSERT INTO `periods` VALUES ('24', '13', '2019-02-08', 'bet20190208', '2019-02-08 22:42:45');
INSERT INTO `periods` VALUES ('25', '14', '2019-02-08', 'bet20190208', '2019-02-08 22:49:48');
INSERT INTO `periods` VALUES ('26', '15', '2019-02-08', 'bet20190208', '2019-02-08 22:56:51');
INSERT INTO `periods` VALUES ('27', '16', '2019-02-08', 'bet20190208', '2019-02-08 23:03:55');
INSERT INTO `periods` VALUES ('28', '17', '2019-02-08', 'bet20190208', '2019-02-08 23:10:58');
INSERT INTO `periods` VALUES ('29', '18', '2019-02-08', 'bet20190208', '2019-02-08 23:18:01');
INSERT INTO `periods` VALUES ('30', '19', '2019-02-08', 'bet20190208', '2019-02-08 23:25:04');
INSERT INTO `periods` VALUES ('31', '20', '2019-02-08', 'bet20190208', '2019-02-08 23:32:07');
INSERT INTO `periods` VALUES ('32', '21', '2019-02-08', 'bet20190208', '2019-02-08 23:39:11');
INSERT INTO `periods` VALUES ('33', '22', '2019-02-08', 'bet20190208', '2019-02-08 23:46:14');
INSERT INTO `periods` VALUES ('34', '23', '2019-02-08', 'bet20190208', '2019-02-08 23:53:17');
INSERT INTO `periods` VALUES ('35', '24', '2019-02-09', 'bet20190208', '2019-02-09 00:00:20');
INSERT INTO `periods` VALUES ('36', '25', '2019-02-09', 'bet20190208', '2019-02-09 00:07:23');
INSERT INTO `periods` VALUES ('37', '26', '2019-02-09', 'bet20190208', '2019-02-09 00:14:27');
INSERT INTO `periods` VALUES ('38', '27', '2019-02-09', 'bet20190208', '2019-02-09 00:21:30');
INSERT INTO `periods` VALUES ('39', '28', '2019-02-09', 'bet20190208', '2019-02-09 00:28:33');
INSERT INTO `periods` VALUES ('40', '29', '2019-02-09', 'bet20190208', '2019-02-09 00:35:36');
INSERT INTO `periods` VALUES ('41', '30', '2019-02-09', 'bet20190208', '2019-02-09 00:42:39');
INSERT INTO `periods` VALUES ('42', '31', '2019-02-09', 'bet20190208', '2019-02-09 12:26:00');
INSERT INTO `periods` VALUES ('43', '32', '2019-02-09', 'bet20190208', '2019-02-09 12:42:18');
INSERT INTO `periods` VALUES ('44', '200', '2019-02-09', 'bet20190208', '2019-02-08 13:29:12');
INSERT INTO `periods` VALUES ('45', '1', '2019-02-09', 'bet20190209', '2019-02-09 13:29:51');
INSERT INTO `periods` VALUES ('46', '2', '2019-02-09', 'bet20190209', '2019-02-09 15:27:38');
INSERT INTO `periods` VALUES ('47', '3', '2019-02-09', 'bet20190209', '2019-02-09 15:35:08');
INSERT INTO `periods` VALUES ('48', '4', '2019-02-09', 'bet20190209', '2019-02-09 15:42:11');
INSERT INTO `periods` VALUES ('49', '5', '2019-02-09', 'bet20190209', '2019-02-09 16:29:17');
INSERT INTO `periods` VALUES ('50', '6', '2019-02-09', 'bet20190209', '2019-02-09 16:36:19');
INSERT INTO `periods` VALUES ('51', '7', '2019-02-09', 'bet20190209', '2019-02-09 16:43:21');
INSERT INTO `periods` VALUES ('52', '8', '2019-02-09', 'bet20190209', '2019-02-09 16:50:23');
INSERT INTO `periods` VALUES ('53', '9', '2019-02-09', 'bet20190209', '2019-02-09 16:57:25');
INSERT INTO `periods` VALUES ('54', '10', '2019-02-09', 'bet20190209', '2019-02-09 17:04:28');
INSERT INTO `periods` VALUES ('55', '11', '2019-02-09', 'bet20190209', '2019-02-09 17:04:28');
INSERT INTO `periods` VALUES ('56', '12', '2019-02-09', 'bet20190209', '2019-02-09 17:11:30');
INSERT INTO `periods` VALUES ('57', '13', '2019-02-09', 'bet20190209', '2019-02-09 17:18:32');
INSERT INTO `periods` VALUES ('58', '14', '2019-02-09', 'bet20190209', '2019-02-09 17:25:34');
INSERT INTO `periods` VALUES ('59', '15', '2019-02-09', 'bet20190209', '2019-02-09 17:32:36');
INSERT INTO `periods` VALUES ('60', '16', '2019-02-09', 'bet20190209', '2019-02-09 17:39:38');
INSERT INTO `periods` VALUES ('61', '17', '2019-02-09', 'bet20190209', '2019-02-09 17:39:38');
INSERT INTO `periods` VALUES ('62', '18', '2019-02-09', 'bet20190209', '2019-02-09 17:46:40');
INSERT INTO `periods` VALUES ('63', '19', '2019-02-09', 'bet20190209', '2019-02-09 17:46:41');
INSERT INTO `periods` VALUES ('64', '20', '2019-02-09', 'bet20190209', '2019-02-09 17:53:43');
INSERT INTO `periods` VALUES ('65', '21', '2019-02-09', 'bet20190209', '2019-02-09 18:00:45');
INSERT INTO `periods` VALUES ('66', '22', '2019-02-09', 'bet20190209', '2019-02-09 18:07:47');
INSERT INTO `periods` VALUES ('67', '23', '2019-02-09', 'bet20190209', '2019-02-09 18:14:49');
INSERT INTO `periods` VALUES ('68', '24', '2019-02-09', 'bet20190209', '2019-02-09 19:46:31');
INSERT INTO `periods` VALUES ('69', '25', '2019-02-09', 'bet20190209', '2019-02-09 19:53:33');
INSERT INTO `periods` VALUES ('70', '26', '2019-02-09', 'bet20190209', '2019-02-09 20:00:34');
INSERT INTO `periods` VALUES ('71', '27', '2019-02-09', 'bet20190209', '2019-02-09 20:07:35');
INSERT INTO `periods` VALUES ('72', '28', '2019-02-09', 'bet20190209', '2019-02-09 20:14:36');
INSERT INTO `periods` VALUES ('73', '29', '2019-02-09', 'bet20190209', '2019-02-09 20:21:38');
INSERT INTO `periods` VALUES ('74', '30', '2019-02-09', 'bet20190209', '2019-02-09 20:21:39');
INSERT INTO `periods` VALUES ('75', '31', '2019-02-09', 'bet20190209', '2019-02-09 20:28:41');
INSERT INTO `periods` VALUES ('76', '32', '2019-02-09', 'bet20190209', '2019-02-09 20:35:42');
INSERT INTO `periods` VALUES ('77', '33', '2019-02-09', 'bet20190209', '2019-02-09 20:42:43');
INSERT INTO `periods` VALUES ('78', '34', '2019-02-09', 'bet20190209', '2019-02-09 20:49:44');
INSERT INTO `periods` VALUES ('79', '35', '2019-02-09', 'bet20190209', '2019-02-09 20:56:46');
INSERT INTO `periods` VALUES ('80', '36', '2019-02-09', 'bet20190209', '2019-02-09 20:56:46');
INSERT INTO `periods` VALUES ('81', '37', '2019-02-09', 'bet20190209', '2019-02-09 21:03:47');
INSERT INTO `periods` VALUES ('82', '38', '2019-02-09', 'bet20190209', '2019-02-09 21:10:48');
INSERT INTO `periods` VALUES ('83', '39', '2019-02-09', 'bet20190209', '2019-02-09 21:17:50');
INSERT INTO `periods` VALUES ('84', '40', '2019-02-09', 'bet20190209', '2019-02-09 21:17:51');
INSERT INTO `periods` VALUES ('85', '41', '2019-02-09', 'bet20190209', '2019-02-09 21:24:52');
INSERT INTO `periods` VALUES ('86', '42', '2019-02-09', 'bet20190209', '2019-02-09 21:31:54');
INSERT INTO `periods` VALUES ('87', '43', '2019-02-09', 'bet20190209', '2019-02-09 21:31:54');
INSERT INTO `periods` VALUES ('88', '44', '2019-02-09', 'bet20190209', '2019-02-09 21:38:55');
INSERT INTO `periods` VALUES ('89', '45', '2019-02-09', 'bet20190209', '2019-02-09 21:45:56');
INSERT INTO `periods` VALUES ('90', '46', '2019-02-09', 'bet20190209', '2019-02-09 21:52:57');
INSERT INTO `periods` VALUES ('91', '47', '2019-02-09', 'bet20190209', '2019-02-09 21:59:58');
INSERT INTO `periods` VALUES ('92', '48', '2019-02-09', 'bet20190209', '2019-02-09 22:07:00');
INSERT INTO `periods` VALUES ('93', '49', '2019-02-09', 'bet20190209', '2019-02-09 22:07:00');
INSERT INTO `periods` VALUES ('94', '50', '2019-02-09', 'bet20190209', '2019-02-09 22:14:01');
INSERT INTO `periods` VALUES ('95', '51', '2019-02-09', 'bet20190209', '2019-02-09 22:21:03');
INSERT INTO `periods` VALUES ('96', '1', '2019-02-10', 'bet20190210', '2019-02-10 14:09:04');
INSERT INTO `periods` VALUES ('97', '2', '2019-02-10', 'bet20190210', '2019-02-10 14:16:05');
INSERT INTO `periods` VALUES ('98', '3', '2019-02-10', 'bet20190210', '2019-02-10 14:23:06');
INSERT INTO `periods` VALUES ('99', '4', '2019-02-10', 'bet20190210', '2019-02-10 14:30:07');
INSERT INTO `periods` VALUES ('100', '5', '2019-02-10', 'bet20190210', '2019-02-10 14:37:08');
INSERT INTO `periods` VALUES ('101', '6', '2019-02-10', 'bet20190210', '2019-02-10 14:44:10');
INSERT INTO `periods` VALUES ('102', '7', '2019-02-10', 'bet20190210', '2019-02-10 14:44:10');
INSERT INTO `periods` VALUES ('103', '8', '2019-02-10', 'bet20190210', '2019-02-10 14:51:11');
INSERT INTO `periods` VALUES ('104', '9', '2019-02-10', 'bet20190210', '2019-02-10 14:58:12');
INSERT INTO `periods` VALUES ('105', '10', '2019-02-10', 'bet20190210', '2019-02-10 15:05:13');
INSERT INTO `periods` VALUES ('106', '11', '2019-02-10', 'bet20190210', '2019-02-10 15:12:14');
INSERT INTO `periods` VALUES ('107', '12', '2019-02-10', 'bet20190210', '2019-02-10 15:19:16');
INSERT INTO `periods` VALUES ('108', '13', '2019-02-10', 'bet20190210', '2019-02-10 15:19:17');
INSERT INTO `periods` VALUES ('109', '14', '2019-02-10', 'bet20190210', '2019-02-10 15:26:18');
INSERT INTO `periods` VALUES ('110', '15', '2019-02-10', 'bet20190210', '2019-02-10 15:33:19');
INSERT INTO `periods` VALUES ('111', '16', '2019-02-10', 'bet20190210', '2019-02-10 15:40:20');
INSERT INTO `periods` VALUES ('112', '17', '2019-02-10', 'bet20190210', '2019-02-10 15:47:21');
INSERT INTO `periods` VALUES ('113', '18', '2019-02-10', 'bet20190210', '2019-02-10 15:54:23');
INSERT INTO `periods` VALUES ('114', '19', '2019-02-10', 'bet20190210', '2019-02-10 15:54:24');
INSERT INTO `periods` VALUES ('115', '20', '2019-02-10', 'bet20190210', '2019-02-10 16:01:25');
INSERT INTO `periods` VALUES ('116', '21', '2019-02-10', 'bet20190210', '2019-02-10 16:08:26');
INSERT INTO `periods` VALUES ('117', '22', '2019-02-10', 'bet20190210', '2019-02-10 16:15:27');
INSERT INTO `periods` VALUES ('118', '23', '2019-02-10', 'bet20190210', '2019-02-10 16:22:28');
INSERT INTO `periods` VALUES ('119', '24', '2019-02-10', 'bet20190210', '2019-02-10 16:29:30');
INSERT INTO `periods` VALUES ('120', '25', '2019-02-10', 'bet20190210', '2019-02-10 16:29:31');
INSERT INTO `periods` VALUES ('121', '26', '2019-02-10', 'bet20190210', '2019-02-10 16:36:32');
INSERT INTO `periods` VALUES ('122', '27', '2019-02-10', 'bet20190210', '2019-02-10 16:43:33');
INSERT INTO `periods` VALUES ('123', '28', '2019-02-10', 'bet20190210', '2019-02-10 16:50:34');
INSERT INTO `periods` VALUES ('124', '29', '2019-02-10', 'bet20190210', '2019-02-10 16:57:35');
INSERT INTO `periods` VALUES ('125', '30', '2019-02-10', 'bet20190210', '2019-02-10 17:04:37');
INSERT INTO `periods` VALUES ('126', '31', '2019-02-10', 'bet20190210', '2019-02-10 17:04:37');
INSERT INTO `periods` VALUES ('127', '1', '2019-02-11', 'bet20190211', '2019-02-11 20:06:25');
INSERT INTO `periods` VALUES ('128', '2', '2019-02-11', 'bet20190211', '2019-02-11 20:14:54');
INSERT INTO `periods` VALUES ('129', '3', '2019-02-11', 'bet20190211', '2019-02-11 20:22:06');
INSERT INTO `periods` VALUES ('130', '4', '2019-02-11', 'bet20190211', '2019-02-11 20:28:18');
INSERT INTO `periods` VALUES ('131', '5', '2019-02-11', 'bet20190211', '2019-02-11 20:28:18');
INSERT INTO `periods` VALUES ('132', '6', '2019-02-11', 'bet20190211', '2019-02-11 20:34:30');
INSERT INTO `periods` VALUES ('133', '7', '2019-02-11', 'bet20190211', '2019-02-11 20:34:31');
INSERT INTO `periods` VALUES ('134', '8', '2019-02-11', 'bet20190211', '2019-02-11 20:40:42');
INSERT INTO `periods` VALUES ('135', '9', '2019-02-11', 'bet20190211', '2019-02-11 20:46:54');
INSERT INTO `periods` VALUES ('136', '10', '2019-02-11', 'bet20190211', '2019-02-11 20:53:06');
INSERT INTO `periods` VALUES ('137', '11', '2019-02-11', 'bet20190211', '2019-02-11 20:59:18');
INSERT INTO `periods` VALUES ('138', '12', '2019-02-11', 'bet20190211', '2019-02-11 21:05:30');
INSERT INTO `periods` VALUES ('139', '13', '2019-02-11', 'bet20190211', '2019-02-11 21:11:42');
INSERT INTO `periods` VALUES ('140', '14', '2019-02-11', 'bet20190211', '2019-02-11 21:17:54');
INSERT INTO `periods` VALUES ('141', '15', '2019-02-11', 'bet20190211', '2019-02-11 21:24:06');
INSERT INTO `periods` VALUES ('142', '16', '2019-02-11', 'bet20190211', '2019-02-11 21:30:18');
INSERT INTO `periods` VALUES ('143', '17', '2019-02-11', 'bet20190211', '2019-02-11 21:36:30');
INSERT INTO `periods` VALUES ('144', '18', '2019-02-11', 'bet20190211', '2019-02-11 21:42:42');
INSERT INTO `periods` VALUES ('145', '19', '2019-02-11', 'bet20190211', '2019-02-11 21:48:53');
INSERT INTO `periods` VALUES ('146', '20', '2019-02-11', 'bet20190211', '2019-02-11 21:55:05');
INSERT INTO `periods` VALUES ('147', '21', '2019-02-11', 'bet20190211', '2019-02-11 22:01:17');
INSERT INTO `periods` VALUES ('148', '22', '2019-02-11', 'bet20190211', '2019-02-11 22:07:29');
INSERT INTO `periods` VALUES ('149', '23', '2019-02-11', 'bet20190211', '2019-02-11 22:13:41');
INSERT INTO `periods` VALUES ('150', '24', '2019-02-11', 'bet20190211', '2019-02-11 22:19:53');
INSERT INTO `periods` VALUES ('151', '25', '2019-02-11', 'bet20190211', '2019-02-11 22:26:05');
INSERT INTO `periods` VALUES ('152', '26', '2019-02-11', 'bet20190211', '2019-02-11 22:32:16');
INSERT INTO `periods` VALUES ('153', '27', '2019-02-11', 'bet20190211', '2019-02-11 22:38:28');
INSERT INTO `periods` VALUES ('154', '28', '2019-02-11', 'bet20190211', '2019-02-11 22:44:40');
INSERT INTO `periods` VALUES ('155', '29', '2019-02-11', 'bet20190211', '2019-02-11 22:50:52');
INSERT INTO `periods` VALUES ('156', '30', '2019-02-11', 'bet20190211', '2019-02-11 22:57:04');
INSERT INTO `periods` VALUES ('157', '31', '2019-02-11', 'bet20190211', '2019-02-11 23:03:16');
INSERT INTO `periods` VALUES ('162', '1', '2019-02-12', 'bet20190212', '2019-02-12 02:41:32');
INSERT INTO `periods` VALUES ('163', '2', '2019-02-12', 'bet20190212', '2019-02-12 13:42:44');
INSERT INTO `periods` VALUES ('164', '3', '2019-02-12', 'bet20190212', '2019-02-12 13:42:45');
INSERT INTO `periods` VALUES ('165', '4', '2019-02-12', 'bet20190212', '2019-02-12 13:49:48');
INSERT INTO `periods` VALUES ('166', '5', '2019-02-12', 'bet20190212', '2019-02-12 13:56:51');
INSERT INTO `periods` VALUES ('167', '6', '2019-02-12', 'bet20190212', '2019-02-12 17:34:25');
INSERT INTO `periods` VALUES ('168', '7', '2019-02-12', 'bet20190212', '2019-02-12 17:43:32');
INSERT INTO `periods` VALUES ('169', '8', '2019-02-12', 'bet20190212', '2019-02-12 19:23:46');
INSERT INTO `periods` VALUES ('170', '9', '2019-02-12', 'bet20190212', '2019-02-12 19:30:49');
INSERT INTO `periods` VALUES ('171', '10', '2019-02-12', 'bet20190212', '2019-02-12 19:33:26');
INSERT INTO `periods` VALUES ('172', '11', '2019-02-12', 'bet20190212', '2019-02-12 19:33:27');
INSERT INTO `periods` VALUES ('173', '12', '2019-02-12', 'bet20190212', '2019-02-12 19:33:28');
INSERT INTO `periods` VALUES ('174', '13', '2019-02-12', 'bet20190212', '2019-02-12 19:33:29');
INSERT INTO `periods` VALUES ('175', '14', '2019-02-12', 'bet20190212', '2019-02-12 19:33:30');
INSERT INTO `periods` VALUES ('176', '15', '2019-02-12', 'bet20190212', '2019-02-12 19:34:52');
INSERT INTO `periods` VALUES ('177', '16', '2019-02-12', 'bet20190212', '2019-02-12 19:34:53');
INSERT INTO `periods` VALUES ('178', '17', '2019-02-12', 'bet20190212', '2019-02-12 19:34:54');
INSERT INTO `periods` VALUES ('179', '18', '2019-02-12', 'bet20190212', '2019-02-12 19:34:55');
INSERT INTO `periods` VALUES ('180', '19', '2019-02-12', 'bet20190212', '2019-02-12 19:34:56');
INSERT INTO `periods` VALUES ('181', '20', '2019-02-12', 'bet20190212', '2019-02-12 19:43:00');
INSERT INTO `periods` VALUES ('182', '21', '2019-02-12', 'bet20190212', '2019-02-12 19:43:00');
INSERT INTO `periods` VALUES ('183', '22', '2019-02-12', 'bet20190212', '2019-02-12 19:51:03');
INSERT INTO `periods` VALUES ('184', '23', '2019-02-12', 'bet20190212', '2019-02-12 19:59:08');
INSERT INTO `periods` VALUES ('185', '24', '2019-02-12', 'bet20190212', '2019-02-12 19:59:08');
INSERT INTO `periods` VALUES ('186', '25', '2019-02-12', 'bet20190212', '2019-02-12 19:59:08');
INSERT INTO `periods` VALUES ('187', '26', '2019-02-12', 'bet20190212', '2019-02-12 20:07:11');
INSERT INTO `periods` VALUES ('188', '27', '2019-02-12', 'bet20190212', '2019-02-12 20:15:14');
INSERT INTO `periods` VALUES ('189', '28', '2019-02-12', 'bet20190212', '2019-02-12 20:23:17');
INSERT INTO `periods` VALUES ('190', '29', '2019-02-12', 'bet20190212', '2019-02-12 20:31:22');
INSERT INTO `periods` VALUES ('191', '30', '2019-02-12', 'bet20190212', '2019-02-12 20:31:22');
INSERT INTO `periods` VALUES ('192', '31', '2019-02-12', 'bet20190212', '2019-02-12 20:31:22');
INSERT INTO `periods` VALUES ('193', '32', '2019-02-12', 'bet20190212', '2019-02-12 21:11:43');
INSERT INTO `periods` VALUES ('194', '33', '2019-02-12', 'bet20190212', '2019-02-12 21:19:47');
INSERT INTO `periods` VALUES ('195', '34', '2019-02-12', 'bet20190212', '2019-02-12 21:19:47');
INSERT INTO `periods` VALUES ('196', '35', '2019-02-12', 'bet20190212', '2019-02-12 21:22:50');
INSERT INTO `periods` VALUES ('197', '36', '2019-02-12', 'bet20190212', '2019-02-12 21:30:53');
INSERT INTO `periods` VALUES ('198', '37', '2019-02-12', 'bet20190212', '2019-02-12 21:38:56');
INSERT INTO `periods` VALUES ('199', '38', '2019-02-12', 'bet20190212', '2019-02-12 21:47:00');
INSERT INTO `periods` VALUES ('200', '39', '2019-02-12', 'bet20190212', '2019-02-12 21:47:00');
INSERT INTO `periods` VALUES ('201', '40', '2019-02-12', 'bet20190212', '2019-02-12 21:55:04');
INSERT INTO `periods` VALUES ('202', '41', '2019-02-12', 'bet20190212', '2019-02-12 22:03:08');
INSERT INTO `periods` VALUES ('203', '42', '2019-02-12', 'bet20190212', '2019-02-12 22:11:12');
INSERT INTO `periods` VALUES ('204', '43', '2019-02-12', 'bet20190212', '2019-02-12 22:19:16');
INSERT INTO `periods` VALUES ('205', '44', '2019-02-12', 'bet20190212', '2019-02-12 22:19:17');
INSERT INTO `periods` VALUES ('206', '45', '2019-02-12', 'bet20190212', '2019-02-12 22:27:22');
INSERT INTO `periods` VALUES ('207', '46', '2019-02-12', 'bet20190212', '2019-02-12 22:27:22');
INSERT INTO `periods` VALUES ('208', '47', '2019-02-12', 'bet20190212', '2019-02-12 22:27:23');
INSERT INTO `periods` VALUES ('209', '48', '2019-02-12', 'bet20190212', '2019-02-12 22:35:27');
INSERT INTO `periods` VALUES ('210', '49', '2019-02-12', 'bet20190212', '2019-02-12 22:43:31');
INSERT INTO `periods` VALUES ('211', '50', '2019-02-12', 'bet20190212', '2019-02-12 22:51:35');
INSERT INTO `periods` VALUES ('212', '51', '2019-02-12', 'bet20190212', '2019-02-12 22:59:39');
INSERT INTO `periods` VALUES ('213', '52', '2019-02-12', 'bet20190212', '2019-02-12 23:13:42');
INSERT INTO `periods` VALUES ('214', '53', '2019-02-12', 'bet20190212', '2019-02-12 23:13:42');
INSERT INTO `periods` VALUES ('215', '54', '2019-02-12', 'bet20190212', '2019-02-12 23:13:43');
INSERT INTO `periods` VALUES ('216', '55', '2019-02-12', 'bet20190212', '2019-02-12 23:20:48');
INSERT INTO `periods` VALUES ('217', '56', '2019-02-12', 'bet20190212', '2019-02-12 23:20:48');
INSERT INTO `periods` VALUES ('218', '57', '2019-02-12', 'bet20190212', '2019-02-12 23:27:49');
INSERT INTO `periods` VALUES ('219', '58', '2019-02-12', 'bet20190212', '2019-02-12 23:27:49');
INSERT INTO `periods` VALUES ('220', '59', '2019-02-12', 'bet20190212', '2019-02-12 23:28:01');
INSERT INTO `periods` VALUES ('221', '60', '2019-02-12', 'bet20190212', '2019-02-12 23:35:02');
INSERT INTO `periods` VALUES ('222', '61', '2019-02-12', 'bet20190212', '2019-02-12 23:42:03');
INSERT INTO `periods` VALUES ('223', '1', '2019-02-13', 'bet20190213', '2019-02-13 00:41:00');
INSERT INTO `periods` VALUES ('224', '2', '2019-02-13', 'bet20190213', '2019-02-13 00:41:00');
INSERT INTO `periods` VALUES ('225', '3', '2019-02-13', 'bet20190213', '2019-02-13 00:41:00');
INSERT INTO `periods` VALUES ('226', '4', '2019-02-13', 'bet20190213', '2019-02-13 00:48:00');
INSERT INTO `periods` VALUES ('227', '5', '2019-02-13', 'bet20190213', '2019-02-13 00:55:00');
INSERT INTO `periods` VALUES ('228', '6', '2019-02-13', 'bet20190213', '2019-02-13 01:02:00');
INSERT INTO `periods` VALUES ('229', '7', '2019-02-13', 'bet20190213', '2019-02-13 01:09:01');
INSERT INTO `periods` VALUES ('230', '8', '2019-02-13', 'bet20190213', '2019-02-13 01:16:02');
INSERT INTO `periods` VALUES ('231', '9', '2019-02-13', 'bet20190213', '2019-02-13 01:16:03');
INSERT INTO `periods` VALUES ('232', '10', '2019-02-13', 'bet20190213', '2019-02-13 01:25:03');
INSERT INTO `periods` VALUES ('233', '11', '2019-02-13', 'bet20190213', '2019-02-13 01:25:04');
INSERT INTO `periods` VALUES ('234', '12', '2019-02-13', 'bet20190213', '2019-02-13 01:25:05');
INSERT INTO `periods` VALUES ('235', '13', '2019-02-13', 'bet20190213', '2019-02-13 11:24:36');
INSERT INTO `periods` VALUES ('236', '14', '2019-02-13', 'bet20190213', '2019-02-13 11:32:39');
INSERT INTO `periods` VALUES ('237', '15', '2019-02-13', 'bet20190213', '2019-02-13 11:40:42');
INSERT INTO `periods` VALUES ('238', '16', '2019-02-13', 'bet20190213', '2019-02-13 12:14:17');
INSERT INTO `periods` VALUES ('239', '1', '2019-02-14', 'bet20190214', '2019-02-14 12:31:37');
INSERT INTO `periods` VALUES ('240', '2', '2019-02-14', 'bet20190214', '2019-02-14 12:31:38');
INSERT INTO `periods` VALUES ('241', '3', '2019-02-14', 'bet20190214', '2019-02-14 13:19:24');
INSERT INTO `periods` VALUES ('242', '4', '2019-02-14', 'bet20190214', '2019-02-14 13:29:27');
INSERT INTO `periods` VALUES ('243', '5', '2019-02-14', 'bet20190214', '2019-02-14 13:39:30');
INSERT INTO `periods` VALUES ('244', '6', '2019-02-14', 'bet20190214', '2019-02-14 13:49:33');
INSERT INTO `periods` VALUES ('245', '7', '2019-02-14', 'bet20190214', '2019-02-14 13:59:36');
INSERT INTO `periods` VALUES ('246', '8', '2019-02-14', 'bet20190214', '2019-02-14 14:09:39');
INSERT INTO `periods` VALUES ('247', '9', '2019-02-14', 'bet20190214', '2019-02-14 14:19:43');
INSERT INTO `periods` VALUES ('248', '10', '2019-02-14', 'bet20190214', '2019-02-14 14:29:46');
INSERT INTO `periods` VALUES ('249', '11', '2019-02-14', 'bet20190214', '2019-02-14 14:39:49');
INSERT INTO `periods` VALUES ('250', '12', '2019-02-14', 'bet20190214', '2019-02-14 14:49:53');
INSERT INTO `periods` VALUES ('251', '13', '2019-02-14', 'bet20190214', '2019-02-14 14:59:56');
INSERT INTO `periods` VALUES ('252', '14', '2019-02-14', 'bet20190214', '2019-02-14 15:09:59');
INSERT INTO `periods` VALUES ('253', '15', '2019-02-14', 'bet20190214', '2019-02-14 15:20:02');
INSERT INTO `periods` VALUES ('254', '16', '2019-02-14', 'bet20190214', '2019-02-14 15:30:05');
INSERT INTO `periods` VALUES ('255', '17', '2019-02-14', 'bet20190214', '2019-02-14 15:40:08');
INSERT INTO `periods` VALUES ('256', '18', '2019-02-14', 'bet20190214', '2019-02-14 15:50:12');
INSERT INTO `periods` VALUES ('257', '19', '2019-02-14', 'bet20190214', '2019-02-14 16:00:16');
INSERT INTO `periods` VALUES ('258', '20', '2019-02-14', 'bet20190214', '2019-02-14 16:10:19');
INSERT INTO `periods` VALUES ('259', '21', '2019-02-14', 'bet20190214', '2019-02-14 16:20:23');
INSERT INTO `periods` VALUES ('260', '22', '2019-02-14', 'bet20190214', '2019-02-14 16:30:26');
INSERT INTO `periods` VALUES ('261', '23', '2019-02-14', 'bet20190214', '2019-02-14 16:40:29');
INSERT INTO `periods` VALUES ('262', '24', '2019-02-14', 'bet20190214', '2019-02-14 16:50:32');
INSERT INTO `periods` VALUES ('263', '25', '2019-02-14', 'bet20190214', '2019-02-14 17:00:35');
INSERT INTO `periods` VALUES ('264', '26', '2019-02-14', 'bet20190214', '2019-02-14 17:10:38');
INSERT INTO `periods` VALUES ('265', '27', '2019-02-14', 'bet20190214', '2019-02-14 17:20:41');
INSERT INTO `periods` VALUES ('266', '28', '2019-02-14', 'bet20190214', '2019-02-14 17:30:44');
INSERT INTO `periods` VALUES ('267', '29', '2019-02-14', 'bet20190214', '2019-02-14 17:40:48');
INSERT INTO `periods` VALUES ('268', '30', '2019-02-14', 'bet20190214', '2019-02-14 17:50:51');
INSERT INTO `periods` VALUES ('269', '31', '2019-02-14', 'bet20190214', '2019-02-14 18:00:54');
INSERT INTO `periods` VALUES ('270', '32', '2019-02-14', 'bet20190214', '2019-02-14 18:10:57');
INSERT INTO `periods` VALUES ('271', '33', '2019-02-14', 'bet20190214', '2019-02-14 18:21:01');
INSERT INTO `periods` VALUES ('272', '34', '2019-02-14', 'bet20190214', '2019-02-14 18:31:04');
INSERT INTO `periods` VALUES ('273', '35', '2019-02-14', 'bet20190214', '2019-02-14 18:41:07');
INSERT INTO `periods` VALUES ('274', '36', '2019-02-14', 'bet20190214', '2019-02-14 18:51:10');
INSERT INTO `periods` VALUES ('275', '37', '2019-02-14', 'bet20190214', '2019-02-14 19:01:13');
INSERT INTO `periods` VALUES ('276', '38', '2019-02-14', 'bet20190214', '2019-02-14 19:11:16');
INSERT INTO `periods` VALUES ('277', '39', '2019-02-14', 'bet20190214', '2019-02-14 19:21:19');
INSERT INTO `periods` VALUES ('278', '40', '2019-02-14', 'bet20190214', '2019-02-14 19:31:23');
INSERT INTO `periods` VALUES ('279', '41', '2019-02-14', 'bet20190214', '2019-02-14 19:41:27');
INSERT INTO `periods` VALUES ('280', '42', '2019-02-14', 'bet20190214', '2019-02-14 19:51:31');
INSERT INTO `periods` VALUES ('281', '43', '2019-02-14', 'bet20190214', '2019-02-14 20:01:35');
INSERT INTO `periods` VALUES ('282', '44', '2019-02-14', 'bet20190214', '2019-02-14 20:11:39');
INSERT INTO `periods` VALUES ('283', '45', '2019-02-14', 'bet20190214', '2019-02-14 20:21:43');
INSERT INTO `periods` VALUES ('284', '46', '2019-02-14', 'bet20190214', '2019-02-14 20:31:47');
INSERT INTO `periods` VALUES ('285', '47', '2019-02-14', 'bet20190214', '2019-02-14 20:41:51');
INSERT INTO `periods` VALUES ('286', '48', '2019-02-14', 'bet20190214', '2019-02-14 20:51:54');
INSERT INTO `periods` VALUES ('287', '49', '2019-02-14', 'bet20190214', '2019-02-14 21:01:57');
INSERT INTO `periods` VALUES ('288', '50', '2019-02-14', 'bet20190214', '2019-02-14 21:12:00');
INSERT INTO `periods` VALUES ('289', '51', '2019-02-14', 'bet20190214', '2019-02-14 21:22:03');
INSERT INTO `periods` VALUES ('290', '52', '2019-02-14', 'bet20190214', '2019-02-14 21:32:06');
INSERT INTO `periods` VALUES ('291', '53', '2019-02-14', 'bet20190214', '2019-02-14 21:42:09');
INSERT INTO `periods` VALUES ('292', '54', '2019-02-14', 'bet20190214', '2019-02-14 21:52:12');
INSERT INTO `periods` VALUES ('293', '55', '2019-02-14', 'bet20190214', '2019-02-14 22:02:15');
INSERT INTO `periods` VALUES ('294', '56', '2019-02-14', 'bet20190214', '2019-02-14 22:12:18');
INSERT INTO `periods` VALUES ('295', '57', '2019-02-14', 'bet20190214', '2019-02-14 22:22:21');
INSERT INTO `periods` VALUES ('296', '58', '2019-02-14', 'bet20190214', '2019-02-14 22:32:24');
INSERT INTO `periods` VALUES ('297', '59', '2019-02-14', 'bet20190214', '2019-02-14 22:42:27');
INSERT INTO `periods` VALUES ('298', '60', '2019-02-14', 'bet20190214', '2019-02-14 22:52:30');
INSERT INTO `periods` VALUES ('299', '61', '2019-02-14', 'bet20190214', '2019-02-14 23:02:33');
INSERT INTO `periods` VALUES ('300', '62', '2019-02-14', 'bet20190214', '2019-02-14 23:12:37');
INSERT INTO `periods` VALUES ('301', '63', '2019-02-14', 'bet20190214', '2019-02-14 23:22:40');
INSERT INTO `periods` VALUES ('302', '64', '2019-02-14', 'bet20190214', '2019-02-14 23:32:43');
INSERT INTO `periods` VALUES ('303', '65', '2019-02-14', 'bet20190214', '2019-02-14 23:42:46');
INSERT INTO `periods` VALUES ('304', '66', '2019-02-14', 'bet20190214', '2019-02-14 23:52:49');
INSERT INTO `periods` VALUES ('305', '1', '2019-02-15', 'bet20190215', '2019-02-15 00:02:52');
INSERT INTO `periods` VALUES ('306', '2', '2019-02-15', 'bet20190215', '2019-02-15 10:11:30');
INSERT INTO `periods` VALUES ('307', '3', '2019-02-15', 'bet20190215', '2019-02-15 10:21:34');
INSERT INTO `periods` VALUES ('308', '4', '2019-02-15', 'bet20190215', '2019-02-15 10:31:38');
INSERT INTO `periods` VALUES ('309', '5', '2019-02-15', 'bet20190215', '2019-02-15 10:41:42');
INSERT INTO `periods` VALUES ('310', '6', '2019-02-15', 'bet20190215', '2019-02-15 10:51:46');
INSERT INTO `periods` VALUES ('311', '7', '2019-02-15', 'bet20190215', '2019-02-15 11:01:50');
INSERT INTO `periods` VALUES ('312', '8', '2019-02-15', 'bet20190215', '2019-02-15 11:11:54');
INSERT INTO `periods` VALUES ('313', '9', '2019-02-15', 'bet20190215', '2019-02-15 11:21:58');
INSERT INTO `periods` VALUES ('314', '10', '2019-02-15', 'bet20190215', '2019-02-15 11:32:02');
INSERT INTO `periods` VALUES ('315', '11', '2019-02-15', 'bet20190215', '2019-02-15 11:42:06');
INSERT INTO `periods` VALUES ('316', '12', '2019-02-15', 'bet20190215', '2019-02-15 11:52:10');
INSERT INTO `periods` VALUES ('317', '13', '2019-02-15', 'bet20190215', '2019-02-15 12:02:14');
INSERT INTO `periods` VALUES ('318', '14', '2019-02-15', 'bet20190215', '2019-02-15 12:12:18');
INSERT INTO `periods` VALUES ('319', '15', '2019-02-15', 'bet20190215', '2019-02-15 12:22:22');
INSERT INTO `periods` VALUES ('320', '16', '2019-02-15', 'bet20190215', '2019-02-15 12:32:26');
INSERT INTO `periods` VALUES ('321', '17', '2019-02-15', 'bet20190215', '2019-02-15 12:42:30');
INSERT INTO `periods` VALUES ('322', '18', '2019-02-15', 'bet20190215', '2019-02-15 12:52:34');
INSERT INTO `periods` VALUES ('323', '19', '2019-02-15', 'bet20190215', '2019-02-15 15:06:41');
INSERT INTO `periods` VALUES ('324', '20', '2019-02-15', 'bet20190215', '2019-02-15 15:16:44');
INSERT INTO `periods` VALUES ('325', '21', '2019-02-15', 'bet20190215', '2019-02-15 15:26:47');
INSERT INTO `periods` VALUES ('326', '22', '2019-02-15', 'bet20190215', '2019-02-15 15:36:48');
INSERT INTO `periods` VALUES ('327', '23', '2019-02-15', 'bet20190215', '2019-02-15 15:46:51');
INSERT INTO `periods` VALUES ('328', '24', '2019-02-15', 'bet20190215', '2019-02-15 15:56:52');
INSERT INTO `periods` VALUES ('329', '25', '2019-02-15', 'bet20190215', '2019-02-15 16:06:53');

-- ----------------------------
-- Table structure for `systemsetting`
-- ----------------------------
DROP TABLE IF EXISTS `systemsetting`;
CREATE TABLE `systemsetting` (
  `syskey` varchar(25) NOT NULL,
  `sysvalue` varchar(50) NOT NULL,
  PRIMARY KEY (`syskey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of systemsetting
-- ----------------------------
INSERT INTO `systemsetting` VALUES ('cricletime', '10');
INSERT INTO `systemsetting` VALUES ('customserviceqq', '2707759995');
INSERT INTO `systemsetting` VALUES ('levelintroduce', '这里是等级代理说明。。。。。。。。。。。。等级代理说明');
INSERT INTO `systemsetting` VALUES ('rechargeqq', '2707759995');
INSERT INTO `systemsetting` VALUES ('withdrawqq', '2707759995');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `password` char(32) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `level` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', 'admin', '1', '0');
INSERT INTO `users` VALUES ('3', 'admin11', 'admin11', '1', '0');
INSERT INTO `users` VALUES ('4', '123456789', '123456m', '1', '0');
INSERT INTO `users` VALUES ('5', 'm12345678', 'm68686688', '1', '0');
INSERT INTO `users` VALUES ('6', 'm666888', '123456m', '1', '0');
INSERT INTO `users` VALUES ('7', 'blank', 'blank', '1', '0');
INSERT INTO `users` VALUES ('8', '123123', '123123', '1', '0');
INSERT INTO `users` VALUES ('9', '12345678', '08522580', '1', '0');
INSERT INTO `users` VALUES ('10', 'aaaaaaa', '111111', '1', '0');
INSERT INTO `users` VALUES ('11', '123456', '123456', '1', '0');
INSERT INTO `users` VALUES ('12', 'TXF0920', '2274726207', '1', '0');

-- ----------------------------
-- Table structure for `wallet`
-- ----------------------------
DROP TABLE IF EXISTS `wallet`;
CREATE TABLE `wallet` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `coin` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wallet
-- ----------------------------
INSERT INTO `wallet` VALUES ('1', 'admin11', '13483');
INSERT INTO `wallet` VALUES ('2', 'admin', '2311812');
INSERT INTO `wallet` VALUES ('3', '123456789', '10000');
INSERT INTO `wallet` VALUES ('4', 'm12345678', '10000');
INSERT INTO `wallet` VALUES ('5', 'm666888', '0');
INSERT INTO `wallet` VALUES ('6', '123123', '0');
INSERT INTO `wallet` VALUES ('7', '12345678', '86211');
INSERT INTO `wallet` VALUES ('8', 'aaaaaaa', '690');
INSERT INTO `wallet` VALUES ('9', '123456', '0');
INSERT INTO `wallet` VALUES ('10', 'TXF0920', '0');
