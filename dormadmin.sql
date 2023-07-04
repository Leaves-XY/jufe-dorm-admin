-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 47.115.223.124    Database: dormadmin
-- ------------------------------------------------------
-- Server version	5.7.40-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `absence`
--

DROP TABLE IF EXISTS `absence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `absence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_id` int(11) DEFAULT NULL COMMENT '缺勤学生',
  `ad_id` int(11) DEFAULT NULL COMMENT '宿管id',
  `create_at` varchar(30) DEFAULT NULL COMMENT '登记时间',
  `reason` varchar(255) DEFAULT NULL COMMENT '缺勤原因',
  PRIMARY KEY (`id`),
  KEY `absence_student_null_fk` (`stu_id`),
  KEY `absence_user_null_fk` (`ad_id`),
  CONSTRAINT `absence_student_null_fk` FOREIGN KEY (`stu_id`) REFERENCES `student` (`id`),
  CONSTRAINT `absence_user_null_fk` FOREIGN KEY (`ad_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `absence`
--

LOCK TABLES `absence` WRITE;
/*!40000 ALTER TABLE `absence` DISABLE KEYS */;
/*!40000 ALTER TABLE `absence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `building`
--

DROP TABLE IF EXISTS `building`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `building` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '名字',
  `building_type` tinyint(3) unsigned NOT NULL COMMENT '宿舍楼类型：1男生宿舍楼 ，0女生宿舍楼',
  `remark` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '备注',
  `create_at` varchar(30) DEFAULT NULL,
  `update_at` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=279 DEFAULT CHARSET=utf8mb4 COMMENT='宿舍楼';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `building`
--

LOCK TABLES `building` WRITE;
/*!40000 ALTER TABLE `building` DISABLE KEYS */;
INSERT INTO `building` VALUES (275,'宁庐',1,'软件、外国语、体育',NULL,'2023-07-03'),(276,'和庐',0,'','2023-07-02','2023-07-02'),(277,'祥庐',1,'','2023-07-02','2023-07-02');
/*!40000 ALTER TABLE `building` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `depart`
--

DROP TABLE IF EXISTS `depart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `depart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '学院名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COMMENT='学院';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `depart`
--

LOCK TABLES `depart` WRITE;
/*!40000 ALTER TABLE `depart` DISABLE KEYS */;
INSERT INTO `depart` VALUES (1,'软件与物联网工程学院'),(2,'金融学院'),(3,'旅游与城市管理学院'),(4,'法学院'),(5,'体育学院'),(6,'会计学院'),(7,'艺术学院');
/*!40000 ALTER TABLE `depart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dorm`
--

DROP TABLE IF EXISTS `dorm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dorm` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '宿舍名',
  `building_id` int(11) DEFAULT NULL COMMENT '宿舍楼id',
  `max_num` int(11) DEFAULT '4' COMMENT '最大人数',
  `remark` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '备注',
  `create_at` varchar(30) DEFAULT NULL,
  `update_at` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dorm_ibfk_1` (`building_id`) USING BTREE,
  CONSTRAINT `dorm_ibfk_1` FOREIGN KEY (`building_id`) REFERENCES `building` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=279 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dorm`
--

LOCK TABLES `dorm` WRITE;
/*!40000 ALTER TABLE `dorm` DISABLE KEYS */;
INSERT INTO `dorm` VALUES (267,'NB343',275,4,'超能陆战队',NULL,'2023-07-01'),(268,'HB666',276,4,'','2023-07-02','2023-07-02'),(269,'NB340',275,4,'','2023-07-03','2023-07-03'),(271,'NB339',275,4,'红心传薪火','2023-07-03','2023-07-03'),(275,'HA123',276,4,'','2023-07-03','2023-07-03'),(276,'HA239',276,4,'','2023-07-03','2023-07-03'),(277,'XA195',277,4,'','2023-07-03','2023-07-03');
/*!40000 ALTER TABLE `dorm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_id` int(11) DEFAULT NULL COMMENT '反馈学生id',
  `create_at` varchar(30) DEFAULT NULL COMMENT '反馈时间',
  `reason` varchar(255) DEFAULT NULL COMMENT '原因',
  PRIMARY KEY (`id`),
  KEY `feedback_student_null_fk` (`stu_id`),
  CONSTRAINT `feedback_student_null_fk` FOREIGN KEY (`stu_id`) REFERENCES `student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='问题反馈';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,13,'2023年7月2日14点29分','隔壁太吵了 希望处分他们'),(2,13,'2023年7月2日14点29分','走廊垃圾太多 '),(3,15,'2023年7月2日14点29分','食堂太近了 点外卖不好点 容易被偷'),(4,21,'2023年7月2日20点58分','隔壁野家军寝室跳舞，太吵了'),(5,26,'d','Q ');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `major`
--

DROP TABLE IF EXISTS `major`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `major` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dep_id` int(11) DEFAULT NULL COMMENT '专业id',
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `外键_name` (`dep_id`),
  CONSTRAINT `外键_name` FOREIGN KEY (`dep_id`) REFERENCES `depart` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COMMENT='专业';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `major`
--

LOCK TABLES `major` WRITE;
/*!40000 ALTER TABLE `major` DISABLE KEYS */;
INSERT INTO `major` VALUES (1,1,'软件工程'),(2,1,'物联网工程'),(3,2,'金融学'),(4,2,'金融工程'),(5,3,'旅游管理'),(6,5,'康复学'),(7,6,'会计学'),(8,6,'财务管理'),(9,6,'会计学（注册会计师）'),(10,2,'投资学'),(11,2,'财务管理'),(12,2,'金融科技'),(13,4,'法学'),(15,7,'音乐学'),(16,7,'数字媒体艺术'),(17,7,'舞蹈表演');
/*!40000 ALTER TABLE `major` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(64) DEFAULT NULL COMMENT '访问路径的定位URI',
  `path` varchar(64) DEFAULT NULL COMMENT '组件文件的相对路径',
  `component` varchar(64) DEFAULT NULL COMMENT '组件文件名',
  `name` varchar(64) DEFAULT NULL COMMENT '组件意义',
  `iconCls` varchar(64) DEFAULT NULL COMMENT 'icon图标',
  `parentId` int(11) DEFAULT NULL COMMENT '父组件id',
  `enabled` tinyint(1) DEFAULT '1' COMMENT '是否启用',
  `requireAuth` tinyint(4) DEFAULT NULL COMMENT '需要的权限',
  `keepAlive` tinyint(4) DEFAULT NULL COMMENT '是否能正常访问',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `parentId` (`parentId`) USING BTREE,
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parentId`) REFERENCES `menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COMMENT='前端Vue框架组件的数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'/',NULL,NULL,'所有',NULL,NULL,1,NULL,NULL),(2,'/','/home','Home','学生管理','fa fa-graduation-cap',1,1,1,NULL),(3,'/','/home','Home','楼栋管理','fa fa-building',1,1,1,NULL),(4,'/','/home','Home','宿舍管理','fa fa-hotel',1,1,1,NULL),(5,'/','/home','Home','用户管理','fa fa-users',1,1,1,NULL),(6,'/','/home','Home','系统管理','fa fa-address-book ',1,1,1,NULL),(7,'/api/student/**','/student/profile','StudentProfile','学生资料',NULL,2,1,1,NULL),(8,'/api/building/**','/building/info','BuildingInfo','楼栋信息',NULL,3,1,1,NULL),(9,'/api/dorm/**','/dorm/details','DormDetails','宿舍详情',NULL,4,1,1,NULL),(10,'/api/user/**','/user/info','UserInfo','用户信息',NULL,5,1,1,NULL),(11,'/api/system/**','/system/profile','SystemProfile','系统资料',NULL,6,1,1,NULL),(12,'/','/home','Home','通知管理','fa fa-bell',1,1,1,NULL),(15,'/api/notice/**','/notice/info','NoticeInfo','公告消息',NULL,12,1,1,NULL),(16,'/','/home','Home','报修管理','fa fa-wrench',1,1,1,NULL),(17,'/api/repair','/repair/info','RepairInfo','报修详情',NULL,16,1,1,NULL),(18,'/','/home','Home','问题管理','fa fa-pencil-square-o ',1,1,NULL,NULL),(19,'/','/home','Home','外来管理','fa fa-male',1,1,NULL,NULL),(20,'/api/outsider','/outsider/info','OutsiderInfo','外来人员',NULL,19,1,NULL,NULL),(21,'/api/feedback','/feedback/info','FeedbackInfo','反馈信息',NULL,18,1,NULL,NULL);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_role`
--

DROP TABLE IF EXISTS `menu_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) DEFAULT NULL COMMENT '菜单id',
  `rid` int(11) DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `mid` (`mid`) USING BTREE,
  KEY `rid` (`rid`) USING BTREE,
  CONSTRAINT `menu_role_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `menu` (`id`),
  CONSTRAINT `menu_role_ibfk_2` FOREIGN KEY (`rid`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8mb4 COMMENT='菜单属于的角色';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_role`
--

LOCK TABLES `menu_role` WRITE;
/*!40000 ALTER TABLE `menu_role` DISABLE KEYS */;
INSERT INTO `menu_role` VALUES (283,7,1),(284,8,1),(285,9,1),(286,10,1),(287,11,1),(288,7,2),(289,8,2),(290,9,2),(293,15,1),(294,15,2),(295,17,1),(296,17,2),(297,20,1),(298,20,2),(299,21,1),(300,21,2);
/*!40000 ALTER TABLE `menu_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) DEFAULT NULL COMMENT '类型',
  `content` varchar(1000) DEFAULT NULL COMMENT '内容',
  `publisher` varchar(30) DEFAULT NULL COMMENT '发布人',
  `build_id` int(11) DEFAULT NULL COMMENT '楼区编号 ',
  `create_at` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notice_building_null_fk` (`build_id`),
  CONSTRAINT `notice_building_null_fk` FOREIGN KEY (`build_id`) REFERENCES `building` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COMMENT='通知公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (11,'紧急通知','速速报考江西财经大学','大姐',275,'2023-07-03 08:26:57'),(12,'紧急通知！','7月5日下午搬空宿舍！！','大爷',275,'2023-07-03 14:39:53'),(14,'通告','NB338因跳舞激烈损坏地板罚款两百，望大家引以为戒','尧大爷',275,'2023-07-04 09:09:29');
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outsider_exam`
--

DROP TABLE IF EXISTS `outsider_exam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `outsider_exam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `o_id` int(11) DEFAULT NULL COMMENT '申请表id',
  `enable` tinyint(1) DEFAULT NULL COMMENT '是否同意(0不同意 1同意)',
  `admin_id` int(11) DEFAULT NULL COMMENT '审批人id',
  `idea` varchar(255) DEFAULT NULL COMMENT '审批意见',
  PRIMARY KEY (`id`),
  KEY `outsider_exam_outsiders_null_fk` (`o_id`),
  KEY `outsider_exam_user_null_fk` (`admin_id`),
  CONSTRAINT `outsider_exam_outsiders_null_fk` FOREIGN KEY (`o_id`) REFERENCES `outsiders` (`id`),
  CONSTRAINT `outsider_exam_user_null_fk` FOREIGN KEY (`admin_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='外来人员审批';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outsider_exam`
--

LOCK TABLES `outsider_exam` WRITE;
/*!40000 ALTER TABLE `outsider_exam` DISABLE KEYS */;
/*!40000 ALTER TABLE `outsider_exam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outsiders`
--

DROP TABLE IF EXISTS `outsiders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `outsiders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `build_id` int(11) DEFAULT NULL COMMENT '访问楼栋的id',
  `create_at` varchar(30) DEFAULT NULL COMMENT '登记时间',
  `reason` varchar(255) DEFAULT NULL COMMENT '访问原因',
  `stu_id` int(11) DEFAULT NULL COMMENT '申请人id',
  PRIMARY KEY (`id`),
  KEY `outsiders_building_null_fk` (`build_id`),
  KEY `outsiders_student_null_fk` (`stu_id`),
  CONSTRAINT `outsiders_building_null_fk` FOREIGN KEY (`build_id`) REFERENCES `building` (`id`),
  CONSTRAINT `outsiders_student_null_fk` FOREIGN KEY (`stu_id`) REFERENCES `student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='外来人员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outsiders`
--

LOCK TABLES `outsiders` WRITE;
/*!40000 ALTER TABLE `outsiders` DISABLE KEYS */;
INSERT INTO `outsiders` VALUES (1,275,'2023年7月2日14点19分','拿资料 拿资料 拿资料 拿资料 拿资料',NULL),(2,276,'2023年7月2日14点20分','找朋友 找朋友 找朋友 找朋友 找朋友',NULL),(3,277,'2023年7月2日14点30分','探望家属 探望家属 探望家属 探望家属',NULL),(4,275,'2023年7月3日12点00分','交作业 交作业 交作业 交作业',NULL),(5,276,'2023年7月3日9点30分','野家军来和庐借裙子',NULL);
/*!40000 ALTER TABLE `outsiders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repairs`
--

DROP TABLE IF EXISTS `repairs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `repairs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `description` varchar(1000) DEFAULT NULL COMMENT '描述',
  `create_at` varchar(30) DEFAULT NULL COMMENT '创建时间',
  `dorm_id` int(11) DEFAULT NULL COMMENT '报修寝室id',
  PRIMARY KEY (`id`),
  KEY `repairs_dorm_null_fk` (`dorm_id`),
  CONSTRAINT `repairs_dorm_null_fk` FOREIGN KEY (`dorm_id`) REFERENCES `dorm` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='报修';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repairs`
--

LOCK TABLES `repairs` WRITE;
/*!40000 ALTER TABLE `repairs` DISABLE KEYS */;
INSERT INTO `repairs` VALUES (1,'水管爆了','宁庐B栋342水管破裂','2023年7月2日09点58分',NULL),(2,'网很卡','宁庐B栋343网很卡 天天掉线','2023年7月2日09点58分',NULL),(3,'厕所爆炸','宁庐B栋338厕所爆炸了','2023年7月3日09点11分',NULL),(4,'灯炸了，天黑了','宁庐B栋340灯管损坏','2023年7月2日20点58分',NULL),(5,'野家军跳舞太激烈，地板损坏','宁庐B栋338地板损坏','2023年7月2日21点00分',NULL);
/*!40000 ALTER TABLE `repairs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `nameZh` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ROLE_admin','系统管理员'),(2,'ROLE_manager','寝室管理员');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_no` varchar(10) NOT NULL COMMENT '学号',
  `student_name` varchar(10) NOT NULL COMMENT '姓名',
  `sex` tinyint(1) NOT NULL DEFAULT '1' COMMENT '性别 0女 1男',
  `dorm_id` int(11) DEFAULT NULL COMMENT '寝室id',
  `create_at` varchar(30) DEFAULT NULL,
  `update_at` varchar(30) DEFAULT NULL,
  `major_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `student_dorm_null_fk` (`dorm_id`),
  KEY `外键_name1` (`major_id`),
  CONSTRAINT `student_dorm_null_fk` FOREIGN KEY (`dorm_id`) REFERENCES `dorm` (`id`),
  CONSTRAINT `外键_name1` FOREIGN KEY (`major_id`) REFERENCES `major` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (13,'0214732','✌⭐🔥🔥🔥🔥',1,267,'2023-07-01','2023-07-03',1),(15,'0114514','李奥波',0,267,'2023-07-02','2023-07-04',3),(16,'0214729','甘熙橙',1,267,'2023-07-03','2023-07-03',4),(17,'0214706','👾野家军🐲🐛',1,268,'2023-07-03','2023-07-03',17),(18,'0214713','😺汪大可🐼',1,267,'2023-07-03','2023-07-03',16),(21,'0214715','💊药效强',1,269,'2023-07-03','2023-07-03',1),(24,'8888888','咯咯鸡哥',1,268,'2023-07-03','2023-07-03',17),(25,'0214766','酷邹邹',1,269,'2023-07-03','2023-07-03',1),(26,'0214708','🐶王震雨⛈️',1,269,'2023-07-03','2023-07-03',1);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `name` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '姓名',
  `phone` char(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号码',
  `enabled` tinyint(4) DEFAULT '1' COMMENT '是否可用(有没有被禁用)',
  `username` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '密码',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_at` varchar(30) DEFAULT NULL,
  `update_at` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (13,'团队（叶倖燚，汪可，叶嘉骏，尧强，甘熙诚，王政宇）','13511112222',1,'admin','$2a$10$lQkDrNOYHqcelxfjxkD0MukyLeC54IPnomtvwN1EnJL1ts/xlA/8O','系统管理员',NULL,'2023-07-03'),(14,'管理员','13522221111',1,'123','$2a$10$H8U41CIf4IV.YqzcGXLPFO/jj9FEUlHiAHcoy3EGy.EHkjZZpPbu2','寝室管理员',NULL,NULL),(22,'✌','15679707018',1,'yxy','$2a$10$alKLu020SShRzn1s5G9wvO1cpX160cI82vtDuMtwHHOL.6gANwWZ.','寝室管理员',NULL,NULL),(23,'啊啊','123131231',1,'test','$2a$10$BaRaTBgBvyxzGGKCsRQPOusHUM8GproHR2IlNRkWTyKrBV0HcTDwG','寝室管理员','2023-06-30','2023-06-30'),(24,'啦啦','123456789',1,'啦啦','$2a$10$8GHh2uzsljXizWG5rLd3.e15WN962kIRsR20e6jcGbOwyQ.jjLCUS','管理员','2023-07-02','2023-07-03'),(27,'野家军','1123654899',1,'manager','$2a$10$.FRf.23dIiHq.D0FUBoibumz1tLkuQyZv6zl9Z51pmA0jvo07luQG','寝室管理员','2023-07-03','2023-07-03'),(29,'熊碧洲','13642114568',1,'66666','$2a$10$cUyKVfufhEI9EPJh5wfVhejp3mCYpQ/Y65LlVY462DMuFbuHSokOm','寝室管理员','2023-07-04','2023-07-04'),(31,'药效强','19999999999',1,'yaoqiaoqiang','$2a$10$TsznaBtdfFy5DR0zKK662.Un2PgFM/ILz5WxomgIPnlrBliv69KLG','系统管理员','2023-07-04','2023-07-04'),(33,'123','0123456789',1,'111','$2a$10$IQYrrKKc1KihkVv0teypIOfkAgZVKg66B3ueMvwSmRIx7YjcAW8aC','系统管理员','2023-07-04','2023-07-04'),(34,'药效强','19999999999',1,'yaoxiaoqiang','$2a$10$RTjwZXJ.Ciz5JX3Bvjyo1uMPSr1b2f1rXPRHJeO9KD9LS/QRn5Te6','系统管理员','2023-07-04','2023-07-04');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insert_user_role` AFTER INSERT ON `user` FOR EACH ROW BEGIN
    DECLARE newRid INT;

    IF NEW.remark = '系统管理员' THEN
        SET newRid = 1;
    ELSEIF NEW.remark = '寝室管理员' THEN
        SET newRid = 2;
    ELSE
        SET newRid = NULL;
    END IF;

    IF newRid IS NOT NULL THEN
        INSERT INTO user_role(uid, rid) VALUES (NEW.id, newRid);
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`yxy`@`%`*/ /*!50003 TRIGGER delete_user_role
AFTER DELETE ON user
FOR EACH ROW
BEGIN
    DELETE FROM user_role WHERE uid = OLD.id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `rid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `rid` (`rid`) USING BTREE,
  KEY `user_role_ibfk_1` (`uid`) USING BTREE,
  CONSTRAINT `user_role_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_role_ibfk_2` FOREIGN KEY (`rid`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COMMENT='用户角色';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (75,13,1),(76,14,2),(79,22,2),(80,23,2),(81,24,1),(83,27,2),(85,29,2),(87,31,1),(89,33,1),(90,34,1);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-04 11:16:39
