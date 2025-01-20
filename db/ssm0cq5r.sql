-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm0cq5r
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
-- Current Database: `ssm0cq5r`
--

/*!40000 DROP DATABASE IF EXISTS `ssm0cq5r`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ssm0cq5r` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `ssm0cq5r`;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2022-04-12 07:54:21',11,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2022-04-12 07:54:21',12,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2022-04-12 07:54:21',13,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2022-04-12 07:54:21',14,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2022-04-12 07:54:21',15,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2022-04-12 07:54:21',16,'宇宙银河系月球1号','月某','13823888886','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  `mendianzhanghao` varchar(200) DEFAULT NULL COMMENT '商户名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussfuwuxiangmu`
--

DROP TABLE IF EXISTS `discussfuwuxiangmu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussfuwuxiangmu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='服务项目评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussfuwuxiangmu`
--

LOCK TABLES `discussfuwuxiangmu` WRITE;
/*!40000 ALTER TABLE `discussfuwuxiangmu` DISABLE KEYS */;
INSERT INTO `discussfuwuxiangmu` VALUES (131,'2022-04-12 07:54:21',1,1,'用户名1','评论内容1','回复内容1'),(132,'2022-04-12 07:54:21',2,2,'用户名2','评论内容2','回复内容2'),(133,'2022-04-12 07:54:21',3,3,'用户名3','评论内容3','回复内容3'),(134,'2022-04-12 07:54:21',4,4,'用户名4','评论内容4','回复内容4'),(135,'2022-04-12 07:54:22',5,5,'用户名5','评论内容5','回复内容5'),(136,'2022-04-12 07:54:22',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussfuwuxiangmu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussshangpinxinxi`
--

DROP TABLE IF EXISTS `discussshangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussshangpinxinxi`
--

LOCK TABLES `discussshangpinxinxi` WRITE;
/*!40000 ALTER TABLE `discussshangpinxinxi` DISABLE KEYS */;
INSERT INTO `discussshangpinxinxi` VALUES (141,'2022-04-12 07:54:22',1,1,'用户名1','评论内容1','回复内容1'),(142,'2022-04-12 07:54:22',2,2,'用户名2','评论内容2','回复内容2'),(143,'2022-04-12 07:54:22',3,3,'用户名3','评论内容3','回复内容3'),(144,'2022-04-12 07:54:22',4,4,'用户名4','评论内容4','回复内容4'),(145,'2022-04-12 07:54:22',5,5,'用户名5','评论内容5','回复内容5'),(146,'2022-04-12 07:54:22',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussshangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fuwuxiangmu`
--

DROP TABLE IF EXISTS `fuwuxiangmu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fuwuxiangmu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiangmubianhao` varchar(200) DEFAULT NULL COMMENT '项目编号',
  `xiangmumingcheng` varchar(200) DEFAULT NULL COMMENT '项目名称',
  `xiangmuleixing` varchar(200) DEFAULT NULL COMMENT '项目类型',
  `jiage` float DEFAULT NULL COMMENT '价格',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `xiangxijieshao` longtext COMMENT '详细介绍',
  `mendianzhanghao` varchar(200) DEFAULT NULL COMMENT '门店账号',
  `mendianmingcheng` varchar(200) DEFAULT NULL COMMENT '门店名称',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xiangmubianhao` (`xiangmubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1651637227949 DEFAULT CHARSET=utf8 COMMENT='服务项目';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fuwuxiangmu`
--

LOCK TABLES `fuwuxiangmu` WRITE;
/*!40000 ALTER TABLE `fuwuxiangmu` DISABLE KEYS */;
INSERT INTO `fuwuxiangmu` VALUES (41,'2022-04-12 07:54:21','1111111111','项目名称1','项目类型1',1,'upload/fuwuxiangmu_fengmian1.jpg','详细介绍1','门店账号1','门店名称1',1,1,'2022-04-12 15:54:21',1),(42,'2022-04-12 07:54:21','2222222222','项目名称2','项目类型2',2,'upload/fuwuxiangmu_fengmian2.jpg','详细介绍2','门店账号2','门店名称2',2,2,'2022-04-12 15:54:21',2),(43,'2022-04-12 07:54:21','3333333333','项目名称3','项目类型3',3,'upload/fuwuxiangmu_fengmian3.jpg','详细介绍3','门店账号3','门店名称3',3,3,'2022-04-12 15:54:21',3),(44,'2022-04-12 07:54:21','4444444444','项目名称4','项目类型4',4,'upload/fuwuxiangmu_fengmian4.jpg','详细介绍4','门店账号4','门店名称4',4,4,'2022-04-12 15:54:21',4),(45,'2022-04-12 07:54:21','5555555555','项目名称5','项目类型5',5,'upload/fuwuxiangmu_fengmian5.jpg','详细介绍5','门店账号5','门店名称5',5,5,'2022-04-12 15:54:21',5),(46,'2022-04-12 07:54:21','6666666666','项目名称6','项目类型6',6,'upload/fuwuxiangmu_fengmian6.jpg','详细介绍6','门店账号6','门店名称6',6,6,'2022-04-12 15:54:21',6),(1651637227948,'2022-05-04 04:07:07','1651637206473','第一香满园','项目类型3',22,'upload/1651637215947.jpg','<p>的给对方固定</p>','门店账号1','门店名称1',0,0,NULL,0);
/*!40000 ALTER TABLE `fuwuxiangmu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mendian`
--

DROP TABLE IF EXISTS `mendian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mendian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mendianzhanghao` varchar(200) NOT NULL COMMENT '门店账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `mendianmingcheng` varchar(200) NOT NULL COMMENT '门店名称',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dianputupian` varchar(200) DEFAULT NULL COMMENT '店铺图片',
  `dianpudizhi` varchar(200) DEFAULT NULL COMMENT '店铺地址',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mendianzhanghao` (`mendianzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='门店';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mendian`
--

LOCK TABLES `mendian` WRITE;
/*!40000 ALTER TABLE `mendian` DISABLE KEYS */;
INSERT INTO `mendian` VALUES (21,'2022-04-12 07:54:21','门店账号1','123456','门店名称1','负责人1','13823888881','upload/mendian_dianputupian1.jpg','店铺地址1',100),(22,'2022-04-12 07:54:21','门店账号2','123456','门店名称2','负责人2','13823888882','upload/mendian_dianputupian2.jpg','店铺地址2',100),(23,'2022-04-12 07:54:21','门店账号3','123456','门店名称3','负责人3','13823888883','upload/mendian_dianputupian3.jpg','店铺地址3',100),(24,'2022-04-12 07:54:21','门店账号4','123456','门店名称4','负责人4','13823888884','upload/mendian_dianputupian4.jpg','店铺地址4',100),(25,'2022-04-12 07:54:21','门店账号5','123456','门店名称5','负责人5','13823888885','upload/mendian_dianputupian5.jpg','店铺地址5',100),(26,'2022-04-12 07:54:21','门店账号6','123456','门店名称6','负责人6','13823888886','upload/mendian_dianputupian6.jpg','店铺地址6',100);
/*!40000 ALTER TABLE `mendian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  `logistics` longtext COMMENT '物流',
  `mendianzhanghao` varchar(200) DEFAULT NULL COMMENT '商户名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinfenlei`
--

DROP TABLE IF EXISTS `shangpinfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinfenlei` (`shangpinfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='商品分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinfenlei`
--

LOCK TABLES `shangpinfenlei` WRITE;
/*!40000 ALTER TABLE `shangpinfenlei` DISABLE KEYS */;
INSERT INTO `shangpinfenlei` VALUES (61,'2022-04-12 07:54:21','商品分类1'),(62,'2022-04-12 07:54:21','商品分类2'),(63,'2022-04-12 07:54:21','商品分类3'),(64,'2022-04-12 07:54:21','商品分类4'),(65,'2022-04-12 07:54:21','商品分类5'),(66,'2022-04-12 07:54:21','商品分类6');
/*!40000 ALTER TABLE `shangpinfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinxinxi`
--

DROP TABLE IF EXISTS `shangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shangjiariqi` date DEFAULT NULL COMMENT '上架日期',
  `shangpinjieshao` longtext COMMENT '商品介绍',
  `mendianzhanghao` varchar(200) DEFAULT NULL COMMENT '门店账号',
  `mendianmingcheng` varchar(200) DEFAULT NULL COMMENT '门店名称',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float DEFAULT NULL COMMENT '价格',
  `onelimittimes` int(11) DEFAULT '-1' COMMENT '单限',
  `alllimittimes` int(11) DEFAULT '-1' COMMENT '库存',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='商品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinxinxi`
--

LOCK TABLES `shangpinxinxi` WRITE;
/*!40000 ALTER TABLE `shangpinxinxi` DISABLE KEYS */;
INSERT INTO `shangpinxinxi` VALUES (71,'2022-04-12 07:54:21','1111111111','商品名称1','商品分类1','品牌1','规格1','upload/shangpinxinxi_tupian1.jpg','2022-04-12','商品介绍1','门店账号1','门店名称1',1,1,'2022-04-12 15:54:21',1,99.9,1,99),(72,'2022-04-12 07:54:21','2222222222','商品名称2','商品分类2','品牌2','规格2','upload/shangpinxinxi_tupian2.jpg','2022-04-12','商品介绍2','门店账号2','门店名称2',2,2,'2022-04-12 15:54:21',2,99.9,2,99),(73,'2022-04-12 07:54:21','3333333333','商品名称3','商品分类3','品牌3','规格3','upload/shangpinxinxi_tupian3.jpg','2022-04-12','商品介绍3','门店账号3','门店名称3',3,3,'2022-04-12 15:54:21',3,99.9,3,99),(74,'2022-04-12 07:54:21','4444444444','商品名称4','商品分类4','品牌4','规格4','upload/shangpinxinxi_tupian4.jpg','2022-04-12','商品介绍4','门店账号4','门店名称4',4,4,'2022-04-12 15:54:21',4,99.9,4,99),(75,'2022-04-12 07:54:21','5555555555','商品名称5','商品分类5','品牌5','规格5','upload/shangpinxinxi_tupian5.jpg','2022-04-12','商品介绍5','门店账号5','门店名称5',5,5,'2022-04-12 15:54:21',5,99.9,5,99),(76,'2022-04-12 07:54:21','6666666666','商品名称6','商品分类6','品牌6','规格6','upload/shangpinxinxi_tupian6.jpg','2022-04-12','商品介绍6','门店账号6','门店名称6',6,6,'2022-04-12 15:54:21',6,99.9,6,99);
/*!40000 ALTER TABLE `shangpinxinxi` ENABLE KEYS */;
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
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,11,'账号1','yonghu','用户','ilsytqmgpmpqgldj9ojf8lobmevkts6w','2022-04-12 07:57:48','2022-04-12 08:57:49'),(2,21,'门店账号1','mendian','门店','n2umbqelv91754lkkwzca4lbh0cknue7','2022-04-12 07:58:51','2022-05-04 05:06:44'),(3,1,'abo','users','管理员','ec9pjxg7rw18rumvo9ouwx5a2yn8yugl','2022-04-12 07:59:10','2022-05-04 05:06:09');
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-04-12 07:54:22');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiangmuleixing`
--

DROP TABLE IF EXISTS `xiangmuleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiangmuleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiangmuleixing` varchar(200) DEFAULT NULL COMMENT '项目类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xiangmuleixing` (`xiangmuleixing`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='项目类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiangmuleixing`
--

LOCK TABLES `xiangmuleixing` WRITE;
/*!40000 ALTER TABLE `xiangmuleixing` DISABLE KEYS */;
INSERT INTO `xiangmuleixing` VALUES (31,'2022-04-12 07:54:21','项目类型1'),(32,'2022-04-12 07:54:21','项目类型2'),(33,'2022-04-12 07:54:21','项目类型3'),(34,'2022-04-12 07:54:21','项目类型4'),(35,'2022-04-12 07:54:21','项目类型5'),(36,'2022-04-12 07:54:21','项目类型6');
/*!40000 ALTER TABLE `xiangmuleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiangmuyuyue`
--

DROP TABLE IF EXISTS `xiangmuyuyue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiangmuyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuyuebianhao` varchar(200) DEFAULT NULL COMMENT '预约编号',
  `xiangmumingcheng` varchar(200) DEFAULT NULL COMMENT '项目名称',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `jiage` float DEFAULT NULL COMMENT '价格',
  `yuyueshijian` datetime DEFAULT NULL COMMENT '预约时间',
  `yuyuebeizhu` longtext COMMENT '预约备注',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `mendianzhanghao` varchar(200) DEFAULT NULL COMMENT '门店账号',
  `mendianmingcheng` varchar(200) DEFAULT NULL COMMENT '门店名称',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuyuebianhao` (`yuyuebianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='项目预约';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiangmuyuyue`
--

LOCK TABLES `xiangmuyuyue` WRITE;
/*!40000 ALTER TABLE `xiangmuyuyue` DISABLE KEYS */;
INSERT INTO `xiangmuyuyue` VALUES (51,'2022-04-12 07:54:21','1111111111','项目名称1','upload/xiangmuyuyue_fengmian1.jpg',1,'2022-04-12 15:54:21','预约备注1','账号1','姓名1','手机1','门店账号1','门店名称1','是',''),(52,'2022-04-12 07:54:21','2222222222','项目名称2','upload/xiangmuyuyue_fengmian2.jpg',2,'2022-04-12 15:54:21','预约备注2','账号2','姓名2','手机2','门店账号2','门店名称2','是',''),(53,'2022-04-12 07:54:21','3333333333','项目名称3','upload/xiangmuyuyue_fengmian3.jpg',3,'2022-04-12 15:54:21','预约备注3','账号3','姓名3','手机3','门店账号3','门店名称3','是',''),(54,'2022-04-12 07:54:21','4444444444','项目名称4','upload/xiangmuyuyue_fengmian4.jpg',4,'2022-04-12 15:54:21','预约备注4','账号4','姓名4','手机4','门店账号4','门店名称4','是',''),(55,'2022-04-12 07:54:21','5555555555','项目名称5','upload/xiangmuyuyue_fengmian5.jpg',5,'2022-04-12 15:54:21','预约备注5','账号5','姓名5','手机5','门店账号5','门店名称5','是',''),(56,'2022-04-12 07:54:21','6666666666','项目名称6','upload/xiangmuyuyue_fengmian6.jpg',6,'2022-04-12 15:54:21','预约备注6','账号6','姓名6','手机6','门店账号6','门店名称6','是','');
/*!40000 ALTER TABLE `xiangmuyuyue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yingyee`
--

DROP TABLE IF EXISTS `yingyee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yingyee` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tongjibianhao` varchar(200) DEFAULT NULL COMMENT '统计编号',
  `jinhuojine` int(11) DEFAULT NULL COMMENT '进货金额',
  `shoumaijine` int(11) DEFAULT NULL COMMENT '售卖金额',
  `maolirun` int(11) DEFAULT NULL COMMENT '毛利润',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  `mendianzhanghao` varchar(200) DEFAULT NULL COMMENT '门店账号',
  `mendianmingcheng` varchar(200) DEFAULT NULL COMMENT '门店名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tongjibianhao` (`tongjibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='营业额';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yingyee`
--

LOCK TABLES `yingyee` WRITE;
/*!40000 ALTER TABLE `yingyee` DISABLE KEYS */;
INSERT INTO `yingyee` VALUES (81,'2022-04-12 07:54:21','1111111111',1,1,1,'2022-04-12','门店账号1','门店名称1'),(82,'2022-04-12 07:54:21','2222222222',2,2,2,'2022-04-12','门店账号2','门店名称2'),(83,'2022-04-12 07:54:21','3333333333',3,3,3,'2022-04-12','门店账号3','门店名称3'),(84,'2022-04-12 07:54:21','4444444444',4,4,4,'2022-04-12','门店账号4','门店名称4'),(85,'2022-04-12 07:54:21','5555555555',5,5,5,'2022-04-12','门店账号5','门店名称5'),(86,'2022-04-12 07:54:21','6666666666',6,6,6,'2022-04-12','门店账号6','门店名称6');
/*!40000 ALTER TABLE `yingyee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `mendianzhanghao` varchar(200) DEFAULT NULL COMMENT '门店账号',
  `mendianxingming` varchar(200) DEFAULT NULL COMMENT '门店姓名',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2022-04-12 07:54:21','账号1','123456','姓名1',1,'男','13823888881','upload/yonghu_zhaopian1.jpg','门店账号1','门店姓名1',100),(12,'2022-04-12 07:54:21','账号2','123456','姓名2',2,'男','13823888882','upload/yonghu_zhaopian2.jpg','门店账号2','门店姓名2',100),(13,'2022-04-12 07:54:21','账号3','123456','姓名3',3,'男','13823888883','upload/yonghu_zhaopian3.jpg','门店账号3','门店姓名3',100),(14,'2022-04-12 07:54:21','账号4','123456','姓名4',4,'男','13823888884','upload/yonghu_zhaopian4.jpg','门店账号4','门店姓名4',100),(15,'2022-04-12 07:54:21','账号5','123456','姓名5',5,'男','13823888885','upload/yonghu_zhaopian5.jpg','门店账号5','门店姓名5',100),(16,'2022-04-12 07:54:21','账号6','123456','姓名6',6,'男','13823888886','upload/yonghu_zhaopian6.jpg','门店账号6','门店姓名6',100);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-04 21:36:37
