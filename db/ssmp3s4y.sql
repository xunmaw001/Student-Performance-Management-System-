-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmp3s4y
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `banjichengji`
--

DROP TABLE IF EXISTS `banjichengji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banjichengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `nianji` varchar(200) DEFAULT NULL COMMENT '年级',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `kemu` varchar(200) DEFAULT NULL COMMENT '科目',
  `zongchengji` varchar(200) DEFAULT NULL COMMENT '总成绩',
  `pingjunfen` varchar(200) DEFAULT NULL COMMENT '平均分',
  `chengjibiao` longtext COMMENT '成绩表',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `dengjishijian` date DEFAULT NULL COMMENT '登记时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='班级成绩';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banjichengji`
--

LOCK TABLES `banjichengji` WRITE;
/*!40000 ALTER TABLE `banjichengji` DISABLE KEYS */;
INSERT INTO `banjichengji` VALUES (1,'2020-12-17 05:03:35','标题1','一年级','一班','英语','总成绩1','平均分1','成绩表1','教师工号1','2020-12-17'),(2,'2020-12-17 05:03:35','标题2','一年级','一班','英语','总成绩2','平均分2','成绩表2','教师工号2','2020-12-17'),(3,'2020-12-17 05:03:35','标题3','一年级','一班','英语','总成绩3','平均分3','成绩表3','教师工号3','2020-12-17'),(4,'2020-12-17 05:03:35','标题4','一年级','一班','英语','总成绩4','平均分4','成绩表4','教师工号4','2020-12-17'),(5,'2020-12-17 05:03:35','标题5','一年级','一班','英语','总成绩5','平均分5','成绩表5','教师工号5','2020-12-17'),(6,'2020-12-17 05:03:35','标题6','一年级','一班','英语','总成绩6','平均分6','成绩表6','教师工号6','2020-12-17');
/*!40000 ALTER TABLE `banjichengji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssmp3s4y/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmp3s4y/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmp3s4y/upload/picture3.jpg'),(4,'picture4','http://localhost:8080/ssmp3s4y/upload/picture4.jpg'),(5,'picture5','http://localhost:8080/ssmp3s4y/upload/picture5.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exampaper`
--

DROP TABLE IF EXISTS `exampaper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exampaper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `name` varchar(200) NOT NULL COMMENT '试卷名称',
  `time` int(11) NOT NULL COMMENT '考试时长(分钟)',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '试卷状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='试卷表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exampaper`
--

LOCK TABLES `exampaper` WRITE;
/*!40000 ALTER TABLE `exampaper` DISABLE KEYS */;
/*!40000 ALTER TABLE `exampaper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examquestion`
--

DROP TABLE IF EXISTS `examquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examquestion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `paperid` bigint(20) NOT NULL COMMENT '所属试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `type` bigint(20) DEFAULT '0' COMMENT '试题类型，0：单选题 1：多选题 2：判断题 3：填空题（暂不考虑多项填空）',
  `sequence` bigint(20) DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='试题表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examquestion`
--

LOCK TABLES `examquestion` WRITE;
/*!40000 ALTER TABLE `examquestion` DISABLE KEYS */;
/*!40000 ALTER TABLE `examquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examrecord`
--

DROP TABLE IF EXISTS `examrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examrecord` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `paperid` bigint(20) NOT NULL COMMENT '试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionid` bigint(20) NOT NULL COMMENT '试题id（外键）',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `myscore` bigint(20) NOT NULL DEFAULT '0' COMMENT '试题得分',
  `myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考试记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examrecord`
--

LOCK TABLES `examrecord` WRITE;
/*!40000 ALTER TABLE `examrecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `examrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gonggaoxinxi`
--

DROP TABLE IF EXISTS `gonggaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gonggaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `neirong` longtext COMMENT '内容',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gonggaoxinxi`
--

LOCK TABLES `gonggaoxinxi` WRITE;
/*!40000 ALTER TABLE `gonggaoxinxi` DISABLE KEYS */;
INSERT INTO `gonggaoxinxi` VALUES (1,'2020-12-17 05:03:35','标题1','内容1','http://localhost:8080/ssmp3s4y/upload/gonggaoxinxi_fengmian1.jpg','2020-12-17'),(2,'2020-12-17 05:03:35','标题2','内容2','http://localhost:8080/ssmp3s4y/upload/gonggaoxinxi_fengmian2.jpg','2020-12-17'),(3,'2020-12-17 05:03:35','标题3','内容3','http://localhost:8080/ssmp3s4y/upload/gonggaoxinxi_fengmian3.jpg','2020-12-17'),(4,'2020-12-17 05:03:35','标题4','内容4','http://localhost:8080/ssmp3s4y/upload/gonggaoxinxi_fengmian4.jpg','2020-12-17'),(5,'2020-12-17 05:03:35','标题5','内容5','http://localhost:8080/ssmp3s4y/upload/gonggaoxinxi_fengmian5.jpg','2020-12-17'),(6,'2020-12-17 05:03:35','标题6','内容6','http://localhost:8080/ssmp3s4y/upload/gonggaoxinxi_fengmian6.jpg','2020-12-17');
/*!40000 ALTER TABLE `gonggaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshi`
--

DROP TABLE IF EXISTS `jiaoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `jiaoshiyouxiang` varchar(200) DEFAULT NULL COMMENT '教师邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshigonghao` (`jiaoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='教师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshi`
--

LOCK TABLES `jiaoshi` WRITE;
/*!40000 ALTER TABLE `jiaoshi` DISABLE KEYS */;
INSERT INTO `jiaoshi` VALUES (1,'2020-12-17 05:03:34','教师1','123456','教师姓名1','男','http://localhost:8080/ssmp3s4y/upload/jiaoshi_zhaopian1.jpg','职称1','13823888881','773890001@qq.com'),(2,'2020-12-17 05:03:34','教师2','123456','教师姓名2','男','http://localhost:8080/ssmp3s4y/upload/jiaoshi_zhaopian2.jpg','职称2','13823888882','773890002@qq.com'),(3,'2020-12-17 05:03:34','教师3','123456','教师姓名3','男','http://localhost:8080/ssmp3s4y/upload/jiaoshi_zhaopian3.jpg','职称3','13823888883','773890003@qq.com'),(4,'2020-12-17 05:03:34','教师4','123456','教师姓名4','男','http://localhost:8080/ssmp3s4y/upload/jiaoshi_zhaopian4.jpg','职称4','13823888884','773890004@qq.com'),(5,'2020-12-17 05:03:34','教师5','123456','教师姓名5','男','http://localhost:8080/ssmp3s4y/upload/jiaoshi_zhaopian5.jpg','职称5','13823888885','773890005@qq.com'),(6,'2020-12-17 05:03:34','教师6','123456','教师姓名6','男','http://localhost:8080/ssmp3s4y/upload/jiaoshi_zhaopian6.jpg','职称6','13823888886','773890006@qq.com');
/*!40000 ALTER TABLE `jiaoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoxuekejian`
--

DROP TABLE IF EXISTS `jiaoxuekejian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoxuekejian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `wenjian` varchar(200) DEFAULT NULL COMMENT '文件',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `neirong` longtext COMMENT '内容',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='教学课件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoxuekejian`
--

LOCK TABLES `jiaoxuekejian` WRITE;
/*!40000 ALTER TABLE `jiaoxuekejian` DISABLE KEYS */;
INSERT INTO `jiaoxuekejian` VALUES (1,'2020-12-17 05:03:35','标题1','','http://localhost:8080/ssmp3s4y/upload/jiaoxuekejian_fengmian1.jpg','内容1','教师工号1','教师姓名1','2020-12-17'),(2,'2020-12-17 05:03:35','标题2','','http://localhost:8080/ssmp3s4y/upload/jiaoxuekejian_fengmian2.jpg','内容2','教师工号2','教师姓名2','2020-12-17'),(3,'2020-12-17 05:03:35','标题3','','http://localhost:8080/ssmp3s4y/upload/jiaoxuekejian_fengmian3.jpg','内容3','教师工号3','教师姓名3','2020-12-17'),(4,'2020-12-17 05:03:35','标题4','','http://localhost:8080/ssmp3s4y/upload/jiaoxuekejian_fengmian4.jpg','内容4','教师工号4','教师姓名4','2020-12-17'),(5,'2020-12-17 05:03:35','标题5','','http://localhost:8080/ssmp3s4y/upload/jiaoxuekejian_fengmian5.jpg','内容5','教师工号5','教师姓名5','2020-12-17'),(6,'2020-12-17 05:03:35','标题6','','http://localhost:8080/ssmp3s4y/upload/jiaoxuekejian_fengmian6.jpg','内容6','教师工号6','教师姓名6','2020-12-17');
/*!40000 ALTER TABLE `jiaoxuekejian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'2020-12-17 05:03:35','标题1','http://localhost:8080/ssmp3s4y/upload/news_picture1.jpg','内容1'),(2,'2020-12-17 05:03:35','标题2','http://localhost:8080/ssmp3s4y/upload/news_picture2.jpg','内容2'),(3,'2020-12-17 05:03:35','标题3','http://localhost:8080/ssmp3s4y/upload/news_picture3.jpg','内容3'),(4,'2020-12-17 05:03:35','标题4','http://localhost:8080/ssmp3s4y/upload/news_picture4.jpg','内容4'),(5,'2020-12-17 05:03:35','标题5','http://localhost:8080/ssmp3s4y/upload/news_picture5.jpg','内容5'),(6,'2020-12-17 05:03:35','标题6','http://localhost:8080/ssmp3s4y/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','d8iz2anwi8byiie25kezs8mlozogik8d','2020-12-17 05:09:18','2020-12-17 06:09:18');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2020-12-17 05:03:35');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueshengxuehao` varchar(200) DEFAULT NULL COMMENT '学生学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `nianji` varchar(200) DEFAULT NULL COMMENT '年级',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xueshengxuehao` (`xueshengxuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (1,'2020-12-17 05:03:34','学生1','学生姓名1','123456','一年级','一班','男','13823888881','773890001@qq.com','440300199101010001'),(2,'2020-12-17 05:03:34','学生2','学生姓名2','123456','一年级','一班','男','13823888882','773890002@qq.com','440300199202020002'),(3,'2020-12-17 05:03:34','学生3','学生姓名3','123456','一年级','一班','男','13823888883','773890003@qq.com','440300199303030003'),(4,'2020-12-17 05:03:34','学生4','学生姓名4','123456','一年级','一班','男','13823888884','773890004@qq.com','440300199404040004'),(5,'2020-12-17 05:03:34','学生5','学生姓名5','123456','一年级','一班','男','13823888885','773890005@qq.com','440300199505050005'),(6,'2020-12-17 05:03:34','学生6','学生姓名6','123456','一年级','一班','男','13823888886','773890006@qq.com','440300199606060006');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xueshengchengji`
--

DROP TABLE IF EXISTS `xueshengchengji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xueshengchengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `xueshengxuehao` varchar(200) DEFAULT NULL COMMENT '学生学号',
  `kemu` varchar(200) DEFAULT NULL COMMENT '科目',
  `chengji` varchar(200) DEFAULT NULL COMMENT '成绩',
  `banpaiming` int(11) DEFAULT NULL COMMENT '班排名',
  `jipaiming` int(11) DEFAULT NULL COMMENT '级排名',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='学生成绩';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xueshengchengji`
--

LOCK TABLES `xueshengchengji` WRITE;
/*!40000 ALTER TABLE `xueshengchengji` DISABLE KEYS */;
INSERT INTO `xueshengchengji` VALUES (1,'2020-12-17 05:03:35','标题1','学生学号1','英语','成绩1',1,1,'2020-12-17'),(2,'2020-12-17 05:03:35','标题2','学生学号2','英语','成绩2',2,2,'2020-12-17'),(3,'2020-12-17 05:03:35','标题3','学生学号3','英语','成绩3',3,3,'2020-12-17'),(4,'2020-12-17 05:03:35','标题4','学生学号4','英语','成绩4',4,4,'2020-12-17'),(5,'2020-12-17 05:03:35','标题5','学生学号5','英语','成绩5',5,5,'2020-12-17'),(6,'2020-12-17 05:03:35','标题6','学生学号6','英语','成绩6',6,6,'2020-12-17');
/*!40000 ALTER TABLE `xueshengchengji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuexiaojianjie`
--

DROP TABLE IF EXISTS `xuexiaojianjie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuexiaojianjie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuexiaomingcheng` varchar(200) DEFAULT NULL COMMENT '学校名称',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `xiaoyuanfengcai` longtext COMMENT '校园风采',
  `xiaoyuanjianjie` longtext COMMENT '校园简介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='学校简介';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuexiaojianjie`
--

LOCK TABLES `xuexiaojianjie` WRITE;
/*!40000 ALTER TABLE `xuexiaojianjie` DISABLE KEYS */;
INSERT INTO `xuexiaojianjie` VALUES (4,'2020-12-17 05:03:35','静雅小学','http://localhost:8080/ssmp3s4y/upload/xuexiaojianjie_fengmian4.jpg','<p>fdsahjfdsafkjdsakl f看的就看撒打开拉萨看得见萨科就反对凯撒就看发的撒娇看房价肯定撒就看发动机是卡飞机喀什积分卡几十块范德萨看附近的咖啡机安居房卡时间开发的技术看房价肯定撒付款的撒娇咖啡的撒开发健康的撒发来的积分了打卡萨疯狂打赏看反对凯撒疯狂的撒看反倒是卡放大看是否看</p>','<p>范德萨范德萨发布会的撒附件客户啥的接口哈佛金葵花金葵花的数据库监控和就发大厦就放到数据库发就大厦看i警方打开拉萨疯狂的撒发肯定就爱上看风景付款的撒娇开发的技术反倒是卡的</p>');
/*!40000 ALTER TABLE `xuexiaojianjie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `youxiubanzhuren`
--

DROP TABLE IF EXISTS `youxiubanzhuren`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `youxiubanzhuren` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `xiangqing` longtext COMMENT '详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='优秀班主任';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `youxiubanzhuren`
--

LOCK TABLES `youxiubanzhuren` WRITE;
/*!40000 ALTER TABLE `youxiubanzhuren` DISABLE KEYS */;
INSERT INTO `youxiubanzhuren` VALUES (1,'2020-12-17 05:03:34','标题1','教师工号1','教师姓名1','职称1','http://localhost:8080/ssmp3s4y/upload/youxiubanzhuren_fengmian1.jpg','详情1'),(2,'2020-12-17 05:03:34','标题2','教师工号2','教师姓名2','职称2','http://localhost:8080/ssmp3s4y/upload/youxiubanzhuren_fengmian2.jpg','详情2'),(3,'2020-12-17 05:03:34','标题3','教师工号3','教师姓名3','职称3','http://localhost:8080/ssmp3s4y/upload/youxiubanzhuren_fengmian3.jpg','详情3'),(4,'2020-12-17 05:03:34','标题4','教师工号4','教师姓名4','职称4','http://localhost:8080/ssmp3s4y/upload/youxiubanzhuren_fengmian4.jpg','详情4'),(5,'2020-12-17 05:03:34','标题5','教师工号5','教师姓名5','职称5','http://localhost:8080/ssmp3s4y/upload/youxiubanzhuren_fengmian5.jpg','详情5'),(6,'2020-12-17 05:03:34','标题6','教师工号6','教师姓名6','职称6','http://localhost:8080/ssmp3s4y/upload/youxiubanzhuren_fengmian6.jpg','详情6');
/*!40000 ALTER TABLE `youxiubanzhuren` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `youxiujiaoshi`
--

DROP TABLE IF EXISTS `youxiujiaoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `youxiujiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `rongyu` varchar(200) DEFAULT NULL COMMENT '荣誉',
  `xiangqing` longtext COMMENT '详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='优秀教师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `youxiujiaoshi`
--

LOCK TABLES `youxiujiaoshi` WRITE;
/*!40000 ALTER TABLE `youxiujiaoshi` DISABLE KEYS */;
INSERT INTO `youxiujiaoshi` VALUES (1,'2020-12-17 05:03:34','标题1','教师工号1','教师姓名1','http://localhost:8080/ssmp3s4y/upload/youxiujiaoshi_fengmian1.jpg','荣誉1','详情1'),(2,'2020-12-17 05:03:34','标题2','教师工号2','教师姓名2','http://localhost:8080/ssmp3s4y/upload/youxiujiaoshi_fengmian2.jpg','荣誉2','详情2'),(3,'2020-12-17 05:03:34','标题3','教师工号3','教师姓名3','http://localhost:8080/ssmp3s4y/upload/youxiujiaoshi_fengmian3.jpg','荣誉3','详情3'),(4,'2020-12-17 05:03:34','标题4','教师工号4','教师姓名4','http://localhost:8080/ssmp3s4y/upload/youxiujiaoshi_fengmian4.jpg','荣誉4','详情4'),(5,'2020-12-17 05:03:34','标题5','教师工号5','教师姓名5','http://localhost:8080/ssmp3s4y/upload/youxiujiaoshi_fengmian5.jpg','荣誉5','详情5'),(6,'2020-12-17 05:03:34','标题6','教师工号6','教师姓名6','http://localhost:8080/ssmp3s4y/upload/youxiujiaoshi_fengmian6.jpg','荣誉6','详情6');
/*!40000 ALTER TABLE `youxiujiaoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `youxiuxuesheng`
--

DROP TABLE IF EXISTS `youxiuxuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `youxiuxuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `nianji` varchar(200) DEFAULT NULL COMMENT '年级',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `xueshengxuehao` varchar(200) DEFAULT NULL COMMENT '学生学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `xueshengchengji` varchar(200) DEFAULT NULL COMMENT '学生成绩',
  `pingyu` longtext COMMENT '评语',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='优秀学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `youxiuxuesheng`
--

LOCK TABLES `youxiuxuesheng` WRITE;
/*!40000 ALTER TABLE `youxiuxuesheng` DISABLE KEYS */;
INSERT INTO `youxiuxuesheng` VALUES (1,'2020-12-17 05:03:35','标题1','一年级','一班','学生学号1','学生姓名1','学生成绩1','评语1','2020-12-17','http://localhost:8080/ssmp3s4y/upload/youxiuxuesheng_fengmian1.jpg'),(2,'2020-12-17 05:03:35','标题2','一年级','一班','学生学号2','学生姓名2','学生成绩2','评语2','2020-12-17','http://localhost:8080/ssmp3s4y/upload/youxiuxuesheng_fengmian2.jpg'),(3,'2020-12-17 05:03:35','标题3','一年级','一班','学生学号3','学生姓名3','学生成绩3','评语3','2020-12-17','http://localhost:8080/ssmp3s4y/upload/youxiuxuesheng_fengmian3.jpg'),(4,'2020-12-17 05:03:35','标题4','一年级','一班','学生学号4','学生姓名4','学生成绩4','评语4','2020-12-17','http://localhost:8080/ssmp3s4y/upload/youxiuxuesheng_fengmian4.jpg'),(5,'2020-12-17 05:03:35','标题5','一年级','一班','学生学号5','学生姓名5','学生成绩5','评语5','2020-12-17','http://localhost:8080/ssmp3s4y/upload/youxiuxuesheng_fengmian5.jpg'),(6,'2020-12-17 05:03:35','标题6','一年级','一班','学生学号6','学生姓名6','学生成绩6','评语6','2020-12-17','http://localhost:8080/ssmp3s4y/upload/youxiuxuesheng_fengmian6.jpg');
/*!40000 ALTER TABLE `youxiuxuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zaixiandayi`
--

DROP TABLE IF EXISTS `zaixiandayi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zaixiandayi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `liuyanneirong` longtext COMMENT '留言内容',
  `xueshengxuehao` varchar(200) DEFAULT NULL COMMENT '学生学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `liuyanshijian` date DEFAULT NULL COMMENT '留言时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='在线答疑';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zaixiandayi`
--

LOCK TABLES `zaixiandayi` WRITE;
/*!40000 ALTER TABLE `zaixiandayi` DISABLE KEYS */;
INSERT INTO `zaixiandayi` VALUES (1,'2020-12-17 05:03:35','教师工号1','留言内容1','学生学号1','学生姓名1','2020-12-17','否',''),(2,'2020-12-17 05:03:35','教师工号2','留言内容2','学生学号2','学生姓名2','2020-12-17','否',''),(3,'2020-12-17 05:03:35','教师工号3','留言内容3','学生学号3','学生姓名3','2020-12-17','否',''),(4,'2020-12-17 05:03:35','教师工号4','留言内容4','学生学号4','学生姓名4','2020-12-17','否',''),(5,'2020-12-17 05:03:35','教师工号5','留言内容5','学生学号5','学生姓名5','2020-12-17','否',''),(6,'2020-12-17 05:03:35','教师工号6','留言内容6','学生学号6','学生姓名6','2020-12-17','否','');
/*!40000 ALTER TABLE `zaixiandayi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-17 19:41:50
