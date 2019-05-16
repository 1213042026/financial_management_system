/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : cwgl

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-04-22 21:35:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `userId` int(11) NOT NULL,
  `userName` varchar(50) DEFAULT NULL,
  `userPw` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'admin', '123456');

-- ----------------------------
-- Table structure for t_bumen
-- ----------------------------
DROP TABLE IF EXISTS `t_bumen`;
CREATE TABLE `t_bumen` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `mingcheng` varchar(50) DEFAULT NULL,
  `renshu` varchar(50) DEFAULT NULL,
  `xishu` varchar(50) DEFAULT NULL,
  `del` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_bumen
-- ----------------------------
INSERT INTO `t_bumen` VALUES ('1', '采购部', '2', '1.2', 'no');
INSERT INTO `t_bumen` VALUES ('2', '技术部', '0', '2.3', 'no');
INSERT INTO `t_bumen` VALUES ('4', '行政部', '0', '1.5', 'no');

-- ----------------------------
-- Table structure for t_catelog
-- ----------------------------
DROP TABLE IF EXISTS `t_catelog`;
CREATE TABLE `t_catelog` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `del` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_catelog
-- ----------------------------
INSERT INTO `t_catelog` VALUES ('3', '融资收入', 'no');
INSERT INTO `t_catelog` VALUES ('4', '贷款', 'no');
INSERT INTO `t_catelog` VALUES ('11', '投资', 'no');

-- ----------------------------
-- Table structure for t_feiyong
-- ----------------------------
DROP TABLE IF EXISTS `t_feiyong`;
CREATE TABLE `t_feiyong` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `mingcheng` varchar(50) DEFAULT NULL,
  `shijian` varchar(50) DEFAULT NULL,
  `feiyong` decimal(8,2) DEFAULT NULL,
  `leixing` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_feiyong
-- ----------------------------
INSERT INTO `t_feiyong` VALUES ('1', '货款', '2019-04-01', '50000.00', '0');
INSERT INTO `t_feiyong` VALUES ('2', '租场地', '2019-02-04', '2500.00', '1');
INSERT INTO `t_feiyong` VALUES ('3', '出租场地', '2019-03-05', '2000.00', '0');
INSERT INTO `t_feiyong` VALUES ('5', '采购电脑', '2019-01-13', '6000.00', '2');

-- ----------------------------
-- Table structure for t_gongzi
-- ----------------------------
DROP TABLE IF EXISTS `t_gongzi`;
CREATE TABLE `t_gongzi` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `zhigong_id` int(4) DEFAULT NULL,
  `jiben` decimal(8,2) DEFAULT NULL,
  `gongling` decimal(8,2) DEFAULT NULL,
  `zhiwu` decimal(8,2) DEFAULT NULL,
  `butie` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_gongzi
-- ----------------------------
INSERT INTO `t_gongzi` VALUES ('1', '1', '2000.00', '3.00', '150.00', '220.00');
INSERT INTO `t_gongzi` VALUES ('3', '2', '5000.00', '6.00', '500.00', '300.00');


-- ----------------------------
-- Table structure for t_zhigong
-- ----------------------------
DROP TABLE IF EXISTS `t_zhigong`;
CREATE TABLE `t_zhigong` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `bumen_id` int(4) DEFAULT NULL,
  `bianhao` varchar(50) DEFAULT NULL,
  `loginpw` varchar(50) DEFAULT NULL,
  `xingming` varchar(50) DEFAULT NULL,
  `xingbie` varchar(50) DEFAULT NULL,
  `ruzhi` varchar(50) DEFAULT NULL,
  `del` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_zhigong
-- ----------------------------
INSERT INTO `t_zhigong` VALUES ('1', '1', '201901', '123456', '赵明', '男', '2018-04-01', 'no');
INSERT INTO `t_zhigong` VALUES ('2', '1', '201902', '123456', '刘红', '女', '2013-04-01', 'no');

-- ----------------------------
-- Table structure for t_zichan
-- ----------------------------
DROP TABLE IF EXISTS `t_zichan`;
CREATE TABLE `t_zichan` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `catelog_id` int(4) DEFAULT NULL,
  `bianhao` varchar(50) DEFAULT NULL,
  `mingcheng` varchar(50) DEFAULT NULL,
  `shijian` varchar(50) DEFAULT NULL,
  `jiazhi` varchar(50) DEFAULT NULL,
  `type` int(4) DEFAULT NULL,
  `fangshi` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_zichan
-- ----------------------------
INSERT INTO `t_zichan` VALUES ('3', '4', '0001', '融资收入', '2018-05-05', '200', '0', '2');
INSERT INTO `t_zichan` VALUES ('5', '3', '0002', '出租', '2019-03-04', '2', '-1', '-1');
