/*
Navicat MySQL Data Transfer

Source Server         : YLS
Source Server Version : 50550
Source Host           : localhost:3306
Source Database       : ostp

Target Server Type    : MYSQL
Target Server Version : 50550
File Encoding         : 65001

Date: 2016-08-16 21:41:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for basicequiptype
-- ----------------------------
DROP TABLE IF EXISTS `basicequiptype`;
CREATE TABLE `basicequiptype` (
  `EquipTypeID` char(32) NOT NULL COMMENT '装备功能分类编号',
  `EquipTypeName` varchar(20) NOT NULL COMMENT '装备功能分类名称',
  `Note` varchar(20) NOT NULL COMMENT '备注',
  PRIMARY KEY (`EquipTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='基础数据管理：装备功能类型';

-- ----------------------------
-- Records of basicequiptype
-- ----------------------------

-- ----------------------------
-- Table structure for basicinfo
-- ----------------------------
DROP TABLE IF EXISTS `basicinfo`;
CREATE TABLE `basicinfo` (
  `Info ID` char(32) NOT NULL COMMENT '资讯标识',
  `Author` varchar(20) NOT NULL COMMENT '作者',
  `Title` varchar(20) NOT NULL COMMENT '资讯标题',
  `FirstLevelInfoTypeID` char(32) NOT NULL COMMENT '资讯一级类型标识',
  `SecondLevelInfoTypeID` char(32) NOT NULL COMMENT '资讯二级类型标识',
  `SportTypeID` char(32) NOT NULL COMMENT '运动类型',
  `CopyFrom` varchar(50) DEFAULT NULL COMMENT '文章来源',
  `KeyWords` varchar(50) NOT NULL COMMENT '关键字',
  `Content` varchar(5000) NOT NULL COMMENT '文本内容',
  `ImgUrl` varchar(255) DEFAULT NULL COMMENT '列表图片',
  `CreateTime` datetime DEFAULT NULL COMMENT '创建时间',
  `Enabled` char(1) DEFAULT NULL COMMENT '逻辑删除标志',
  PRIMARY KEY (`Info ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资讯：资讯';

-- ----------------------------
-- Records of basicinfo
-- ----------------------------

-- ----------------------------
-- Table structure for basicphotostyle
-- ----------------------------
DROP TABLE IF EXISTS `basicphotostyle`;
CREATE TABLE `basicphotostyle` (
  `PhotoStyleID` char(32) NOT NULL COMMENT '图像风格类型编号',
  `PhotoStyleName` varchar(20) NOT NULL COMMENT '图像风格类型名称',
  `Note` varchar(20) NOT NULL COMMENT '备注',
  `Enabled` char(1) DEFAULT NULL COMMENT '逻辑删除标志',
  PRIMARY KEY (`PhotoStyleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='基础数据管理：图像风格类型';

-- ----------------------------
-- Records of basicphotostyle
-- ----------------------------

-- ----------------------------
-- Table structure for basicsport
-- ----------------------------
DROP TABLE IF EXISTS `basicsport`;
CREATE TABLE `basicsport` (
  `SportID` char(32) NOT NULL COMMENT '户外运动编号',
  `SportTypeID` char(32) NOT NULL COMMENT '户外运动类型分类编号',
  `SportName` varchar(20) NOT NULL DEFAULT '' COMMENT '户外运动名称',
  `SportKeywords` varchar(50) NOT NULL DEFAULT '' COMMENT '户外运动搜索用关键词',
  `SportNote` varchar(100) DEFAULT '' COMMENT '备注',
  `Enabled` char(1) DEFAULT NULL COMMENT '逻辑删除标志',
  PRIMARY KEY (`SportID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='基础数据管理：户外运动';

-- ----------------------------
-- Records of basicsport
-- ----------------------------

-- ----------------------------
-- Table structure for basicsprottype
-- ----------------------------
DROP TABLE IF EXISTS `basicsprottype`;
CREATE TABLE `basicsprottype` (
  `SportTypeID` char(32) NOT NULL COMMENT '户外运动类型分类编号',
  `SportTypeName` varchar(20) NOT NULL DEFAULT '' COMMENT '户外运动类型分类名称',
  `Note` varchar(20) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`SportTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='基础数据管理：户外运动类型';

-- ----------------------------
-- Records of basicsprottype
-- ----------------------------

-- ----------------------------
-- Table structure for communityanswerinfo
-- ----------------------------
DROP TABLE IF EXISTS `communityanswerinfo`;
CREATE TABLE `communityanswerinfo` (
  `AnsID` int(20) NOT NULL COMMENT '答案的唯一标识',
  `AnsAuthor` varchar(20) NOT NULL COMMENT '答案的作者',
  `AnsTime` datetime NOT NULL COMMENT '答案发布的时间',
  `AnsAttention` varchar(10) NOT NULL COMMENT '答案的关注数',
  `QuestionID` varchar(20) NOT NULL COMMENT '问题的id',
  `Enabled` char(1) DEFAULT NULL COMMENT '逻辑删除标志',
  PRIMARY KEY (`AnsID`),
  UNIQUE KEY `AnsID_UNIQUE` (`AnsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='社区：回答表';

-- ----------------------------
-- Records of communityanswerinfo
-- ----------------------------

-- ----------------------------
-- Table structure for communityquestioninfo
-- ----------------------------
DROP TABLE IF EXISTS `communityquestioninfo`;
CREATE TABLE `communityquestioninfo` (
  `QuestionID` int(6) NOT NULL COMMENT '问题唯一标识',
  `QuestionTitle` varchar(20) NOT NULL COMMENT '问题的标题',
  `QuestionContent` varchar(20) NOT NULL COMMENT '问题内容',
  `QuestionAuthor` varchar(20) NOT NULL COMMENT '问题的发布者',
  `QuestionAttention` varchar(10) NOT NULL COMMENT '问题的关注度',
  `QuestionTime` datetime NOT NULL COMMENT '问题的发布时间',
  `Enabled` char(1) DEFAULT NULL COMMENT '逻辑删除标志',
  PRIMARY KEY (`QuestionID`),
  UNIQUE KEY `QuestionID_UNIQUE` (`QuestionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='社区：问题表';

-- ----------------------------
-- Records of communityquestioninfo
-- ----------------------------

-- ----------------------------
-- Table structure for courseinfo
-- ----------------------------
DROP TABLE IF EXISTS `courseinfo`;
CREATE TABLE `courseinfo` (
  `CourseID` char(32) NOT NULL COMMENT '文化类别的id',
  `CourseTitle` varchar(20) NOT NULL COMMENT '文化类的教程标题',
  `CourseAuthor` varchar(20) DEFAULT NULL COMMENT '文化类文章的作者',
  `UpdateTime` datetime DEFAULT NULL COMMENT '教程上传时间',
  `Content` varchar(5000) NOT NULL COMMENT '教程的文本内容',
  `CourseTypeID` char(32) NOT NULL COMMENT '教程分类编号',
  `SportTypeID` char(32) NOT NULL COMMENT '户外运动类型编号',
  `ClickTimes` char(32) DEFAULT NULL COMMENT '本教程的点击量',
  `Keywords` varchar(100) NOT NULL COMMENT '关键字',
  `Enabled` char(1) DEFAULT NULL COMMENT '逻辑删除标志',
  PRIMARY KEY (`CourseID`),
  UNIQUE KEY `CourseID_UNIQUE` (`CourseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='教程：教程信息';

-- ----------------------------
-- Records of courseinfo
-- ----------------------------

-- ----------------------------
-- Table structure for coursetype
-- ----------------------------
DROP TABLE IF EXISTS `coursetype`;
CREATE TABLE `coursetype` (
  `CourseTypeID` char(32) NOT NULL COMMENT '教程类型编号',
  `CourseTypeName` varchar(20) NOT NULL COMMENT '运动详细类别的名称',
  `Note` int(5) NOT NULL COMMENT '运动所属的大分类id',
  PRIMARY KEY (`CourseTypeID`),
  UNIQUE KEY `CourseTypeID_UNIQUE` (`CourseTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='教程：教程分类信息';

-- ----------------------------
-- Records of coursetype
-- ----------------------------

-- ----------------------------
-- Table structure for equip
-- ----------------------------
DROP TABLE IF EXISTS `equip`;
CREATE TABLE `equip` (
  `EquipID` char(32) NOT NULL COMMENT '装备唯一标识',
  `EquipName` varchar(20) NOT NULL COMMENT '装备名字',
  `EquipPrice` varchar(20) NOT NULL COMMENT '装备价格',
  `EquipParam` varchar(20) NOT NULL COMMENT '装备参数',
  `EquipRecommend` tinyint(1) DEFAULT NULL COMMENT '推荐',
  `SportTypeID` char(32) DEFAULT NULL COMMENT '运动类型',
  `EquipTypeID` char(32) DEFAULT NULL COMMENT '装备功能类型',
  `Note` varchar(200) DEFAULT NULL COMMENT '备注',
  `Enabled` char(1) DEFAULT NULL COMMENT '逻辑删除标志',
  PRIMARY KEY (`EquipID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='装备：装备';

-- ----------------------------
-- Records of equip
-- ----------------------------

-- ----------------------------
-- Table structure for equipevaluate
-- ----------------------------
DROP TABLE IF EXISTS `equipevaluate`;
CREATE TABLE `equipevaluate` (
  `EvaluteID` char(32) NOT NULL COMMENT '评测唯一标识',
  `Title` varchar(20) NOT NULL COMMENT '测评标题',
  `Author` varchar(20) NOT NULL COMMENT '作者',
  `PublishTime` varchar(20) NOT NULL COMMENT '发布时间',
  `Origin` varchar(20) NOT NULL COMMENT '来源',
  `EquipID` char(32) NOT NULL COMMENT '关联装备编号',
  `Content` varchar(5000) DEFAULT NULL COMMENT '内容',
  `Enabled` char(1) DEFAULT NULL COMMENT '逻辑删除标志',
  PRIMARY KEY (`EvaluteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='装备：测评';

-- ----------------------------
-- Records of equipevaluate
-- ----------------------------

-- ----------------------------
-- Table structure for infofirstleveltype
-- ----------------------------
DROP TABLE IF EXISTS `infofirstleveltype`;
CREATE TABLE `infofirstleveltype` (
  `FirstLevelInfoTypeID` char(32) NOT NULL COMMENT '资讯一级类型标识',
  `FirstLevelInfoTypeName` varchar(20) NOT NULL COMMENT '咨讯一级分类名称',
  `Note` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`FirstLevelInfoTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资讯：资讯一级类型';

-- ----------------------------
-- Records of infofirstleveltype
-- ----------------------------

-- ----------------------------
-- Table structure for infosecondleveltype
-- ----------------------------
DROP TABLE IF EXISTS `infosecondleveltype`;
CREATE TABLE `infosecondleveltype` (
  `SecondLevelInfoTypeID` char(32) NOT NULL COMMENT '资讯二级类型标识',
  `SecondLevelInfoTypeName` varchar(20) NOT NULL COMMENT '咨讯二级分类名称',
  `FirstLevelInfoTypeID` char(32) NOT NULL COMMENT '关联一级资讯',
  `Note` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`SecondLevelInfoTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资讯：资讯二级类型';

-- ----------------------------
-- Records of infosecondleveltype
-- ----------------------------

-- ----------------------------
-- Table structure for photophotography
-- ----------------------------
DROP TABLE IF EXISTS `photophotography`;
CREATE TABLE `photophotography` (
  `PictureID` char(32) NOT NULL COMMENT '照片唯一标识',
  `Title` varchar(20) NOT NULL COMMENT '照片标题',
  `Author` varchar(20) NOT NULL COMMENT '作者',
  `PublishTime` varchar(20) NOT NULL COMMENT '发布时间',
  `Origin` varchar(20) DEFAULT NULL COMMENT '来源',
  `SportTypeID` char(32) DEFAULT NULL COMMENT '运动类型编号',
  `StyleTypeID` char(32) DEFAULT NULL COMMENT '风格类型编号',
  `LevelType` char(2) DEFAULT NULL COMMENT '等级（1是精品、0是普通）',
  `PhotoParam` varchar(2000) DEFAULT NULL COMMENT '照片参数',
  `Introduction` varchar(300) DEFAULT NULL COMMENT '照片感言',
  `CurrentLikeTimes` char(32) DEFAULT NULL COMMENT '当日点赞数',
  `TotalLikeTimes` char(32) DEFAULT NULL COMMENT '总点赞数',
  `Enabled` char(1) DEFAULT NULL COMMENT '逻辑删除标志',
  PRIMARY KEY (`PictureID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='摄影：摄影';

-- ----------------------------
-- Records of photophotography
-- ----------------------------

-- ----------------------------
-- Table structure for positiondetailinfo
-- ----------------------------
DROP TABLE IF EXISTS `positiondetailinfo`;
CREATE TABLE `positiondetailinfo` (
  `PositionID` char(32) NOT NULL COMMENT '位置ID',
  `PositionTypeID` char(32) NOT NULL COMMENT '位置类型',
  `SportTypeID` char(32) NOT NULL COMMENT '运动类型（攀岩，潜水）',
  `PositionName` varchar(20) NOT NULL COMMENT '具体位置名称',
  `PositionCoordinate` varchar(50) NOT NULL COMMENT '位置坐标',
  `PositionPicture` varchar(50) DEFAULT NULL COMMENT '位置图片',
  `PositionDescribe` varchar(5000) DEFAULT NULL COMMENT '位置详细介绍',
  `PositionTime` varchar(20) NOT NULL COMMENT '位置适宜去的时间',
  `Enabled` char(1) DEFAULT NULL COMMENT '逻辑删除标志',
  PRIMARY KEY (`PositionID`),
  UNIQUE KEY `PositionID_UNIQUE` (`PositionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='位置：位置详细信息';

-- ----------------------------
-- Records of positiondetailinfo
-- ----------------------------

-- ----------------------------
-- Table structure for positiontypeinfo
-- ----------------------------
DROP TABLE IF EXISTS `positiontypeinfo`;
CREATE TABLE `positiontypeinfo` (
  `PositionTypeID` char(32) NOT NULL COMMENT '位置分类编号',
  `PositionTypeName` varchar(20) NOT NULL COMMENT '位置类型名称（住宿、餐饮、火车站、机场等）',
  `Note` varchar(20) NOT NULL COMMENT '备注',
  PRIMARY KEY (`PositionTypeID`),
  UNIQUE KEY `PositionTypeID_UNIQUE` (`PositionTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='位置：位置类型详细信息';

-- ----------------------------
-- Records of positiontypeinfo
-- ----------------------------

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` char(5) NOT NULL COMMENT '角色id',
  `authority` varchar(20) NOT NULL COMMENT '角色权限',
  `name` varchar(20) NOT NULL COMMENT '角色名称',
  `code` varchar(20) NOT NULL COMMENT '角色代码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'ROLE_ADMIN', 'admin', '');

-- ----------------------------
-- Table structure for triptravelinfo
-- ----------------------------
DROP TABLE IF EXISTS `triptravelinfo`;
CREATE TABLE `triptravelinfo` (
  `TravelID` char(32) NOT NULL COMMENT '行程编号',
  `TravelName` varchar(100) NOT NULL COMMENT '行程名称',
  `SportTypeID` char(32) NOT NULL COMMENT '运动分类编号',
  `Attention` varchar(2000) DEFAULT NULL COMMENT '注意事项',
  `Guide` varchar(5000) NOT NULL COMMENT '攻略',
  `Enabled` char(1) DEFAULT NULL COMMENT '逻辑删除标志',
  PRIMARY KEY (`TravelID`),
  UNIQUE KEY `TravelID_UNIQUE` (`TravelID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='行程：行程信息';

-- ----------------------------
-- Records of triptravelinfo
-- ----------------------------

-- ----------------------------
-- Table structure for triptravelpath
-- ----------------------------
DROP TABLE IF EXISTS `triptravelpath`;
CREATE TABLE `triptravelpath` (
  `TravelID` char(32) NOT NULL COMMENT '交通路线编号',
  `PositionID` varchar(100) NOT NULL COMMENT '行程编号',
  `Enabled` char(1) DEFAULT NULL COMMENT '逻辑删除标志',
  PRIMARY KEY (`TravelID`),
  UNIQUE KEY `TravelID_UNIQUE` (`TravelID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='行程：交通和线路';

-- ----------------------------
-- Records of triptravelpath
-- ----------------------------

-- ----------------------------
-- Table structure for t_c3p0
-- ----------------------------
DROP TABLE IF EXISTS `t_c3p0`;
CREATE TABLE `t_c3p0` (
  `a` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_c3p0
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `UserID` varchar(32) NOT NULL COMMENT '用户唯一标识',
  `UserName` varchar(20) NOT NULL COMMENT '用户昵称',
  `UserSex` varchar(2) NOT NULL COMMENT '用户性别',
  `UserEmail` varchar(50) NOT NULL COMMENT '用户邮箱',
  `UserPhone` varchar(20) NOT NULL COMMENT '用户手机',
  `UserAuthority` varchar(2) NOT NULL COMMENT '用户权限',
  `UserDesc` varchar(300) NOT NULL COMMENT '用户介绍',
  `UserPsw` varchar(43) NOT NULL COMMENT '用户密码',
  `UserHobby` varchar(20) DEFAULT NULL COMMENT '兴趣爱好',
  `UserJob` varchar(20) DEFAULT NULL COMMENT '职业',
  `UserEdu` varchar(20) DEFAULT NULL COMMENT '教育程度',
  `UserTag` varchar(20) DEFAULT NULL COMMENT '个人标签',
  `Enabled` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '逻辑删除标志',
  PRIMARY KEY (`UserID`),
  UNIQUE KEY `UserID_UNIQUE` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='社区：用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '', '', '', '', '', 'ee54d58513a28ad9cec284e1165309fae058b7ea', null, null, null, null, '1');

-- ----------------------------
-- Table structure for userrole
-- ----------------------------
DROP TABLE IF EXISTS `userrole`;
CREATE TABLE `userrole` (
  `RoleID` varchar(32) NOT NULL COMMENT '角色ID',
  `UserID` varchar(32) NOT NULL COMMENT '用户ID',
  PRIMARY KEY (`RoleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户---角色';

-- ----------------------------
-- Records of userrole
-- ----------------------------
INSERT INTO `userrole` VALUES ('1', '1');
