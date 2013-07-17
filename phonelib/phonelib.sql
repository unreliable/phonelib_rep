/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : phonelib

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2013-07-16 21:52:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `book`
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `isbn13` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('1', '0', '9787111187776', 'title1');
INSERT INTO `book` VALUES ('2', '0', '9787111187776', 'title2');
INSERT INTO `book` VALUES ('3', '0', '9787111187776', 'title3');
INSERT INTO `book` VALUES ('4', '0', '9787111187776', 'title4');
INSERT INTO `book` VALUES ('5', '0', '9787111187776', 'title5');
INSERT INTO `book` VALUES ('6', '0', '9787111187776', 'title6');
INSERT INTO `book` VALUES ('7', '0', '9787111187776', 'title7');
INSERT INTO `book` VALUES ('8', '0', '9787111187776', 'title8');
INSERT INTO `book` VALUES ('9', '0', '9787111187776', 'title9');
INSERT INTO `book` VALUES ('10', '0', '9787111187776', 'title10');
INSERT INTO `book` VALUES ('11', '0', '9787111187776', 'title11');
INSERT INTO `book` VALUES ('12', '0', '9787111187776', 'title12');
INSERT INTO `book` VALUES ('13', '0', '9787111187776', 'title13');
INSERT INTO `book` VALUES ('14', '0', '9787111187776', 'title14');
INSERT INTO `book` VALUES ('15', '0', '9787111187776', 'title15');

-- ----------------------------
-- Table structure for `borrow`
-- ----------------------------
DROP TABLE IF EXISTS `borrow`;
CREATE TABLE `borrow` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `book_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKAD8CA9F5B260E271` (`book_id`),
  KEY `FKAD8CA9F5A5C99F31` (`user_id`),
  CONSTRAINT `FKAD8CA9F5A5C99F31` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKAD8CA9F5B260E271` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of borrow
-- ----------------------------
INSERT INTO `borrow` VALUES ('1', '0', '1', '2013-07-16 21:51:17', '2');

-- ----------------------------
-- Table structure for `own`
-- ----------------------------
DROP TABLE IF EXISTS `own`;
CREATE TABLE `own` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `book_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1AF86B260E271` (`book_id`),
  KEY `FK1AF86A5C99F31` (`user_id`),
  CONSTRAINT `FK1AF86A5C99F31` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK1AF86B260E271` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of own
-- ----------------------------
INSERT INTO `own` VALUES ('1', '0', '2', '2013-07-16 21:51:32', '1');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '0', 'knight1', '123456');
INSERT INTO `user` VALUES ('2', '0', 'knight2', '123456');
INSERT INTO `user` VALUES ('3', '0', 'knight3', '123456');
INSERT INTO `user` VALUES ('4', '0', 'knight4', '123456');
INSERT INTO `user` VALUES ('5', '0', 'knight5', '123456');
INSERT INTO `user` VALUES ('6', '0', 'knight6', '123456');
INSERT INTO `user` VALUES ('7', '0', 'knight7', '123456');
INSERT INTO `user` VALUES ('8', '0', 'knight8', '123456');
INSERT INTO `user` VALUES ('9', '0', 'knight9', '123456');
INSERT INTO `user` VALUES ('10', '0', 'knight10', '123456');
INSERT INTO `user` VALUES ('11', '0', 'knight11', '123456');
INSERT INTO `user` VALUES ('12', '0', 'knight12', '123456');
INSERT INTO `user` VALUES ('13', '0', 'knight13', '123456');
INSERT INTO `user` VALUES ('14', '0', 'knight14', '123456');
INSERT INTO `user` VALUES ('15', '0', 'knight15', '123456');
