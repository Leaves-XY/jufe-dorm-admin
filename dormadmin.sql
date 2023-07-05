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
) ENGINE=InnoDB AUTO_INCREMENT=299 DEFAULT CHARSET=utf8mb4 COMMENT='宿舍楼';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `building`
--

LOCK TABLES `building` WRITE;
/*!40000 ALTER TABLE `building` DISABLE KEYS */;
INSERT INTO `building` VALUES (274,'宁庐A栋',1,'麦庐','2023-07-04','2023-07-04'),(275,'宁庐B栋',1,'麦庐',NULL,'2023-07-04'),(276,'和庐',0,'麦庐','2023-07-02','2023-07-04'),(277,'祥庐',1,'麦庐','2023-07-02','2023-07-04'),(278,'静庐A栋',1,'麦庐','2023-07-04','2023-07-04'),(279,'静庐B栋',0,'麦庐','2023-07-04','2023-07-04'),(281,'静庐E栋',1,'麦庐','2023-07-04','2023-07-04'),(282,'麦北1栋',0,'麦庐','2023-07-04','2023-07-04'),(283,'麦北2栋',1,'麦庐','2023-07-04','2023-07-04'),(284,'蛟北1栋',1,'蛟桥','2023-07-04','2023-07-04'),(285,'蛟北2栋',1,'蛟桥','2023-07-04','2023-07-04'),(286,'蛟北3栋',0,'蛟桥','2023-07-04','2023-07-04'),(287,'蛟北4栋',0,'蛟桥','2023-07-04','2023-07-04'),(288,'蛟北5栋',0,'蛟桥','2023-07-04','2023-07-04'),(289,'蛟南1栋',1,'蛟桥','2023-07-04','2023-07-04'),(290,'蛟南2栋',0,'蛟桥','2023-07-04','2023-07-04'),(291,'枫北1栋',1,'枫林','2023-07-04','2023-07-04'),(292,'枫北2栋',0,'枫林','2023-07-04','2023-07-04'),(293,'枫南1栋',1,'枫林','2023-07-04','2023-07-04'),(294,'枫南2栋',0,'枫林','2023-07-04','2023-07-04'),(295,'枫南3栋',1,'枫林','2023-07-04','2023-07-04');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COMMENT='学院';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `depart`
--

LOCK TABLES `depart` WRITE;
/*!40000 ALTER TABLE `depart` DISABLE KEYS */;
INSERT INTO `depart` VALUES (1,'软件与物联网工程学院'),(2,'金融学院'),(3,'财税与公共管理学院'),(4,'法学院'),(5,'体育学院'),(6,'会计学院'),(7,'艺术学院'),(8,'统计与数据科学学院'),(9,'信息管理学院'),(10,'人文学院'),(11,'工商管理学院'),(12,'外国语学院'),(13,'国际学院'),(14,'经济学院'),(15,'虚拟现实（VR）现代产业学院'),(16,'应用经济学院'),(17,'国际经贸学院');
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
  `remain` int(11) DEFAULT '0' COMMENT '剩余床位',
  `sex` tinyint(4) DEFAULT '1' COMMENT '寝室性别',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dorm_ibfk_1` (`building_id`) USING BTREE,
  CONSTRAINT `dorm_ibfk_1` FOREIGN KEY (`building_id`) REFERENCES `building` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=294 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dorm`
--

LOCK TABLES `dorm` WRITE;
/*!40000 ALTER TABLE `dorm` DISABLE KEYS */;
INSERT INTO `dorm` VALUES (267,'NB343',275,4,'超能陆战队',NULL,'2023-07-01',2,1),(268,'HB666',276,4,'','2023-07-02','2023-07-02',1,0),(269,'NB340',275,4,'汤臣一品业主','2023-07-03','2023-07-04',1,1),(271,'NB339',275,4,'红心传薪火','2023-07-03','2023-07-03',3,1),(275,'HA123',276,4,'','2023-07-03','2023-07-03',4,0),(276,'HA239',276,4,'','2023-07-03','2023-07-03',4,0),(277,'XA195',277,4,'','2023-07-03','2023-07-03',4,1),(278,'NB645',275,4,'秋风茅屋','2023-07-04','2023-07-04',2,1),(279,'NB306',275,4,'额滴防盗门~','2023-07-04','2023-07-04',2,1),(280,'HA555',276,4,'乱室佳人','2023-07-04','2023-07-04',3,0),(282,'NB337',275,4,'','2023-07-04','2023-07-04',1,1),(283,'NB338',275,4,'为人民服务','2023-07-04','2023-07-05',1,1),(284,'NB341',275,4,'','2023-07-04','2023-07-04',4,1),(285,'NB342',275,4,'','2023-07-04','2023-07-04',4,1),(286,'NB344',275,4,'','2023-07-04','2023-07-04',4,1),(287,'NB345',275,4,'','2023-07-04','2023-07-04',4,1),(288,'NB346',275,4,'','2023-07-04','2023-07-04',4,1),(289,'NB347',275,4,'','2023-07-04','2023-07-04',4,1),(290,'NB348',275,4,'','2023-07-04','2023-07-04',4,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COMMENT='问题反馈';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (3,15,'2023年7月2日14点29分','药效强上课打死神vs火影影响到同学们写项目了'),(4,21,'2023年7月2日20点58分','隔壁野家军寝室跳舞，太吵了'),(6,21,'2023年6月29日21点00分','汪大可寝室的猫为什么不来我这，望处理'),(7,18,'2023年7月3日10点30分','寝室遭洗劫一空，呜呜呜呜~');
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COMMENT='专业';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `major`
--

LOCK TABLES `major` WRITE;
/*!40000 ALTER TABLE `major` DISABLE KEYS */;
INSERT INTO `major` VALUES (1,1,'软件工程'),(2,1,'物联网工程'),(3,2,'金融学'),(4,2,'金融工程'),(5,3,'财政学'),(6,5,'社会体育指导与管理'),(7,6,'会计学'),(8,6,'财务管理'),(9,6,'会计学（注册会计师）'),(10,2,'投资学'),(11,2,'财务管理'),(12,2,'金融科技'),(13,4,'法学'),(15,7,'音乐学'),(16,7,'数字媒体艺术'),(17,7,'舞蹈表演'),(18,7,'产品设计'),(19,7,'环境设计'),(20,8,'经济统计学'),(21,8,'精算学'),(22,8,'应用统计学'),(23,5,'运动训练'),(24,9,'计算机科学与技术'),(25,9,'数据科学与大数据技术'),(26,9,'信息与计算科学'),(27,9,'网络空间安全'),(28,9,'信息管理信息系统'),(29,3,'行政管理（数字政务）'),(30,3,'税收学（数字税收）'),(31,10,'社会工作'),(32,10,'新闻学（经济新闻）'),(33,10,'汉语国际教育（商务方向）'),(34,11,'工商管理（智能商务）'),(35,11,'人力资源管理（数智人力）'),(36,11,'市场营销（数字营销）'),(37,11,'物流管理（智慧供应链）'),(38,6,'会计学（智能会计）'),(39,1,'软件工程（中外合作办学）'),(40,12,'商务英语'),(41,12,'日语（商务方向）'),(42,13,'会计学（国际会计）'),(43,13,'金融学（国际投资与金融）'),(44,13,'金融学（CFA方向）'),(45,13,'国际经济与贸易（CITF方向）'),(46,14,'经济学（数理经济）'),(47,14,'数字经济（中外合作办学）'),(48,15,'软件工程（VR软件开发）'),(49,15,'虚拟现实技术'),(50,15,'数字媒体艺术（VR艺术设计）'),(51,4,'法学（法务会计）'),(52,4,'法学（数据法学）'),(53,4,'法学（涉外法治）'),(54,16,'数字经济'),(55,17,'国际经济与贸易（数字贸易）'),(56,17,'国际贸易（IPMP方向）'),(57,17,'电子商务（商务大数据方向）'),(58,2,'保险学（精算方向）'),(59,6,'会计学（CIMA方向）'),(60,6,'会计学（ACCA方向）'),(61,6,'工程管理（数字基建管理）'),(62,6,'房地产开发与管理（投资与评估）');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COMMENT='通知公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (12,'紧急通知！','7月5日下午搬空宿舍！！','大爷',275,'2023-07-03 14:39:53'),(18,'紧急通知','法外狂徒张三因盗窃他人财物被逮捕归案，希望大家不在宿舍时需紧锁门窗，保护财产安全。','大爷（隐藏的福尔摩斯）',275,'2023-07-04 15:31:03'),(21,'紧急通告','明天上午答辩完成后下午需要继续上课，望周知','熊碧舟',276,'2023-07-04 15:32:48'),(23,'通告','野*军因跳舞激烈损坏地板罚款两百，望大家引以为戒。','尧大爷',275,'2023-07-05 08:16:40'),(24,'通知','药*强同学因为电信诈骗被骗251元，希望大家能够提高警惕.','野大爷',275,'2023-07-05 09:12:58');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='外来人员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outsiders`
--

LOCK TABLES `outsiders` WRITE;
/*!40000 ALTER TABLE `outsiders` DISABLE KEYS */;
INSERT INTO `outsiders` VALUES (3,277,'2023年7月2日14点30分','探望家属 探望家属 探望家属 探望家属',NULL),(4,275,'2023年7月3日12点00分','交作业 交作业 交作业 交作业',NULL),(5,276,'2023年7月3日9点30分','野家军来和庐借裙子',NULL),(6,275,'2023年7月3日20点30分','李奥波来交流交流',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COMMENT='报修';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repairs`
--

LOCK TABLES `repairs` WRITE;
/*!40000 ALTER TABLE `repairs` DISABLE KEYS */;
INSERT INTO `repairs` VALUES (2,'网很卡','宁庐B栋343网很卡 天天掉线','2023年7月2日09点58分',NULL),(3,'厕所爆炸','宁庐B栋338厕所爆炸了','2023年7月3日09点11分',NULL),(5,'野家军跳舞太激烈，地板损坏','宁庐B栋338地板损坏','2023年7月2日21点00分',NULL),(6,'门坏了（张三破门而入）','宁庐B栋306防盗门不防盗','2023年7月3日12点30分',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (13,'0214732','✌⭐🔥🔥🔥🔥',1,267,'2023-07-01','2023-07-04',1),(15,'0114514','李奥波',1,267,'2023-07-02','2023-07-04',51),(16,'0214729','甘熙橙',1,267,'2023-07-03','2023-07-03',4),(17,'0214706','👾野家军🐲🐛',1,268,'2023-07-03','2023-07-05',17),(18,'0214713','😺汪大可🐼',1,271,'2023-07-03','2023-07-04',16),(21,'0214715','💊药效强',1,269,'2023-07-03','2023-07-05',2),(24,'8888888','咯咯鸡哥',1,268,'2023-07-03','2023-07-04',17),(26,'0214708','🐶王震雨⛈️',1,269,'2023-07-03','2023-07-03',1),(30,'0214777','🦊汪小可',0,268,'2023-07-04','2023-07-04',53),(31,'0214766','酷酷邹',1,269,'2023-07-04','2023-07-04',1),(32,'0214111','张三（法外狂徒）',1,278,'2023-07-04','2023-07-04',1),(33,'0214222','王五（张三哥们儿）',1,278,'2023-07-04','2023-07-04',1),(34,'0214666','李狗蛋',1,279,'2023-07-04','2023-07-04',1),(35,'0214555','王铁牛',1,279,'2023-07-04','2023-07-04',1),(36,'0214888','刘二根',1,279,'2023-07-04','2023-07-04',1),(37,'0214704','王泰鹏',1,283,'2023-07-04','2023-07-04',1),(38,'0214705','朱奕凡',1,283,'2023-07-04','2023-07-04',1),(40,'0214738','微醺',1,282,'2023-07-04','2023-07-04',17),(41,'0214733','77桑',1,282,'2023-07-04','2023-07-04',1),(42,'0214735','楼主',1,282,'2023-07-04','2023-07-04',15),(43,'02111111','测试',0,280,'2023-07-04','2023-07-04',9);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`yxy`@`%`*/ /*!50003 TRIGGER decrease_remain AFTER INSERT ON student
FOR EACH ROW
BEGIN
    UPDATE dorm SET remain = remain - 1 WHERE id = NEW.dorm_id;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`yxy`@`%`*/ /*!50003 TRIGGER increase_remain AFTER DELETE ON student
FOR EACH ROW
BEGIN
    UPDATE dorm SET remain = remain + 1 WHERE id = OLD.dorm_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (13,'团队（叶倖燚，汪可，叶嘉骏，尧强，甘熙诚，王政宇）','13511112222',1,'admin','$2a$10$lQkDrNOYHqcelxfjxkD0MukyLeC54IPnomtvwN1EnJL1ts/xlA/8O','系统管理员',NULL,'2023-07-03'),(31,'药效强','19999999999',1,'yaoxiaoqiang','$2a$10$TsznaBtdfFy5DR0zKK662.Un2PgFM/ILz5WxomgIPnlrBliv69KLG','系统管理员','2023-07-04','2023-07-04'),(37,'野家军','1642440093',1,'yejiajun1','$2a$10$IyQ/1rsS6M5KLun/pyxxu.1YvrfEu6f3YnEyXt1OjY3ua3VfykXx.','寝室管理员','2023-07-05','2023-07-05');
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
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COMMENT='用户角色';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (75,13,1),(87,31,1),(96,37,2);
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

-- Dump completed on 2023-07-05 14:01:18
