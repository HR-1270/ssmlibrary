/*
Navicat MySQL Data Transfer

Source Server         : mysql1
Source Server Version : 50725
Source Host           : 127.0.0.1:3306
Source Database       : ssmlibrary

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2021-07-01 08:49:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2022 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('2011', 'admin', '123');
INSERT INTO `admin` VALUES ('2012', 'admin', '123');
INSERT INTO `admin` VALUES ('2021', '管理员', '123');

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `writer` varchar(25) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `pub` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bid`),
  UNIQUE KEY `book_name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('1', '狂人日记', '鲁迅', '文学类', '中国商业出版社');
INSERT INTO `book` VALUES ('2', '布鲁特斯的心脏', '东野圭吾', '文学类', '南海出版社');
INSERT INTO `book` VALUES ('3', '祈祷落幕时', '东野圭吾', '文学类', '南海出版社');
INSERT INTO `book` VALUES ('4', '放学后', '东野圭吾', '文学类', '南海出版社');
INSERT INTO `book` VALUES ('5', '挑战', '东野圭吾', '文学类', '上海文艺出版社');
INSERT INTO `book` VALUES ('6', '刘德华', '刘德华', '励志类', '清华大学出版社');
INSERT INTO `book` VALUES ('7', '罪与罚', '陀思妥耶夫斯基', '励志类', '清华出版社');
INSERT INTO `book` VALUES ('8', '老人与海', '海明威', '励志类', '南海出版社');
INSERT INTO `book` VALUES ('9', '嫌疑人x的献身', '东野圭吾', '悬疑类', '南海出版社');
INSERT INTO `book` VALUES ('10', '阅读的艺术', '聂震宁', '文学类', '作家出版社');
INSERT INTO `book` VALUES ('11', '单恋', '东野圭吾', '文学类', '南海出版社');
INSERT INTO `book` VALUES ('12', '人间有味是清欢', '林清玄', '文学类', '作家出版社');
INSERT INTO `book` VALUES ('13', '三国演义', '罗贯中', '历史类', '人民出版社');
INSERT INTO `book` VALUES ('14', '红楼梦', '小说类', '曹雪芹', '人民出版社');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `no` varchar(30) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `grade` varchar(30) DEFAULT NULL,
  `major` varchar(30) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sid`),
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '123', '星海', '男', '0814181', '计算机科学与技术', '12345678901', '123');
INSERT INTO `student` VALUES ('2', '081418103', '周同学', '男', '0814181', '计算机科学与技术', '15836919641', '919641');
INSERT INTO `student` VALUES ('3', '081418104', '周杰伦', '男', '0814181', '计算机科学与技术', '15836912341', '912341');
INSERT INTO `student` VALUES ('4', '081418105', '林俊杰', '男', '0814181', '计算机科学与技术', '15836919641', '919641');
INSERT INTO `student` VALUES ('5', '081418106', '王丽坤', '女', '0814181', '计算机科学与技术', '15836919641', '919641');
INSERT INTO `student` VALUES ('6', '1212121', '星海啊', '男', '0814181', '计算机科学与技术', '18552519270', '519270');
INSERT INTO `student` VALUES ('7', '081418135', '刘德华', '男', '0814181', '计算机科学与技术', '15836919641', '919641');
INSERT INTO `student` VALUES ('8', '194041203', '张三', '男', '1940412', '计算机科学与技术', '12345678901', '678901');
INSERT INTO `student` VALUES ('9', '194041204', '李四', '男', '1940412', '计算机科学与技术', '12345123456', '123456');
INSERT INTO `student` VALUES ('10', '194041205', '王五', '女', '1940412', '计算机科学与技术', '12345678901', '678901');
INSERT INTO `student` VALUES ('11', '194041206', '赵六', '女', '1940412', '软件技术', '12345678901', '678901');

-- ----------------------------
-- Table structure for stu_book
-- ----------------------------
DROP TABLE IF EXISTS `stu_book`;
CREATE TABLE `stu_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stuId` int(11) NOT NULL,
  `bookId` int(11) NOT NULL,
  `borrowTime` datetime DEFAULT NULL,
  `deadTime` datetime DEFAULT NULL,
  `returnTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `stuid` (`stuId`),
  KEY `bookid` (`bookId`),
  CONSTRAINT `bookid` FOREIGN KEY (`bookId`) REFERENCES `book` (`bid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sid` FOREIGN KEY (`stuId`) REFERENCES `student` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stu_book
-- ----------------------------
INSERT INTO `stu_book` VALUES ('1', '9', '11', '2021-04-28 09:31:02', '2021-05-28 09:31:02', '2021-06-28 10:56:07');
INSERT INTO `stu_book` VALUES ('2', '1', '4', '2021-06-28 09:32:20', '2021-07-28 09:32:20', null);
