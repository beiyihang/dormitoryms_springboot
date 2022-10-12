/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80020
Source Host           : localhost:3306
Source Database       : dormitory

Target Server Type    : MYSQL
Target Server Version : 80020
File Encoding         : 65001

Date: 2022-10-12 17:31:06
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `absent`
-- ----------------------------
DROP TABLE IF EXISTS `absent`;
CREATE TABLE `absent` (
  `id` int NOT NULL AUTO_INCREMENT,
  `building_id` int DEFAULT NULL,
  `dormitory_id` int DEFAULT NULL,
  `student_id` int DEFAULT NULL,
  `dormitory_admin_id` int DEFAULT NULL,
  `create_date` varchar(20) DEFAULT NULL,
  `reason` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of absent
-- ----------------------------
INSERT INTO absent VALUES ('13', '1', '2', '5', '16', '2022-04-16', '请假');
INSERT INTO absent VALUES ('14', '1', '1', '1', '1', '2022-04-26', '请假');
INSERT INTO absent VALUES ('15', '2', '5', '63', '1', '2022-04-26', '请假');
INSERT INTO absent VALUES ('16', '1', '1', '1', '1', '2022-09-15', '请假');

-- ----------------------------
-- Table structure for `building`
-- ----------------------------
DROP TABLE IF EXISTS `building`;
CREATE TABLE `building` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `introduction` varchar(1000) DEFAULT NULL,
  `admin_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of building
-- ----------------------------
INSERT INTO building VALUES ('1', '1号楼', '计算机学院宿舍楼', '16');
INSERT INTO building VALUES ('2', '2号楼', '计算机学院宿舍楼', '16');
INSERT INTO building VALUES ('16', '5号楼', '电信学院宿舍楼', '16');

-- ----------------------------
-- Table structure for `dormitory`
-- ----------------------------
DROP TABLE IF EXISTS `dormitory`;
CREATE TABLE `dormitory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `building_id` int DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `type` int DEFAULT NULL,
  `available` int DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dormitory
-- ----------------------------
INSERT INTO dormitory VALUES ('1', '1', '101', '4', '0', '88230001');
INSERT INTO dormitory VALUES ('2', '1', '102', '4', '0', '88230002');
INSERT INTO dormitory VALUES ('3', '1', '211', '4', '0', '88230007');
INSERT INTO dormitory VALUES ('4', '2', '212', '6', '0', '88230008');
INSERT INTO dormitory VALUES ('5', '2', '321', '8', '6', '88230013');
INSERT INTO dormitory VALUES ('6', '2', '322', '10', '10', '88230016');
INSERT INTO dormitory VALUES ('36', '1', '666', '6', '6', '88136666');

-- ----------------------------
-- Table structure for `dormitory_admin`
-- ----------------------------
DROP TABLE IF EXISTS `dormitory_admin`;
CREATE TABLE `dormitory_admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dormitory_admin
-- ----------------------------
INSERT INTO dormitory_admin VALUES ('1', 'll', '123123', '宋玉', '女', '13312345678');
INSERT INTO dormitory_admin VALUES ('2', 'ww', '123123', '王力', '男', '13612345678');
INSERT INTO dormitory_admin VALUES ('16', 'zz', '123123', '张三', '女', '13312345678');

-- ----------------------------
-- Table structure for `moveout`
-- ----------------------------
DROP TABLE IF EXISTS `moveout`;
CREATE TABLE `moveout` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` varchar(11) DEFAULT NULL,
  `dormitory_id` varchar(50) DEFAULT NULL,
  `reason` varchar(11) DEFAULT NULL,
  `create_date` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of moveout
-- ----------------------------
INSERT INTO moveout VALUES ('15', '63', '6', '毕业', '2022-04-17');
INSERT INTO moveout VALUES ('17', '18', '4', '毕业', '2022-04-27');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int NOT NULL AUTO_INCREMENT,
  `number` varchar(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `dormitory_id` int DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `create_date` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO student VALUES ('1', '001', '王伟', '男', '1', '入住', '2022-04-14');
INSERT INTO student VALUES ('2', '002', '曹海', '男', '1', '入住', '2022-04-14');
INSERT INTO student VALUES ('3', '003', '李力', '男', '1', '入住', '2022-04-14');
INSERT INTO student VALUES ('4', '004', '赵昭', '男', '1', '入住', '2022-04-14');
INSERT INTO student VALUES ('5', '005', '王维利', '男', '2', '入住', '2022-04-14');
INSERT INTO student VALUES ('6', '006', '李双', '女', '2', '入住', '2022-04-14');
INSERT INTO student VALUES ('7', '007', '李小峰', '男', '2', '入住', '2022-04-14');
INSERT INTO student VALUES ('8', '008', '孙奇', '男', '2', '入住', '2022-04-14');
INSERT INTO student VALUES ('9', '009', '李立', '女', '3', '入住', '2022-04-14');
INSERT INTO student VALUES ('10', '010', '周华发', '男', '3', '入住', '2022-04-14');
INSERT INTO student VALUES ('11', '011', '赵正义', '男', '3', '入住', '2022-04-14');
INSERT INTO student VALUES ('12', '012', '李明', '男', '3', '入住', '2022-04-14');
INSERT INTO student VALUES ('13', '013', '许鹏飞', '男', '4', '入住', '2022-04-14');
INSERT INTO student VALUES ('14', '014', '朱海', '男', '4', '入住', '2022-04-14');
INSERT INTO student VALUES ('15', '015', '苏苏苏', '男', '4', '入住', '2022-04-14');
INSERT INTO student VALUES ('16', '016', '李雪', '女', '4', '入住', '2022-04-14');
INSERT INTO student VALUES ('17', '017', '李爽', '女', '4', '入住', '2022-04-14');
INSERT INTO student VALUES ('18', '018', '王纯', '女', '4', '迁出', '2022-04-14');
INSERT INTO student VALUES ('63', '019', '小明', '男', '5', '迁出', '2022-04-17');
INSERT INTO student VALUES ('67', '192230111', 'wd', '男', '4', '入住', '2022-09-16');

-- ----------------------------
-- Table structure for `system_admin`
-- ----------------------------
DROP TABLE IF EXISTS `system_admin`;
CREATE TABLE `system_admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_admin
-- ----------------------------
INSERT INTO system_admin VALUES ('1', 'admin1', '123123', '管理员1', '88132001');
INSERT INTO system_admin VALUES ('2', 'admin2', '123123', '管理员2', '88132002');
