-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: localhost    Database: myblog1
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add 文章列表',7,'add_article'),(26,'Can change 文章列表',7,'change_article'),(27,'Can delete 文章列表',7,'delete_article'),(28,'Can view 文章列表',7,'view_article'),(29,'Can add 轮播图',8,'add_banner'),(30,'Can change 轮播图',8,'change_banner'),(31,'Can delete 轮播图',8,'delete_banner'),(32,'Can view 轮播图',8,'view_banner'),(33,'Can add 文章分类',9,'add_category'),(34,'Can change 文章分类',9,'change_category'),(35,'Can delete 文章分类',9,'delete_category'),(36,'Can view 文章分类',9,'view_category'),(37,'Can add 评论',10,'add_comment'),(38,'Can change 评论',10,'change_comment'),(39,'Can delete 评论',10,'delete_comment'),(40,'Can view 评论',10,'view_comment'),(41,'Can add 友情链接',11,'add_link'),(42,'Can change 友情链接',11,'change_link'),(43,'Can delete 友情链接',11,'delete_link'),(44,'Can view 友情链接',11,'view_link'),(45,'Can add 文章标签',12,'add_tag'),(46,'Can change 文章标签',12,'change_tag'),(47,'Can delete 文章标签',12,'delete_tag'),(48,'Can view 文章标签',12,'view_tag'),(49,'Can add 推荐位',13,'add_tui'),(50,'Can change 推荐位',13,'change_tui'),(51,'Can delete 推荐位',13,'delete_tui'),(52,'Can view 推荐位',13,'view_tui'),(53,'Can add user',14,'add_user'),(54,'Can change user',14,'change_user'),(55,'Can delete user',14,'delete_user'),(56,'Can view user',14,'view_user'),(57,'Can add captcha store',15,'add_captchastore'),(58,'Can change captcha store',15,'change_captchastore'),(59,'Can delete captcha store',15,'delete_captchastore'),(60,'Can view captcha store',15,'view_captchastore');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$120000$Sn28BARy7bMv$41J18+oY2mcGNuR91dKciAusH5O6XXlrVRK1cZfCcWQ=','2019-05-16 20:19:10.246462',1,'limou','','','limou99@163.com',1,1,'2019-05-16 19:22:33.488840');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_article`
--

DROP TABLE IF EXISTS `blog_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `blog_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `excerpt` longtext NOT NULL,
  `img` varchar(100) DEFAULT NULL,
  `body` longtext NOT NULL,
  `views` int(10) unsigned NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `tui_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_article_category_id_7e38f15e_fk_blog_category_id` (`category_id`),
  KEY `blog_article_tui_id_d498cd9f_fk_blog_tui_id` (`tui_id`),
  KEY `blog_article_user_id_5beb0cc1_fk_auth_user_id` (`user_id`),
  CONSTRAINT `blog_article_category_id_7e38f15e_fk_blog_category_id` FOREIGN KEY (`category_id`) REFERENCES `blog_category` (`id`),
  CONSTRAINT `blog_article_tui_id_d498cd9f_fk_blog_tui_id` FOREIGN KEY (`tui_id`) REFERENCES `blog_tui` (`id`),
  CONSTRAINT `blog_article_user_id_5beb0cc1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_article`
--

LOCK TABLES `blog_article` WRITE;
/*!40000 ALTER TABLE `blog_article` DISABLE KEYS */;
INSERT INTO `blog_article` VALUES (1,'Django Rest Framework 云片网发送短信验证码','用户注册功能的实现中会大量的运用serializer。之前的是serializer初级的用法，现在开始，特别是表单的提交，就是serializer比较高级的一些用法。\r\n\r\n首先通过前端的注册页面看看我们需要提供哪些接口。一是发送短信的接口，二是表单提交的接口（包括验证、提交、跳转等）。','article_img/2019/05/16/_LSR0U7J4IGIR68RHJ3W.png','<h1 class=\"title-article\" style=\"box-sizing: inherit; outline: 0px; margin: 0px; padding: 0px; font-size: 24px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; overflow-wrap: break-word; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);\">Django Rest Framework 电商项目 7-7 云片网发送短信验证码</h1><p><br/></p><p><img src=\"/media/upimg/_LSR0U}7J4(IGIR68RHJ)3W_20190516202658_831.png\" title=\"\" alt=\"_LSR0U}7J4(IGIR68RHJ)3W.png\" width=\"759\" height=\"384\" style=\"width: 759px; height: 384px;\"/></p><p>用户注册功能的实现中会大量的运用serializer。之前的是serializer初级的用法，现在开始，特别是表单的提交，就是serializer比较高级的一些用法。</p><p><br/></p><p>首先通过前端的注册页面看看我们需要提供哪些接口。一是发送短信的接口，二是表单提交的接口（包括验证、提交、跳转等）。</p><p><br/></p><p>我们首先解决发送短信的接口，我们需要第三方服务——云片网（https://www.yunpian.com/）。</p><p><br/></p><p>大家先去云片网进行注册，然后点击“管理控制台”。可以看到，每个公司都可以有若干子账户，每个子账户都会有一个APIKEY，这在以后发送验证码的时候会用到。</p><p><br/></p><p>右侧的国内短信中有一栏“签名/模板报备”，这几乎是每个短信发送商都会要求我们做的两件事（后来经过测试，对于云片网来说，开发时模板不是必须的，但云片网的文档中是要求我们提交模板验证的，因为提交模板验证是需要有带有验证码的注册页面的，这是为了防止我们的网站被恶意刷注册短信；但签名是必须的，后面使用云片网提供的接口发送短信时，如果发送内容中的签名不一致，会报错）。</p><p><br/></p><p>我们首先要申请签名，申请之前需要先完善开发者信息，这都是需要审核的。我们把签名申请为你的姓名就好了，因为申请与企业名称相关的签名是需要有公司证明的，目前我们只是处在一个开发项目的过程，不必。</p><p><br/></p><p>申请完签名后，我们还需要新建模板。我们今后发送模板，必须是依照模板的格式，里面会给我们一些变量，例如：</p><p><br/></p><p>您的验证码是#code#。</p><p>新建模板也是需要审核的（如上面述，开发过程，这不是必须的）。</p><p><br/></p><p>完成签名和模板报备后，就可以开发短信的发送功能了。</p><p><br/></p><p>看它的API文档（https://www.yunpian.com/api2.0/guide.html），点击使用说明，再点击右侧的国内短信，查看国内短信API列表，点击对应的API名称可以看到详细用法。如果有其他需求，请自行查看使用方法。</p><p><br/></p><p>因为我们要实现的是短信验证码功能，所以我们要用到的是单条发送，点击进去，看看它的使用方法（https://www.yunpian.com/doc/zh_CN/domestic/single_send.html）。</p><p><br/></p><p>它告诉我们了它的请求URL，也就是它的接口；访问方式必须为POST；接口支持http和https两种，我们一般用https，因为它相对安全一些；还告诉了我们一些参数，我们只需要填写必填参数即可。</p><p><br/></p><p>下面我们编程实现它。</p><p><br/></p><p>在apps下新建一个package，取名：utils（实用工具、工具类），在utils之下新建一个python脚本文件，取名yunpian。编辑：</p><p><br/></p><p>import json&nbsp; # 用来解析response</p><p>import requests&nbsp; # requests的使用，可以参考官方文档，用来替代urllib</p><p>from MxShop.settings import APIKEY</p><p>&nbsp;</p><p>&nbsp;</p><p>class YunPian(object):</p><p>&nbsp;</p><p>&nbsp; &nbsp; def __init__(self, api_key):</p><p>&nbsp; &nbsp; &nbsp; &nbsp; self.api_key = api_key</p><p>&nbsp; &nbsp; &nbsp; &nbsp; self.single_send_url = &quot;https://sms.yunpian.com/v2/sms/single_send.json&quot;&nbsp; # 取名为单条发送，方便以后拓展</p><p>&nbsp;</p><p>&nbsp; &nbsp; def send_sms(self, code, mobile):</p><p>&nbsp; &nbsp; &nbsp; &nbsp; parmas = {</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &quot;apikey&quot;: self.api_key,</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &quot;mobile&quot;: mobile,</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; # text的格式必须是模板格式（如果有），并对变量code进行替换</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &quot;text&quot;: &quot;【你的签名】您的验证码是{code}。如非本人操作，请忽略本短信&quot;.format(code=code)</p><p>&nbsp; &nbsp; &nbsp; &nbsp; }</p><p>&nbsp;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; response = requests.post(self.single_send_url, data=parmas)&nbsp; # 返回response.text的实际上是字符串</p><p>&nbsp; &nbsp; &nbsp; &nbsp; re_dict = json.loads(response.text)&nbsp; # 所以需要解析response.text</p><p>&nbsp; &nbsp; &nbsp; &nbsp; return re_dict</p><p>&nbsp;</p><p>&nbsp;</p><p>if __name__ == &quot;__main__&quot;:&nbsp; # 用来测试发送功能，当DRF提供了相应的接口后，可以注释掉</p><p>&nbsp; &nbsp; yun_pian = YunPian(APIKEY)</p><p>&nbsp; &nbsp; yun_pian.send_sms(&quot;你的验证码&quot;, &quot;你的电话号码&quot;)&nbsp; # 因为是测试用，所以静态数据即可</p><p>&nbsp;</p><p>在settings.py中添加（便于今后在其他地方引入）：</p><p><br/></p><p># 云片网设置</p><p>APIKEY = &quot;你的云片网APIKEY&quot;</p><p>在send_sms中打断点调试一下，有可能发现报错说我们的ip是不能发送的。这是因为我们还要在云片网的系统设置中的ip白名单中将可以发送短信的主机的ip添加进去（测试的时候添本地ip，可以通过搜索本地ip查询到；上线的时候添服务器ip），如果你没有报这个错误，可能是你的限制ip的功能没有开启，建议开启功能、添加ip。添加完成之后，短信发送功能就完成了。</p><p><br/></p><p>下一步是用DRF实现发送短信的接口。</p><p>---------------------&nbsp;</p><p>作者：大梦想家豪哥&nbsp;</p><p>来源：CSDN&nbsp;</p><p>原文：https://blog.csdn.net/liujh_990807/article/details/86619002&nbsp;</p><p>版权声明：本文为博主原创文章，转载请附上博文链接！</p><p><br/></p>',3,'2019-05-16 20:28:21.826251','2019-05-16 21:30:21.864359',1,2,1),(2,'Django常用命令介绍，新手建议阅读','在DJango里django-admin.py和manage.py都是Django的命令工具集，用于处理系统管理相关操作，而manage.py是在创建Django工程时自动生成的，manage.py是对django-admin.py的简单包装，二者的作用基本一致。','article_img/2019/05/16/DPI9XTV0POD3V_76STI.png','<h1 class=\"article__title\" style=\"box-sizing: border-box; color: rgb(80, 80, 80); margin: 0px 0px 0.5em; font-family: Nunito, sans-serif; line-height: 1.35; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; white-space: normal; background-color: rgb(255, 255, 255);\">Django常用命令介绍，新手建议阅读</h1><p><br/></p><p>转自django中文网</p><p>原文地址：https://www.django.cn/article/show-26.html</p><p style=\"box-sizing: border-box; color: inherit; margin-top: 1em; margin-bottom: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; line-height: 1.5;\">在DJango里django-admin.py和manage.py都是Django的命令工具集，用于处理系统管理相关操作，而manage.py是在创建Django工程时自动生成的，manage.py是对django-admin.py的简单包装，二者的作用基本一致。</p><p style=\"box-sizing: border-box; color: inherit; margin-top: 1em; margin-bottom: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; line-height: 1.5;\">区别：</p><p style=\"box-sizing: border-box; color: inherit; margin-top: 1em; margin-bottom: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; line-height: 1.5;\">1、django-admin存放在Python的site-packages\\django\\bin 里，manage.py存放在项目工程文件夹里。</p><p style=\"box-sizing: border-box; color: inherit; margin-top: 1em; margin-bottom: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; line-height: 1.5;\">2、django-admin可以对不同的项目进行设置，而manege.py只能当前的工程有效。</p><p style=\"box-sizing: border-box; color: inherit; margin-top: 1em; margin-bottom: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; line-height: 1.5;\">下面我们以manage.py为例，列出一些常用的命令：</p><p style=\"box-sizing: border-box; color: inherit; margin-top: 1em; margin-bottom: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; line-height: 1.5;\">语法：</p><p style=\"box-sizing: border-box; color: inherit; margin-top: 1em; margin-bottom: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; line-height: 1.5;\">django-admin &lt;subcommand&gt; [options]</p><p style=\"box-sizing: border-box; color: inherit; margin-top: 1em; margin-bottom: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; line-height: 1.5;\">manage.py &lt;subcommand&gt; [options]</p><p style=\"box-sizing: border-box; color: inherit; margin-top: 1em; margin-bottom: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; line-height: 1.5;\">subcommand是子命令；options是可选的</p><pre class=\"brush:python;toolbar:false hljs css\" style=\"box-sizing: border-box; color: rgb(25, 25, 25); overflow: auto; font-family: inconsolata, monospace; font-size: 12px; padding: 0.5em 0.5em 0.5em 15px; margin-top: 20px; margin-bottom: 20px; line-height: 1.45; word-break: break-all; overflow-wrap: normal; background-color: rgb(250, 250, 250); border-width: 0px 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(174, 200, 218); border-image: initial; border-radius: 0px; vertical-align: baseline; position: relative; clear: left; letter-spacing: 0.3px; word-spacing: 1px;\">常用子命令：startproject:创建一个项目（*）startapp:创建一个app（*）runserver：运行开发服务器（*）shell：进入django&nbsp;shell（*）dbshell：进入django&nbsp;dbshellcheck：检查django项目完整性flush：清空数据库compilemessages：编译语言文件makemessages：创建语言文件makemigrations：生成数据库同步脚本（*）migrate：同步数据库（*）showmigrations：查看生成的数据库同步脚本（*）sqlflush：查看生成清空数据库的脚本（*）sqlmigrate：查看数据库同步的sql语句（*）dumpdata:导出数据loaddata:导入数据diffsettings:查看你的配置和django默认配置的不同之处manage.py特有的一些子命令：createsuperuser:创建超级管理员（*）changepassword:修改密码（*）clearsessions：清除session</pre><p style=\"box-sizing: border-box; color: inherit; margin-top: 1em; margin-bottom: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; line-height: 1.5;\"><span style=\"box-sizing: border-box; color: inherit; font-weight: 700; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;\">1、help</span></p><p style=\"box-sizing: border-box; color: inherit; margin-top: 1em; margin-bottom: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; line-height: 1.5;\">作用：获得帮助信息</p><p style=\"box-sizing: border-box; color: inherit; margin-top: 1em; margin-bottom: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; line-height: 1.5;\">语法：</p><pre class=\"brush:bash;toolbar:false hljs\" style=\"box-sizing: border-box; color: rgb(25, 25, 25); overflow: auto; font-family: inconsolata, monospace; font-size: 12px; padding: 0.5em 0.5em 0.5em 15px; margin-top: 20px; margin-bottom: 20px; line-height: 1.45; word-break: break-all; overflow-wrap: normal; background-color: rgb(250, 250, 250); border-width: 0px 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(174, 200, 218); border-image: initial; border-radius: 0px; vertical-align: baseline; position: relative; clear: left; letter-spacing: 0.3px; word-spacing: 1px;\">#显示帮助信息和可用命令python&nbsp;manege.py&nbsp;help#显示可用命令列表python&nbsp;manege.py&nbsp;help&nbsp;--commands#显示指定命令的详细文档python&nbsp;manage.py&nbsp;help&nbsp;&nbsp;#commands为需要指定显示的命令</pre><p style=\"box-sizing: border-box; color: inherit; margin-top: 1em; margin-bottom: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; line-height: 1.5;\"><span style=\"box-sizing: border-box; color: inherit; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-weight: bold;\">2、version</span></p><p style=\"box-sizing: border-box; color: inherit; margin-top: 1em; margin-bottom: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; line-height: 1.5;\">作用：获取到当前DJango的版本</p><p style=\"box-sizing: border-box; color: inherit; margin-top: 1em; margin-bottom: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; line-height: 1.5;\">语法：</p><pre class=\"brush:bash;toolbar:false hljs css\" style=\"box-sizing: border-box; color: rgb(25, 25, 25); overflow: auto; font-family: inconsolata, monospace; font-size: 12px; padding: 0.5em 0.5em 0.5em 15px; margin-top: 20px; margin-bottom: 20px; line-height: 1.45; word-break: break-all; overflow-wrap: normal; background-color: rgb(250, 250, 250); border-width: 0px 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(174, 200, 218); border-image: initial; border-radius: 0px; vertical-align: baseline; position: relative; clear: left; letter-spacing: 0.3px; word-spacing: 1px;\">python&nbsp;manage.py&nbsp;version</pre><p style=\"box-sizing: border-box; color: inherit; margin-top: 1em; margin-bottom: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; line-height: 1.5;\"><span style=\"box-sizing: border-box; color: inherit; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-weight: bold;\">3、check</span></p><p style=\"box-sizing: border-box; color: inherit; margin-top: 1em; margin-bottom: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; line-height: 1.5;\">作用：检查工程中是否存在错误（检查完整性）</p><p style=\"box-sizing: border-box; color: inherit; margin-top: 1em; margin-bottom: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; line-height: 1.5;\">语法：</p><pre class=\"brush:bash;toolbar:false hljs css\" style=\"box-sizing: border-box; color: rgb(25, 25, 25); overflow: auto; font-family: inconsolata, monospace; font-size: 12px; padding: 0.5em 0.5em 0.5em 15px; margin-top: 20px; margin-bottom: 20px; line-height: 1.45; word-break: break-all; overflow-wrap: normal; background-color: rgb(250, 250, 250); border-width: 0px 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(174, 200, 218); border-image: initial; border-radius: 0px; vertical-align: baseline; position: relative; clear: left; letter-spacing: 0.3px; word-spacing: 1px;\">python&nbsp;manage.py&nbsp;check&nbsp;[appname]&nbsp;&nbsp;&nbsp;#命令后面跟APP名称</pre><p style=\"box-sizing: border-box; color: inherit; margin-top: 1em; margin-bottom: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; line-height: 1.5;\"><span style=\"box-sizing: border-box; color: inherit; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-weight: bold;\">4、startproject</span></p><p style=\"box-sizing: border-box; color: inherit; margin-top: 1em; margin-bottom: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; line-height: 1.5;\">作用：创建Django工程</p><p style=\"box-sizing: border-box; color: inherit; margin-top: 1em; margin-bottom: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; line-height: 1.5;\">语法：</p><pre class=\"brush:bash;toolbar:false hljs apache\" style=\"box-sizing: border-box; color: rgb(25, 25, 25); overflow: auto; font-family: inconsolata, monospace; font-size: 12px; padding: 0.5em 0.5em 0.5em 15px; margin-top: 20px; margin-bottom: 20px; line-height: 1.45; word-break: break-all; overflow-wrap: normal; background-color: rgb(250, 250, 250); border-width: 0px 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(174, 200, 218); border-image: initial; border-radius: 0px; vertical-align: baseline; position: relative; clear: left; letter-spacing: 0.3px; word-spacing: 1px;\">django-admin&nbsp;startproject&nbsp;name&nbsp;[项目想要存放的路径]</pre><p style=\"box-sizing: border-box; color: inherit; margin-top: 1em; margin-bottom: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; line-height: 1.5;\"><span style=\"box-sizing: border-box; color: inherit; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-weight: bold;\">5、startapp</span></p><p style=\"box-sizing: border-box; color: inherit; margin-top: 1em; margin-bottom: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; line-height: 1.5;\">作用：创建Django应用程序</p><p style=\"box-sizing: border-box; color: inherit; margin-top: 1em; margin-bottom: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; line-height: 1.5;\">语法：</p><pre class=\"brush:bash;toolbar:false hljs css\" style=\"box-sizing: border-box; color: rgb(25, 25, 25); overflow: auto; font-family: inconsolata, monospace; font-size: 12px; padding: 0.5em 0.5em 0.5em 15px; margin-top: 20px; margin-bottom: 20px; line-height: 1.45; word-break: break-all; overflow-wrap: normal; background-color: rgb(250, 250, 250); border-width: 0px 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(174, 200, 218); border-image: initial; border-radius: 0px; vertical-align: baseline; position: relative; clear: left; letter-spacing: 0.3px; word-spacing: 1px;\">django-admin&nbsp;startapp&nbsp;name&nbsp;[应用想要存放的路径]python&nbsp;manage.py&nbsp;startapp&nbsp;name</pre><p style=\"box-sizing: border-box; color: inherit; margin-top: 1em; margin-bottom: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; line-height: 1.5;\"><span style=\"box-sizing: border-box; color: inherit; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-weight: bold;\">6、runserver</span></p><p style=\"box-sizing: border-box; color: inherit; margin-top: 1em; margin-bottom: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; line-height: 1.5;\">作用：在当前机器启动一个Web服务器，运行Django项目</p><p style=\"box-sizing: border-box; color: inherit; margin-top: 1em; margin-bottom: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; line-height: 1.5;\">语法：</p><pre class=\"brush:bash;toolbar:false hljs css\" style=\"box-sizing: border-box; color: rgb(25, 25, 25); overflow: auto; font-family: inconsolata, monospace; font-size: 12px; padding: 0.5em 0.5em 0.5em 15px; margin-top: 20px; margin-bottom: 20px; line-height: 1.45; word-break: break-all; overflow-wrap: normal; background-color: rgb(250, 250, 250); border-width: 0px 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(174, 200, 218); border-image: initial; border-radius: 0px; vertical-align: baseline; position: relative; clear: left; letter-spacing: 0.3px; word-spacing: 1px;\">#默认是8000端口python&nbsp;manage.py&nbsp;runserver#指定IP和端口python&nbsp;manage.py&nbsp;runserver&nbsp;127.0.0.1:8000#指定端口python&nbsp;manage.py&nbsp;runserver&nbsp;8000</pre><p style=\"box-sizing: border-box; color: inherit; margin-top: 1em; margin-bottom: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; line-height: 1.5;\"><span style=\"box-sizing: border-box; color: inherit; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-weight: bold;\">7、shell</span></p><p style=\"box-sizing: border-box; color: inherit; margin-top: 1em; margin-bottom: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; line-height: 1.5;\">作用：启动一个交互窗口</p><p style=\"box-sizing: border-box; color: inherit; margin-top: 1em; margin-bottom: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; line-height: 1.5;\">语法：</p><pre class=\"brush:bash;toolbar:false hljs apache\" style=\"box-sizing: border-box; color: rgb(25, 25, 25); overflow: auto; font-family: inconsolata, monospace; font-size: 12px; padding: 0.5em 0.5em 0.5em 15px; margin-top: 20px; margin-bottom: 20px; line-height: 1.45; word-break: break-all; overflow-wrap: normal; background-color: rgb(250, 250, 250); border-width: 0px 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(174, 200, 218); border-image: initial; border-radius: 0px; vertical-align: baseline; position: relative; clear: left; letter-spacing: 0.3px; word-spacing: 1px;\">python&nbsp;manage.py&nbsp;shell#如果想使用ipython、bpython交互模式的话需要先安装以上交互工具，安装命令：pip&nbsp;install&nbsp;ipython#启用命令python&nbsp;manage.py&nbsp;shell&nbsp;--i&nbsp;[ipyhton]</pre><p style=\"box-sizing: border-box; color: inherit; margin-top: 1em; margin-bottom: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; line-height: 1.5;\"><span style=\"box-sizing: border-box; color: inherit; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-weight: bold;\">8、migrations</span></p><p style=\"box-sizing: border-box; color: inherit; margin-top: 1em; margin-bottom: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; line-height: 1.5;\">Django通过migrations命令将Models中的任何修改写入到数库中，比如：新增加的模型或修改已有的字段等。</p><p style=\"box-sizing: border-box; color: inherit; margin-top: 1em; margin-bottom: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; line-height: 1.5;\"><span style=\"box-sizing: border-box; color: rgb(223, 64, 42); margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-weight: bold;\">makemigrations</span></p><p style=\"box-sizing: border-box; color: inherit; margin-top: 1em; margin-bottom: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; line-height: 1.5;\">作用：根据models的变化生成对应的Python代码，该代码用于更新数据库</p><p style=\"box-sizing: border-box; color: inherit; margin-top: 1em; margin-bottom: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; line-height: 1.5;\">语法：</p><pre class=\"brush:bash;toolbar:false hljs css\" style=\"box-sizing: border-box; color: rgb(25, 25, 25); overflow: auto; font-family: inconsolata, monospace; font-size: 12px; padding: 0.5em 0.5em 0.5em 15px; margin-top: 20px; margin-bottom: 20px; line-height: 1.45; word-break: break-all; overflow-wrap: normal; background-color: rgb(250, 250, 250); border-width: 0px 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(174, 200, 218); border-image: initial; border-radius: 0px; vertical-align: baseline; position: relative; clear: left; letter-spacing: 0.3px; word-spacing: 1px;\">python&nbsp;manage.py&nbsp;makemigrationspython&nbsp;manage.py&nbsp;makemigrations&nbsp;[appname]</pre><p style=\"box-sizing: border-box; color: inherit; margin-top: 1em; margin-bottom: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; line-height: 1.5;\"><span style=\"box-sizing: border-box; color: rgb(223, 64, 42); margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-weight: bold;\">migrate</span></p><p style=\"box-sizing: border-box; color: inherit; margin-top: 1em; margin-bottom: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; line-height: 1.5;\">作用：将model里的修改应用到数据库</p><p style=\"box-sizing: border-box; color: inherit; margin-top: 1em; margin-bottom: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; line-height: 1.5;\">语法：</p><pre class=\"brush:bash;toolbar:false hljs css\" style=\"box-sizing: border-box; color: rgb(25, 25, 25); overflow: auto; font-family: inconsolata, monospace; font-size: 12px; padding: 0.5em 0.5em 0.5em 15px; margin-top: 20px; margin-bottom: 20px; line-height: 1.45; word-break: break-all; overflow-wrap: normal; background-color: rgb(250, 250, 250); border-width: 0px 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(174, 200, 218); border-image: initial; border-radius: 0px; vertical-align: baseline; position: relative; clear: left; letter-spacing: 0.3px; word-spacing: 1px;\">python&nbsp;manage.py&nbsp;migrate&nbsp;#默认是所有的APP的修改应用到数据库python&nbsp;manage.py&nbsp;migrate&nbsp;[appname]&nbsp;#指定APP的修改应用到数据库python&nbsp;manage.py&nbsp;migrate&nbsp;[appname]&nbsp;[migrations_name]&nbsp;#将操作恢复到指定版本</pre><p style=\"box-sizing: border-box; color: inherit; margin-top: 1em; margin-bottom: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; line-height: 1.5;\"><span style=\"box-sizing: border-box; color: rgb(223, 64, 42); margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-weight: bold;\">注意：</span></p><p style=\"box-sizing: border-box; color: inherit; margin-top: 1em; margin-bottom: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; line-height: 1.5;\">如果执行migrate的命令同时给了应用程序的名字和migtrations名字，系统会把数据库恢复到之前指定的一个版本。</p><pre class=\"brush:bash;toolbar:false hljs nginx\" style=\"box-sizing: border-box; color: rgb(25, 25, 25); overflow: auto; font-family: inconsolata, monospace; font-size: 12px; padding: 0.5em 0.5em 0.5em 15px; margin-top: 20px; margin-bottom: 20px; line-height: 1.45; word-break: break-all; overflow-wrap: normal; background-color: rgb(250, 250, 250); border-width: 0px 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(174, 200, 218); border-image: initial; border-radius: 0px; vertical-align: baseline; position: relative; clear: left; letter-spacing: 0.3px; word-spacing: 1px;\">python&nbsp;manage.py&nbsp;migrate&nbsp;myblog&nbsp;0001_initial&nbsp;#指定blog应用恢复到0001_initial&nbsp;这个版本</pre><p style=\"box-sizing: border-box; color: inherit; margin-top: 1em; margin-bottom: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; line-height: 1.5;\">Django所有的migration信息都保存在django_migrations这个数据库表中，如下图所示：</p><p style=\"box-sizing: border-box; color: inherit; margin-top: 1em; margin-bottom: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; line-height: 1.5;\"><img src=\"https://www.django.cn/media/upimg/clipboard_20190417034155_566.png\" title=\"\" alt=\"clipboard.png\" style=\"box-sizing: border-box; color: inherit; border: 0px; vertical-align: baseline; margin: 0px auto; padding: 0px; max-width: 100%; height: auto; display: block;\"/></p><p style=\"box-sizing: border-box; color: inherit; margin-top: 1em; margin-bottom: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; line-height: 1.5;\">如果想撤销所有的数据库更改，我们可以使用 zero代替 上面的命令:</p><pre class=\"brush:bash;toolbar:false hljs css\" style=\"box-sizing: border-box; color: rgb(25, 25, 25); overflow: auto; font-family: inconsolata, monospace; font-size: 12px; padding: 0.5em 0.5em 0.5em 15px; margin-top: 20px; margin-bottom: 20px; line-height: 1.45; word-break: break-all; overflow-wrap: normal; background-color: rgb(250, 250, 250); border-width: 0px 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(174, 200, 218); border-image: initial; border-radius: 0px; vertical-align: baseline; position: relative; clear: left; letter-spacing: 0.3px; word-spacing: 1px;\">python&nbsp;manage.py&nbsp;migrate&nbsp;blog&nbsp;zero</pre><p style=\"box-sizing: border-box; color: inherit; margin-top: 1em; margin-bottom: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; line-height: 1.5;\"><span style=\"box-sizing: border-box; color: rgb(223, 64, 42); margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;\">高级用法：</span></p><p style=\"box-sizing: border-box; color: inherit; margin-top: 1em; margin-bottom: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; line-height: 1.5;\">如果数据库里，已经手动更新了数据库，我们只是想设置当前的migration状态，就使用下面的命令去实现，这个命令并不会真正的去更新数据库。</p><p style=\"box-sizing: border-box; color: inherit; margin-top: 1em; margin-bottom: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; line-height: 1.5;\">语法：</p><pre class=\"brush:bash;toolbar:false hljs css\" style=\"box-sizing: border-box; color: rgb(25, 25, 25); overflow: auto; font-family: inconsolata, monospace; font-size: 12px; padding: 0.5em 0.5em 0.5em 15px; margin-top: 20px; margin-bottom: 20px; line-height: 1.45; word-break: break-all; overflow-wrap: normal; background-color: rgb(250, 250, 250); border-width: 0px 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(174, 200, 218); border-image: initial; border-radius: 0px; vertical-align: baseline; position: relative; clear: left; letter-spacing: 0.3px; word-spacing: 1px;\">python&nbsp;manage.py&nbsp;migrate&nbsp;blog&nbsp;zero</pre><p style=\"box-sizing: border-box; color: inherit; margin-top: 1em; margin-bottom: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; line-height: 1.5;\"><span style=\"box-sizing: border-box; color: rgb(223, 64, 42); margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-weight: bold;\">sqlmigrate</span></p><p style=\"box-sizing: border-box; color: inherit; margin-top: 1em; margin-bottom: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; line-height: 1.5;\">作用：输出某一个migrate对应的SQL语句</p><p style=\"box-sizing: border-box; color: inherit; margin-top: 1em; margin-bottom: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; line-height: 1.5;\">语法：</p><pre class=\"brush:bash;toolbar:false hljs css\" style=\"box-sizing: border-box; color: rgb(25, 25, 25); overflow: auto; font-family: inconsolata, monospace; font-size: 12px; padding: 0.5em 0.5em 0.5em 15px; margin-top: 20px; margin-bottom: 20px; line-height: 1.45; word-break: break-all; overflow-wrap: normal; background-color: rgb(250, 250, 250); border-width: 0px 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(174, 200, 218); border-image: initial; border-radius: 0px; vertical-align: baseline; position: relative; clear: left; letter-spacing: 0.3px; word-spacing: 1px;\">python&nbsp;manage.py&nbsp;sqlmigrate&nbsp;blog&nbsp;0001_initial</pre><p style=\"box-sizing: border-box; color: inherit; margin-top: 1em; margin-bottom: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; line-height: 1.5;\"><span style=\"box-sizing: border-box; color: rgb(227, 108, 9); margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;\"><span style=\"box-sizing: border-box; color: inherit; font-weight: 700; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;\">showmigrations</span></span></p><p style=\"box-sizing: border-box; color: inherit; margin-top: 1em; margin-bottom: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; line-height: 1.5;\">作用：显示migrations记录</p><p style=\"box-sizing: border-box; color: inherit; margin-top: 1em; margin-bottom: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; line-height: 1.5;\">语法：</p><pre class=\"brush:bash;toolbar:false hljs css\" style=\"box-sizing: border-box; color: rgb(25, 25, 25); overflow: auto; font-family: inconsolata, monospace; font-size: 12px; padding: 0.5em 0.5em 0.5em 15px; margin-top: 20px; margin-bottom: 20px; line-height: 1.45; word-break: break-all; overflow-wrap: normal; background-color: rgb(250, 250, 250); border-width: 0px 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: initial; border-left-style: solid; border-top-color: initial; border-right-color: initial; border-bottom-color: initial; border-left-color: rgb(174, 200, 218); border-image: initial; border-radius: 0px; vertical-align: baseline; position: relative; clear: left; letter-spacing: 0.3px; word-spacing: 1px;\">python&nbsp;manage.py&nbsp;showmigrations</pre><p style=\"box-sizing: border-box; color: inherit; margin-top: 1em; margin-bottom: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; line-height: 1.5;\"><img src=\"https://www.django.cn/media/upimg/clipboard2_20190417034426_899.png\" title=\"\" alt=\"clipboard2.png\" style=\"box-sizing: border-box; color: inherit; border: 0px; vertical-align: baseline; margin: 0px auto; padding: 0px; max-width: 100%; height: auto; display: block;\"/></p><p style=\"box-sizing: border-box; color: inherit; margin-top: 1em; margin-bottom: 1.5em; padding: 0px; border: 0px; vertical-align: baseline; word-break: break-word; line-height: 1.5;\"><span style=\"box-sizing: border-box; color: inherit; font-weight: 700; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;\">留意：</span>记录前有<span style=\"box-sizing: border-box; color: rgb(223, 64, 42); margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;\">[X]</span>的表示已经部署到数据库里去了，没有的则显示<span style=\"box-sizing: border-box; color: rgb(223, 64, 42); margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;\">&nbsp;[ ]</span></p><p><br/></p>',3,'2019-05-16 20:33:43.481166','2019-05-16 20:57:47.123190',1,2,1),(3,'谷歌失败案例：那些年在微服务上踩的坑','Ben Sigelman 是 LightStep 的首席执行官兼联合创始人，他是 Dapper 的共同创始人（Google 的分布式跟踪工具，帮助开发人员理解他们的大型分布式系统），以及开源 OpenTracing API 标准的共同创建者（ 一个 CNCF 内的项目）。在 2018 年 12 月 QCon 大会上 Ben 向我们分享了谷歌在微服务构建路上遇到的经验教训，本文是 Ben 的演讲主要','article_img/2019/05/16/7GKUWH61QHX9DQZZM.png','<h1 style=\"box-sizing: border-box;font-size: 28px;font-family: Arial, 微软雅黑, &#39;Microsoft yahei&#39;, &#39;Hiragino Sans GB&#39;, &#39;冬青黑体简体中文 w3&#39;, &#39;Microsoft Yahei&#39;, &#39;Hiragino Sans GB&#39;, &#39;冬青黑体简体中文 w3&#39;, STXihei, 华文细黑, SimSun, 宋体, Heiti, 黑体, sans-serif;font-weight: 500;line-height: 1.5;color: rgb(51, 51, 51);bottom: 22px;position: inherit;overflow-wrap: break-word;white-space: normal;background-color: rgb(255, 255, 255)\">谷歌失败案例：那些年在微服务上踩的坑</h1><p><img src=\"https://img.huxiucdn.com/article/cover/201905/16/181722079347.jpg?imageView2/1/w/710/h/400/|imageMogr2/strip/interlace/1/quality/85/format/jpg\" alt=\"谷歌失败案例：那些年在微服务上踩的坑\" style=\"box-sizing: border-box;border: 0px;vertical-align: middle;width: 710px;max-width: 100%;height: 400px;object-fit: cover\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><span label=\"备注\" style=\"box-sizing: border-box;color: rgb(153, 153, 153);line-height: 30px\">本文来自微信公众号：</span><a href=\"https://mp.weixin.qq.com/s?__biz=MjM5MDE0Mjc4MA==&mid=2651016151&idx=2&sn=caa40d813b176a8325d61ca0c1040d19&chksm=bdbeb3848ac93a9224ed992f0e11e4a75626b7107d796c17a4f71335d7d735279ff6d6461453&mpshare=1&scene=1&srcid=0516h1g0yscgZOUv3sld41pu&key=a275743a4180eb546b59b95cd0bfc9bc8b419ab7c5982f31a565f848e8a1e4400efc6ddb9a5e18db883e7d766ab38b3e1d4a4167689c33c7d4436a3d3d88bf35f85bf67d97fdb86d8f737456b219f6a8&ascene=1&uin=MjI5OTkzMzI4Mw%3D%3D&devicetype=Windows+10&version=62060739&lang=zh_CN&pass_ticket=etDb82qTneJAG%2FDUDfJ5VjYzQFue3Sa71CQmzg1PX4ELG8stT2YNC0kgXPEgbIQq\" target=\"_blank\" style=\"box-sizing: border-box;background-color: transparent;color: rgb(51, 51, 51);cursor: pointer;border-bottom: 1px solid rgb(51, 51, 51);padding-bottom: 2px\"><span style=\"box-sizing: border-box;color: rgb(153, 153, 153);line-height: 30px\">InfoQ（ID：infoqchina）</span></a><span style=\"box-sizing: border-box;color: rgb(153, 153, 153);line-height: 30px\">，作者：Ben Sigelman，译者：禚娴静，头图来源：东方IC<br style=\"box-sizing: border-box\"/></span></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">&nbsp;Ben Sigelman 是 LightStep 的首席执行官兼联合创始人，他是 Dapper 的共同创始人<span label=\"备注\" style=\"box-sizing: border-box;color: rgb(153, 153, 153);line-height: 30px\">（Google 的分布式跟踪工具，帮助开发人员理解他们的大型分布式系统）</span>，以及开源 OpenTracing API 标准的共同创建者<span label=\"备注\" style=\"box-sizing: border-box;color: rgb(153, 153, 153);line-height: 30px\">（ 一个 CNCF 内的项目）</span>。在 2018 年 12 月 QCon 大会上 Ben 向我们分享了谷歌在微服务构建路上遇到的经验教训，本文是 Ben 的演讲主要内容的译稿。</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">大家好，今天和在座的各位分享一些失败的经验教训。聊一聊这一类的话题要比那些成功案例更有意思。行业在进步，我们可以从过去的错误中吸取经验，并主动在未来的计划中避免，这一点很令人鼓舞。</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p label=\"大标题\" style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px;font-size: 20px;font-weight: 700;color: rgb(164, 29, 29)\">背景信息</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">在开始之前，先介绍一下我在谷歌的经历。2003 年大学毕业后我直接加入了谷歌，在这之前我是一个音乐营地的营地顾问，营地顾问之前我在一家冰激凌店工作。我还记得在谷歌的第一天，第一个项目的技术负责人是 Andrew Fights，他现在是类似谷歌杰出的工程师的角色，我记得当时告诉他，我得去找人聊一聊因为实在不知道我在做什么，今天想起来还是很有趣的事情。在谷歌里我像海绵一样快速的吸收技术和其他的信息。今天我在这里谈论的一些事情其实要早于我在谷歌的时间，大约 2000 年和 2001 年左右。让我们从微服务，即谷歌的微服务版本开始讲起。</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">当时，谷歌的业务仍然押注在 GSA<span label=\"备注\" style=\"box-sizing: border-box;color: rgb(153, 153, 153);line-height: 30px\">（谷歌搜索服务器）</span>产品，其实最终 GSA 也并没有像想象中的那么顺利。当然了，其它事情也是这样，毕竟不能将一个虚拟的垄断产品与像广告这样数十亿美元的巨额业务相对比。不过，谷歌最开始是以搜索起家的，并专注在解决这一类的技术问题。</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px;text-align: center\"><img src=\"https://img.huxiucdn.com/article/content/201905/16/175944650183.jpg?imageView2/2/w/1000/format/jpg/interlace/1/q/85\" data-w=\"1080\" data-h=\"606\" style=\"box-sizing: border-box;border: 0px;vertical-align: middle;width: auto;max-width: 100%\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">&nbsp; &nbsp; &nbsp;</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">接下来要讨论的很多内容的原始驱动力来自于这张幻灯片。在经济危机之前，很多企业都将他们的基础设施构建在 Sun Microsystems 的硬件之上，并将 Solaris 作为操作系统。如果不考虑成本的话，这一套解决方案比现有的其它东西都要好，很多人买了很多这种 Sun box 也是基于这样的原因。但 Sun box 真的很贵，尤其是一个拥有庞大数据中心的企业，整个数据中心需要填满这种机箱以支撑业务的发展，成本就会影响到其业务渠道和活下去的底线。</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">谷歌当时就处在这样一个状况。当时的人会很自然的说：“Linux 虽然不够完美，不过功能也够用，它的硬件又很便宜，所以平衡下来我们可以选择 Linux 作为替代”。一定程度上，我也认同这些过往的事情是真实的，当时的人们成本意识很强，所以他们会不遗余力的去解决一系列 RAM、芯片等 Linux 出现的一切故障，以降低成本。而这就带来了一个结果 - 即 Linux 真的不可靠，特别是使用垃圾站硬件的时候，且问题很严重。我认为，谷歌从 Compaq DEC 并购中受益匪浅，这也是导致 90 年代一些真正令人难以置信的研究实验室死亡的原因。许多人比如 Jeff Dean 和 Sanjay Kumar 都来自那个世界，他们现在几乎都是质量工程师。当时的他们对如何在那些难以令人置信的不可靠硬件之上构建软件这个问题产生了强大的兴趣，后面发生的事情也是很多接下来要分享的内容。</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px;text-align: center\"><img src=\"https://img.huxiucdn.com/article/content/201905/16/175944276414.jpg?imageView2/2/w/1000/format/jpg/interlace/1/q/85\" data-w=\"1080\" data-h=\"605\" style=\"box-sizing: border-box;border: 0px;vertical-align: middle;width: auto;max-width: 100%\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">&nbsp; &nbsp; &nbsp;</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">大家都知道，这个问题在 2001 年是没有人解决过的问题，也是他们当下所处的情况。“让我们写一些很酷的软件，看看 Github 上有什么”。</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px;text-align: center\"><img src=\"https://img.huxiucdn.com/article/content/201905/16/175944501831.jpg?imageView2/2/w/1000/format/jpg/interlace/1/q/85\" data-w=\"1080\" data-h=\"603\" style=\"box-sizing: border-box;border: 0px;vertical-align: middle;width: auto;max-width: 100%\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">&nbsp; &nbsp; &nbsp;</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">然而在 2001 年并没有什么可以替代的方案，所以必须自己做。另一个问题是非常古怪的扩展要求。他们试图做一些当时非常大胆的事情，即索引每个网页的每个字。一些人将每个网页的每个单词收录并编入索引，其他人只是给它建立索引，然后丢弃那些限制竞争对手能力的原始数据。这是一项艰巨的任务，需要用到当时根本不存在的计算机软件。</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">因此，由于不可靠的 Linux 盒子，该软件必须横向扩展，并且必须在堆栈的任何组件中容纳频繁的例行故障。之前有一篇很棒的文章提出了“机器是牛而不是宠物”。我认为在这件事情上谷歌做对了。这些机器没有来自“星际迷航”的酷炫名字，它们只是 AB 1,2,5,7 类似的东西，那也是机器名。系统对它没有太多的依赖，它死了或者继续运行都不会影响其它部分。这个问题让人们开始思考如何建立更具弹性的系统。</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">以上是我如何描述事物的方式。在谷歌很多人都有博士学位。记得面试时，我还没有博士学位。而且，我只跟一个没有博士学位的人谈过，面试结束时，他说，“别担心，现在开始雇用没有博士学位的人了”，在那里有很多人比我更聪明，并且真的想将他们的知识应用到 CS 系统研究中，将这种类型的经验和知识应用于现实问题是一件很有趣的事情。</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px;text-align: center\"><img src=\"https://img.huxiucdn.com/article/content/201905/16/175944472774.jpg?imageView2/2/w/1000/format/jpg/interlace/1/q/85\" data-w=\"1080\" data-h=\"605\" style=\"box-sizing: border-box;border: 0px;vertical-align: middle;width: auto;max-width: 100%\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">&nbsp; &nbsp; &nbsp;</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">在谷歌有很多自下而上的决策，我的第一位经理在我加入时有 120 位直接汇报人的这一事实也说明了这一点，决策的制定是分散且唯一，那里是一个有抱负的文化氛围，也是一个非常以任务为导向的组织，既有基础设施，还有公司层面，特别是在那个时候，它是一个非常纯粹的理想主义组织。具有讽刺意味的是，现在看到新闻时感觉事情发生了很大的变化，至少就公众形象而言，当然重要的是要记住时间，而且我承认也许有点过分自信。人们可能觉得他们有能力做任何事情，愿意尝试新的大的挑战，并假设确实可以实现，这很酷有很高的风险，但也很有趣。</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p label=\"大标题\" style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px;font-size: 20px;font-weight: 700;color: rgb(164, 29, 29)\">那些发生的事情</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">那么，这样的工程要求和文化氛围实际导致的结果是什么呢？</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px;text-align: center\"><img src=\"https://img.huxiucdn.com/article/content/201905/16/175944511175.jpg?imageView2/2/w/1000/format/jpg/interlace/1/q/85\" data-w=\"1080\" data-h=\"607\" style=\"box-sizing: border-box;border: 0px;vertical-align: middle;width: auto;max-width: 100%\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">这是一张寒武纪大爆发的图，寒武纪大爆发是进化史上的一个时期，生物多样性迅速，是多种因素共同作用的结果。我今天早上读了维基百科，以确保我引用的事实是正确的。它与氧气的增加有关，钙的增加使得这些生物能够制造它们的壳。那时的许多事情都发生在大致相同的时间，在 2000 万年间，生物多样性的增长非常迅速。</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px;text-align: center\"><img src=\"https://img.huxiucdn.com/article/content/201905/16/175944950303.jpg?imageView2/2/w/1000/format/jpg/interlace/1/q/85\" data-w=\"1080\" data-h=\"611\" style=\"box-sizing: border-box;border: 0px;vertical-align: middle;width: auto;max-width: 100%\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">&nbsp; &nbsp; &nbsp;</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">在谷歌也有类似的东西，业务需要构建一个非常大的架构，这个架构需要围绕软件和认为他们可以尝试一些新事物的文化背景而构造。这就导致了在谷歌类似寒武纪大爆发一样的很多基础设施项目的爆发，许多项目现在已经众所周知，如 GFS-Google 被广泛使用的文件系统， BigTable 是 Cassandra 之前的产品，著名的 MapReduce、Borg 是类似于 Kubernetes-ish 的项目。有人可能会因为我这样的观点生气，但它应该很接近真实的情况，也还有一些没有公开但令我印象深刻的项目。</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">其实不仅这些重要的项目众所周知，他们撰写的论文也使得这些案例在 Google 之外传播开来。这些项目与 Hadoop 项目之间存在一对一的对应关系，并从开源社区推广。但这带来了一个问题，他们引领谷歌的文化走向崇拜这些项目，人们会认为在一些与大型基础设施结构相似的项目上工作真的很酷。这份清单上的所有内容当然都是必要的，Google 也从中受益匪浅。然而谷歌内部的这些货物崇拜导致人们试图模仿这些系统的设计而不去理解为什么选择这些设计。</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px;text-align: center\"><img src=\"https://img.huxiucdn.com/article/content/201905/16/175944091096.jpg?imageView2/2/w/1000/format/jpg/interlace/1/q/85\" data-w=\"1080\" data-h=\"602\" style=\"box-sizing: border-box;border: 0px;vertical-align: middle;width: auto;max-width: 100%\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">&nbsp; &nbsp; &nbsp;</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">这些设计在很多方面看起来很像今天的微服务。这就是为什么我们不把它称为微服务，在结构上它们看起来很像微服务。起初想要创造一种可以水平扩展的东西，想要分解像 RPC 服务发现这样的用户级基础设施，但现在“服务网格”中的内容已被考虑到这些巨大的客户端库中，这些库在今天的谷歌被广泛使用，被称为谷歌 3。在谷歌 3 构建一个 Hello World 的二进制文件，它需要消耗 140 兆字节的二进制文件，且只是为了链接这个用户级别的内核。谷歌 3 为了完成所有这些工作而将其考虑在内，后来也转向了一些看起来有点像 CI、CD 的东西。它开始感觉很像微服务了，但是这样做的决定是出于计算机科学的需求，我认为这是今天大多数组织构建微服务的一个有趣的理由。</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p label=\"大标题\" style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px;font-size: 20px;font-weight: 700;color: rgb(164, 29, 29)\">经验教训</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p label=\"小标题\" style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px;font-size: 18px;font-weight: 700;color: rgb(164, 29, 29)\">第一条：开始之前需要明确构建微服务的原因</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px;text-align: center\"><img src=\"https://img.huxiucdn.com/article/content/201905/16/175944541486.jpg?imageView2/2/w/1000/format/jpg/interlace/1/q/85\" data-w=\"1080\" data-h=\"608\" style=\"box-sizing: border-box;border: 0px;vertical-align: middle;width: auto;max-width: 100%\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">我认为构建微服务的唯一充分理由是组织结构，并且这也应该是大多数组织构建微服务的唯一原因。然而，这并不是谷歌构建微服务的原因。谷歌构建微服务是为了计算机科学，在这里，我不会去争辩从这个角度构建微服务其实也没有什么好处，当然肯定是有很多痛点驱动。</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">开始构建微服务之后，如果简单的认为它一定会很顺利，也没有事先调研所有可能的失败情况，那么一定不会顺利，而且实际上也可能会带来很多令人遗憾的结果。我和很多企业讨论过这个问题，这些企业也因为迁移的过程实在太痛苦了而放弃了向微服务的迁移。所以，一定要事先了解构建微服务的动因。就像谷歌里有很多人效仿大型的基础设施项目一样，有时我认为他们在构建一些并不必须的架构。理智的投资方式应该是遵循以下原则：“如果你不需要就不要去做，否则只会会让事情变得更困难”。</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">这样做的主要原因是最大限度地减少团队之间的人员沟通成本，一个超过 10 个或 12 个人的团队无法在一个工程项目上成功协作，它与人员沟通结构和工作授权有很大关系。因此，将项目团队映射到微服务可以减少人与人之间的沟通开销，从而提高开发速度。这是一个选择微服务的合理原因，但这也并不是我们在谷歌构建微服务的原因。</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px;text-align: center\"><img src=\"https://img.huxiucdn.com/article/content/201905/16/175944290560.jpg?imageView2/2/w/1000/format/jpg/interlace/1/q/85\" data-w=\"1080\" data-h=\"606\" style=\"box-sizing: border-box;border: 0px;vertical-align: middle;width: auto;max-width: 100%\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">&nbsp; &nbsp; &nbsp;</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">其实谷歌的微服务不是预先设计的结果，只是一件意外产物。我听到过很多人分享他们采用微服务的原因，对我而言他们从根本上还是技术驱动。我并不是说这些是错的。但我认为，如果这是你选择微服务的原因，那么至少你应该慎重的考虑并确认微服务是当下唯一的技术选择，没有其它的替代办法。</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px;text-align: center\"><img src=\"https://img.huxiucdn.com/article/content/201905/16/175944285372.jpg?imageView2/2/w/1000/format/jpg/interlace/1/q/85\" data-w=\"1080\" data-h=\"607\" style=\"box-sizing: border-box;border: 0px;vertical-align: middle;width: auto;max-width: 100%\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">&nbsp; &nbsp; &nbsp;</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">我经常从管理层那里听到很多实施微服务后带来的痛苦。我也构建过很多使所有 Google 受益的监控系统，也会不可避免地讨论我们的客户——Google 内部的项目，其中一些是搜索和广告等内容，一些是在 Google 云端硬盘管理控制台中很少听说过的功能，它可能是为谷歌云端硬盘服务的一个非常重要的项目，但吞吐量并不高，有着一套与搜索和广告都不同的要求。而且，来自搜索和广告的经验教训只对大规模的服务有意义。就像 Jeff Dean 所说的一句话，一个支撑超过三四个数量级以上规模的系统是无法设计出来的。基于此，我认为在系统的能力集和功能集，以及系统规模之间存在一个自然的取舍。</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">可以用一个例子来理解它：如果我们构建了一个具备大规模扩展能力的系统，那么由于这样一种自然的规律，在某些角度就必须承认它的功能特性可能很差。我们在谷歌构建的系统具备超级超级的可扩展能力，现在谷歌的公开数据是每秒 20 亿次 RPC 调用，这比我想象的实际需要的要多得多。如果要通过扩展来实现这种请求量，那么必将牺牲很多功能，而这也是在谷歌发生的事情。</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">Dapper 通过积极的采样分析解决了这个问题，但坦白说，也给低吞吐量的系统带来了糟糕的体验。Kubernetes 项目大概不会真正适用于 Google 的现状。当触及实质问题的时候，我们会发现 Borg<span label=\"备注\" style=\"box-sizing: border-box;color: rgb(153, 153, 153);line-height: 30px\">（谷歌内部的大型集群管理项目）</span>从很多角度都可以说是一个非常不同的系统。这些取舍在很多地方都会发生，但对于应用程序员们的结果是，他们有大量的需求用来标准化微服务的开发工作，而所参考的微服务本质上却来自搜索与广告领域，小型服务的程序员开发体验因此会变得非常糟糕。</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">在谷歌，要想将一个服务投放到生产环境是一件很麻烦的事情，因为所有的需求都必须支持搜索和广告的水平扩展，即使一个很小的项目也要强制执行。我还记得，我以 20% Project 的方式完成了谷歌天气项目，当你搜索旧金山的天气，谷歌天气就会出现。我一周内完成了原型开发，接下来的几个星期内完成了核心代码的生产版本，但总共花了六个月的时间 。实际上也并不是六个月就把它发布了，因为我还要完成很多上线必须要做的任务清单任务。</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">如果一个微服务专注于解决计算机科学研究的问题而非速度，那么就会发生这种情况。我认为，开始之前应该明白将要完成的事情，并确保可以专注于速度，保持合理且适合当下实际构建的服务类型的任务清单。因为促进高吞吐量不同于高工程速度；也不需要考虑低延迟；而低延迟非常重要，但是在吞吐量和工程速度之间需要取舍，反映在技术决策则体现在是否应该使用 JSON 进行通信，还是某些非常严格的二进制协议，亦或考虑监控的可观察性方面。这些事情会让你的进度慢下来，而大多数的谷歌项目并没有像搜索和广告一样的规模，所以就会非常的痛苦。</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p label=\"小标题\" style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px;font-size: 18px;font-weight: 700;color: rgb(164, 29, 29)\">第二条：无服务器服务仍然运行在服务器上</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px;text-align: center\"><img src=\"https://img.huxiucdn.com/article/content/201905/16/175944162697.jpg?imageView2/2/w/1000/format/jpg/interlace/1/q/85\" data-w=\"1080\" data-h=\"605\" style=\"box-sizing: border-box;border: 0px;vertical-align: middle;width: auto;max-width: 100%\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">&nbsp; &nbsp; &nbsp;</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">在谷歌我们也没有称它为无服务器。上面图中是一个测试，”火腿三明治、费德勒、怪物卡车、富士山和亚马逊的 Lambda“，这些其实都是无服务器的，它们只是一些没有任何意义的术语，所以我非常讨厌无服务器这个词。就像 NoSQL 一样，我们不应该将这其中一些小事物的反面词语作为营销术的术语。这些词语没有任何意义，但是这就是我们生活的世界。我将继续称之为 FaaS——功能即服务，这个词至少有意义。</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px;text-align: center\"><img src=\"https://img.huxiucdn.com/article/content/201905/16/175944095571.jpg?imageView2/2/w/1000/format/jpg/interlace/1/q/85\" data-w=\"1080\" data-h=\"605\" style=\"box-sizing: border-box;border: 0px;vertical-align: middle;width: auto;max-width: 100%\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">&nbsp; &nbsp; &nbsp;</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">这张图显示了每一个工程师都需要知道的一些数字 - 系统运行中不同活动的延迟时间列表。从上向下的第五个是读取主要内存数据的延迟时间，可以理解为如果有一个缓存未命中，到达主内存需要大约 100 纳秒。如果要在一个数据中心内完成一个 RPC 调用，那时间就远远不止于此。</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px;text-align: center\"><img src=\"https://img.huxiucdn.com/article/content/201905/16/175944307922.jpg?imageView2/2/w/1000/format/jpg/interlace/1/q/85\" data-w=\"1080\" data-h=\"605\" style=\"box-sizing: border-box;border: 0px;vertical-align: middle;width: auto;max-width: 100%\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">&nbsp; &nbsp; &nbsp;</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">这是另一张同样活动的数字，主内存数据大约是 100 纳秒~十分之一微秒，速度很快。即使在同一数据中心内往返，仍然不到一毫秒。所以，当把它与人的速度类比的时候，它的速度感觉有点快，但如果你把它们放在一起，就会发现真的非常不同。而且我认为有一种趋势，将事情分解成越来越小的部分会变得非常有趣，以至于我们会忘记了其实两个进程间通过网络通信的成本非常高。我也确实看到很多人在这个方向上走的太远，再次强调一下，这还是痴迷于单一目的服务的理念，也是盲目蛮干的失败模式。 我宁愿看到围绕工程组织中的功能单元构建服务，并考虑一定的分区，而不是将事情细分为尽可能小的部分。</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">我有些担心无服务器运动或 FaaS 运动。有时你可以摆脱完全令人尴尬的并行，但在其他情况下缓存真的很有帮助。如果你正通过网络进行缓存，Mem Cache 有时是合适的，但是，在使用之前要确保完成背后的那些工作，包括如何支撑串行调用的次数，它是否会影响最终用户的延迟，当前的系统状况。</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">所以，我认为这是微服务的另一种失败模式，而现在无服务器的市场很大，所以外部市场实际发生的事情远多于我在 Google 内部所看到的。如果我们想消除对系统运行的担心，那么 Etsy 文件及类似的东西都可以解决问题。但是，如果我们将功能作为一项服务专门讨论，请注意一旦卖出概不退换，所以请确保那些功能真的是适合你的系统需求。</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p label=\"小标题\" style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px;font-size: 18px;font-weight: 700;color: rgb(164, 29, 29)\">第三条：独立并不是绝对的</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">我们之前谈到过采用微服务的根本原因是团队沟通成本和独立的思考等。它开始让我觉得有点像嬉皮士。就像每个人一样...... 每个团队都是一个独立的决策单位。他们会嬉闹，需要做的只是决定 API，发送请求然后响应。在微服务架构下，每个团队可以做他们想做的任何事，它是平等和美丽的。</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">这些实际上是来自我之前对话的一家公司，他们不得不将已经完成的微服务回滚。在为单个服务写代码的时候开发工作还是很顺利的，但在部署的时候问题就来了，交叉出现了一系列的跨服务横切关注点，尤其在生产环境中。那些显而易见的关注点包括安全性、监控、服务发现、身份验证等。这些都是跨功能的关注点。这时候会面临两个问题，第一个问题，每一个团队都必须承担运维压力，而每一个团队的规模相对较小，所以必须要付出额外的成本。第二，其中一些事情是全局的问题，特别像可观察性，需要从系统的全局进行设计，而这样的事情如果每个团队自己做决定，将会失去统一有效的机制。</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">Jessica 也谈到了这一点。听起来 Airbnb 正在以正确的方式接近这个方向，但这是一个重大问题。我认为，当人们追求微服务的独立性时，他们应该考虑哪些维度实际上是独立的，哪些维度应该委托给某类平台团队。我今天早上和 O&#39;Reilly 的一个人谈论了可能对微服务领域有帮助的书籍，其中我认为看一本关于在微服务项目和人员管理方面的书会很有用，可以有助找出应该独立的和不应该独立的那些因素。</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px;text-align: center\"><img src=\"https://img.huxiucdn.com/article/content/201905/16/175944659730.jpg?imageView2/2/w/1000/format/jpg/interlace/1/q/85\" data-w=\"1080\" data-h=\"600\" style=\"box-sizing: border-box;border: 0px;vertical-align: middle;width: auto;max-width: 100%\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">&nbsp; &nbsp; &nbsp;</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">在这个问题上，我认为蚂蚁做对了。蚂蚁，无论性别身份如何，都是独立的。它们独立完成自己的工作，但是会坚定遵循蚁群的行为规则。有时蚂蚁们可能很痛苦，但是蚁群这样做的目的为了获取更大的利益。尽管这对单只蚂蚁来说可能是令人沮丧的，但这就是蚁群可以活下去的工作方式。就如有时候使用一个简短前缀的语言菜单和技术令人很沮丧，但是如果你的组织有一个支持微服务的短平台列表，这大概是最好的选择。</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">在这个方面我认为谷歌做的对，谷歌对事物的分解有时候近似疯狂，在某种程度上，我建议尽可能将事情从你的服务中独立出来。我喜欢蚂蚁，图中显示了它们的服务发现，如果蚂蚁们通过随机散步找到了食物，它们会返回巢穴并沿路留下信息素，随后其他蚂蚁闻到并跟随它找到食物源。蚂蚁们非常聪明。在大学，我们有一个有趣的编程作业来模拟蚂蚁的这种行为——一种非常优雅且效果很好的集体行为。当有威胁时，蚂蚁们会进行一系列的智能安全措施并聚集幼虫，它们会把所有的熔岩都带走并隐藏起来，这是蚁群为了共同的利益而采取的集体行为。蚂蚁们还构建了一些令人惊奇的物体，尤其考虑到它们是昆虫类动物，蚂蚁绝对称得上是优秀的工程师。他们做的对。</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">我认为，在微服务中需要更多地考虑蚂蚁精神而不是嬉皮士精神。在这个时代，嬉皮士精神可能不应该进入工程管理领域，这是微服务的错误信念和价值观。</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p label=\"小标题\" style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px;font-size: 18px;font-weight: 700;color: rgb(164, 29, 29)\">第四条：警惕巨大的仪表板</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">我曾在谷歌的 Dapper 和 Monarch 项目工作过，Monarch 这个项目在谷歌并没有太多的记录，John Banning 曾在 Monitorama 分享过。Monarch 的规模非常大，它以服务的方式运行，基本上就像是一个为整个谷歌设计的高可用性时间序列监控系统。在这个项目中，我花了大量时间与 Google 的 SRE 团队交流，其中有一些非常棒的实践给了我很多启发。</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">Cody Smith 是负责网络搜索的 SRE。网络搜索作为仪表板设计的非常紧凑，就像十几棵草攒在一起，但却具有令人难以置信的时间保真度。就如每秒分辨率，存在一百万个维度去解释图形中的任何变化以及某种维度的过滤聚合。还有其他的项目也有这些巨大的仪表板，有很多很多页的信息。它们背后的设计思路是可以通过扫描所有的信息并找到其中的问题或类似的问题。但我认为这是一个非常糟糕的模式。</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px;text-align: center\"><img src=\"https://img.huxiucdn.com/article/content/201905/16/175944185339.jpg?imageView2/2/w/1000/format/jpg/interlace/1/q/85\" data-w=\"1080\" data-h=\"597\" style=\"box-sizing: border-box;border: 0px;vertical-align: middle;width: auto;max-width: 100%\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">&nbsp; &nbsp; &nbsp;</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">这是内部仪表板中的一组图表。通过这张图，很明显可以看出这里大约在 12 点出现了一些问题，而这里的高峰期是 12:20 左右，另一边的图显示峰值在 12 点之前，这些图标显示的数据大都相关。</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px;text-align: center\"><img src=\"https://img.huxiucdn.com/article/content/201905/16/175944529389.jpg?imageView2/2/w/1000/format/jpg/interlace/1/q/85\" data-w=\"1080\" data-h=\"611\" style=\"box-sizing: border-box;border: 0px;vertical-align: middle;width: auto;max-width: 100%\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">&nbsp; &nbsp; &nbsp;</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">然而，这么多呈现的图表，接下来我们应该查看哪一个进一步定位问题？我一点概念都没有。真正了解这些系统的人可能通过一些细节可以辨识这些图标背后的含义，但如果是正在随时待命处理生产环境问题的运维人员则必须快速找出问题，这个仪表板则是一个糟糕的情况，有八个图表，还有另外十几个显示相同的情况。另外，还有的仪表板的页面一次又一次地显示同一个故障，这样实际上对于分析问题也并不可行。然而对微服务架构来说这是一个重要问题，每个服务都会生成大量的仪表板或 RPC 和服务网格等等，包括业务指标。</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">之后，仪表板会呈现分布式系统中的级联故障，这些故障在很多地方都可以看到。微服务的本质是服务间具有相互依赖关系，A 依赖 B，B 依赖于 C，C 依赖于 D，D 出现了一次故障且反映在 CBNA 中。在仪表板中，应该可以通过查看波浪线找出根本原因，然而现实却不是这样。仪表板应该服务于 SLI 即服务水平指标，它代表了消费者关心的内容，之后的根因分析则需要基于此进行引导分析和改进。</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px;text-align: center\"><img src=\"https://img.huxiucdn.com/article/content/201905/16/175944060254.jpg?imageView2/2/w/1000/format/jpg/interlace/1/q/85\" data-w=\"1080\" data-h=\"602\" style=\"box-sizing: border-box;border: 0px;vertical-align: middle;width: auto;max-width: 100%\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">&nbsp; &nbsp; &nbsp;</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">我认为可观察性包括两件事，一个是检测关键信号，即 SLI 的部分，它需要非常精确；另一个则是改进搜索空间。每增加一个微服务，可能发生的故障模式的数量随着服务数量的增长而几何式增长。我并不认为机器学习或 AI 可以神奇地解决这个问题。我们需要尽快发现可以帮助减少人脑假设的方法，只有在使用巨型仪表板之外的技术时才能实现引导过程。巨型仪表板在单体环境中运行良好，但我看到人们采用这种理念并围绕它构建微服务的可观察性。我认为有必要使用仪表板，但肯定不够。我采访过的 SRE 小组当时正在构建巨大的仪表板，我们的效率明显低于让它设计上更紧凑的团队，之后再使用其他工具来改进搜索空间。所以，不要混淆搜索空间的可视化和对它的精炼优化。整个搜索空间太大了且无法可视化，而且人类迄今也无法处理那么多信息。</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">在 LightStep，我们看到很多客户一直在努力解决这类问题。我不知道在座的各位是否经历过同样的情况，但我认为这是一种失败模式，谷歌肯定也明白这一点。曾经有一个大型的 Google 服务，大概名字是家庭类型之类的服务，它不得不使用代码生成器生成告警配置，最终导致了 35,000 行还要长的代码。我不记得其中的所有原因。但随后他们不得不开始手动维护这 35,000 行代码，然而这些配置是在 Google 内部完全模糊的 DSL 中编写的，手动维护所带来的痛苦程度无法比拟，这就是因为他们混淆了对 SLI 的告警信息和可能是根本原因的告警信息。监控不应该对根本原因发出告警，它应该是细化过程的一部分；而应该对 SLI 发出告警，对于任何特定系统，SLI 的信息不会有那么多而导致无法处理。</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p label=\"小标题\" style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px;font-size: 18px;font-weight: 700;color: rgb(164, 29, 29)\">第五条：无法跟踪一切</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">这条教训来自 Dapper 项目。在某种程度上和之前对谷歌系统的评价类似，”当一个系统变得如此庞大时，它所提供的解决方案功能集会相对的减少”。我们当时正在与搜索和广告对 Dapper 的要求进行抗争，它们要求 Dapper 每秒支持数亿次查询，而我们能做到的唯一方法就是积极地进行采样分析。</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px;text-align: center\"><img src=\"https://img.huxiucdn.com/article/content/201905/16/175944819507.jpg?imageView2/2/w/1000/format/jpg/interlace/1/q/85\" data-w=\"1080\" data-h=\"605\" style=\"box-sizing: border-box;border: 0px;vertical-align: middle;width: auto;max-width: 100%\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">&nbsp; &nbsp; &nbsp;</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">微服务的结构看起来很像多边形，在运行中会产生事务经过这些组件，有些事务也会调用多个其它服务，所以了解一个微服务系统最基础层面发生的事情可以更好的维护和提供服务，诸如服务请求的起点、它的旅程直到请求的结束，这就是分布式跟踪的最基本想法。如果没有实现这样的功能，另一种可替代的方式则是让其他人通过电话帮助调试，但实现起来非常痛苦。分布式跟踪的功能对于分布式系统来说非常有价值。</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px;text-align: center\"><img src=\"https://img.huxiucdn.com/article/content/201905/16/175944663503.jpg?imageView2/2/w/1000/format/jpg/interlace/1/q/85\" data-w=\"1080\" data-h=\"609\" style=\"box-sizing: border-box;border: 0px;vertical-align: middle;width: auto;max-width: 100%\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">&nbsp; &nbsp; &nbsp;</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">它的问题是跟踪在这个图的数据科学和数据工程中有一个黑暗的秘密跟踪。</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px;text-align: center\"><img src=\"https://img.huxiucdn.com/article/content/201905/16/175944951399.jpg?imageView2/2/w/1000/format/jpg/interlace/1/q/85\" data-w=\"1080\" data-h=\"603\" style=\"box-sizing: border-box;border: 0px;vertical-align: middle;width: auto;max-width: 100%\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">&nbsp; &nbsp; &nbsp;</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">图中呈现了数据卷的真实检查数据，可以看出堆栈顶部的实际事务数量，随着业务增长，这个数据的总量大概需要再乘以服务数量。因此，当迁移至微服务后，数据量也会相应增长，这个增长与事务总数不成比例，但与服务的数量成正比，大概是乘以网络成本和存储此数据的成本，之后还需要将数据存储一段有效时间。基本上，从第一原则的角度来看，微服务系统中的数据太多。在更快的网络或更便宜的存储被发明之前，现在的数据真的太多了。这个问题会反映在过高的 Splunk 账单或者 ELK 失效。但如果你使用日志记录作为跟踪数据，然后尝试使在同一管道中聚合，这个问题就会发生。分布式跟踪通常被认为是这些时序图，但实际上它只是一种使用内置采样机制进行事务性日志记录的方法。</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px;text-align: center\"><img src=\"https://img.huxiucdn.com/article/content/201905/16/175944753047.jpg?imageView2/2/w/1000/format/jpg/interlace/1/q/85\" data-w=\"1080\" data-h=\"610\" style=\"box-sizing: border-box;border: 0px;vertical-align: middle;width: auto;max-width: 100%\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">&nbsp; &nbsp; &nbsp;</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">对于 Dapper，我们需要将其用于 Web 搜索和广告，也因此而积极的采样分析。我们在交易之前做的第一件事就是翻转一枚硬币选择它作为样本数据，这样可以将数据量减少 99.9％，这种方法很有帮助。然而，事实证明这还不够，即使将 1000 个中的一个请求集中在一起的成本也很昂贵。因此，在全局集中这些数据之前还需要进行进一步的抽取 1:10000，之后可以 MapReduce 以及更复杂的分析。这就是在 Google 完成这项工作所必需的。然而，就我个人而言非常后悔并对此种做法深感遗憾。坦率讲，相较于在 Dapper 的做法，我认为应该可以找到另一种方法提供更多的按钮并且更面向长远的考虑，这也是我为什么会成立 LightStep 的原因。</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">Dapper 由 Sharon Pearl 和 Mike Burrows 两人创办，他们都来自前面提到的 Compaq DEC 并购，但对此并不是很开心。Mike 在微软研究院工作过，那时他在研究 Bing 搜索产品，当他去谷歌时，有人称他的背景并不允许他在谷歌工作。他喜欢搜索，之后他创建了 Chubby，有点像 Zookeeper，同时还参与了许多其他项目。而 Sharon 促使了我加入 Dappe。 在早期的职业生涯里，谷歌做过这样一件事情：他们会在组织里给你匹配一个与你尽可能不同的人，他们会从九维空间的角度进行员工走查，包括工作的语言、离开学校的时间、办公地点、汇报结构等。</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">在参与这项调查的人里面，Sharon 是与我最不相同的那个人，当时我还在广告项目，并不是很喜欢当时的工作。Sharon 给我列出来她正在参与的一系列项目，并提到了 Dapper，而他们当时真的不想将它产品化。我听了之后却喜欢上了它，“这听起来比我正在做的事情更加有趣”，之后我管理了大约 120 份报告，我开始研究它想做一些更野心勃勃的事情，我的导师 Luis 在这当中也建议我 “这足以让人在谷歌的每台机器上跑步了。你为什么不先解决它？”这真的是一个有些政治和堑壕战的项目，但这就是他告诉我要做的事情。我也做到了，但我真的后悔了。因为其实还有很多其它的方法可以解决这个问题。这无关我的 LightStep 项目，相比于方法，LightStep 给出了很多可以了解系统的机会。</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p label=\"大标题\" style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px;font-size: 20px;font-weight: 700;color: rgb(164, 29, 29)\">总结</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px;text-align: center\"><img src=\"https://img.huxiucdn.com/article/content/201905/16/175944283884.jpg?imageView2/2/w/1000/format/jpg/interlace/1/q/85\" data-w=\"1080\" data-h=\"601\" style=\"box-sizing: border-box;border: 0px;vertical-align: middle;width: auto;max-width: 100%\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">&nbsp; &nbsp; &nbsp;</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\">最后总结一下，我认为选择微服务有两个驱动因素：独立和计算机科学。开始微服务之前要确保在组织级别推进微服务的原因。构建微服务的目的在于优化速度，它不是指工程速度，也不是指系统吞吐量。一件事情开始的原因不同会导致不同的结果。第二，需要了解所选解决方案的适合规模。对于整个无服务器 FaaS 话题，不要因为它很有趣而继续缩小和缩小。“尝试做个蚂蚁，而不是嬉皮士”。第三，可观察性不是关于三大支柱，它只是有关数据的检测和改进。考虑一下这些工作流程，跟踪所有内容则是可能的。从调试和性能优化角度来看，这是解决此问题的一种有趣方式。</p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br label=\"备注\" style=\"box-sizing: border-box\"/></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><span style=\"box-sizing: border-box;color: rgb(153, 153, 153);line-height: 30px\">原文：https://www.infoq.com/presentations/google-microservices</span></p><p style=\"box-sizing: border-box;margin-top: 0px;margin-bottom: 0px\"><br style=\"box-sizing: border-box\"/></p><p><span style=\"box-sizing: border-box;color: rgb(153, 153, 153);line-height: 30px\">本文来自微信公众号：</span><a href=\"https://mp.weixin.qq.com/s?__biz=MjM5MDE0Mjc4MA==&mid=2651016151&idx=2&sn=caa40d813b176a8325d61ca0c1040d19&chksm=bdbeb3848ac93a9224ed992f0e11e4a75626b7107d796c17a4f71335d7d735279ff6d6461453&mpshare=1&scene=1&srcid=0516h1g0yscgZOUv3sld41pu&key=a275743a4180eb546b59b95cd0bfc9bc8b419ab7c5982f31a565f848e8a1e4400efc6ddb9a5e18db883e7d766ab38b3e1d4a4167689c33c7d4436a3d3d88bf35f85bf67d97fdb86d8f737456b219f6a8&ascene=1&uin=MjI5OTkzMzI4Mw%3D%3D&devicetype=Windows+10&version=62060739&lang=zh_CN&pass_ticket=etDb82qTneJAG%2FDUDfJ5VjYzQFue3Sa71CQmzg1PX4ELG8stT2YNC0kgXPEgbIQq\" target=\"_blank\" style=\"box-sizing: border-box;background-color: transparent;color: rgb(48, 48, 48);cursor: pointer\"><span style=\"box-sizing: border-box;color: rgb(153, 153, 153);line-height: 30px\">InfoQ（ID：infoqchina）</span></a><span style=\"box-sizing: border-box;color: rgb(153, 153, 153);line-height: 30px\">，作者：Ben Sigelman，译者：禚娴静</span></p><p><br/></p>',3,'2019-05-16 20:44:14.116607','2019-05-16 20:56:32.034140',3,1,1);
/*!40000 ALTER TABLE `blog_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_article_tags`
--

DROP TABLE IF EXISTS `blog_article_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `blog_article_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_article_tags_article_id_tag_id_b78a22e9_uniq` (`article_id`,`tag_id`),
  KEY `blog_article_tags_tag_id_88eb3ed9_fk_blog_tag_id` (`tag_id`),
  CONSTRAINT `blog_article_tags_article_id_82c02dd6_fk_blog_article_id` FOREIGN KEY (`article_id`) REFERENCES `blog_article` (`id`),
  CONSTRAINT `blog_article_tags_tag_id_88eb3ed9_fk_blog_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `blog_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_article_tags`
--

LOCK TABLES `blog_article_tags` WRITE;
/*!40000 ALTER TABLE `blog_article_tags` DISABLE KEYS */;
INSERT INTO `blog_article_tags` VALUES (2,1,1),(3,2,1),(1,3,4);
/*!40000 ALTER TABLE `blog_article_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_banner`
--

DROP TABLE IF EXISTS `blog_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `blog_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text_info` varchar(50) NOT NULL,
  `img` varchar(100) NOT NULL,
  `link_url` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_banner`
--

LOCK TABLES `blog_banner` WRITE;
/*!40000 ALTER TABLE `blog_banner` DISABLE KEYS */;
INSERT INTO `blog_banner` VALUES (1,'Django Rest Framework -云片网发送短信验证码','banner/_LSR0U7J4IGIR68RHJ3W.png','http://www.baidu.com',1);
/*!40000 ALTER TABLE `blog_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_category`
--

DROP TABLE IF EXISTS `blog_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `blog_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `index` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_category`
--

LOCK TABLES `blog_category` WRITE;
/*!40000 ALTER TABLE `blog_category` DISABLE KEYS */;
INSERT INTO `blog_category` VALUES (1,'Django',999),(2,'Python',999),(3,'最新资讯',999);
/*!40000 ALTER TABLE `blog_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_comment`
--

DROP TABLE IF EXISTS `blog_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `blog_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(254) NOT NULL,
  `content` longtext NOT NULL,
  `publish` date NOT NULL,
  `article_id` int(11) NOT NULL,
  `reply_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_comment_article_id_3d58bca6_fk_blog_article_id` (`article_id`),
  KEY `blog_comment_reply_id_2b6e250c_fk_blog_comment_id` (`reply_id`),
  CONSTRAINT `blog_comment_article_id_3d58bca6_fk_blog_article_id` FOREIGN KEY (`article_id`) REFERENCES `blog_article` (`id`),
  CONSTRAINT `blog_comment_reply_id_2b6e250c_fk_blog_comment_id` FOREIGN KEY (`reply_id`) REFERENCES `blog_comment` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_comment`
--

LOCK TABLES `blog_comment` WRITE;
/*!40000 ALTER TABLE `blog_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_link`
--

DROP TABLE IF EXISTS `blog_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `blog_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `linkurl` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_link`
--

LOCK TABLES `blog_link` WRITE;
/*!40000 ALTER TABLE `blog_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_tag`
--

DROP TABLE IF EXISTS `blog_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `blog_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_tag`
--

LOCK TABLES `blog_tag` WRITE;
/*!40000 ALTER TABLE `blog_tag` DISABLE KEYS */;
INSERT INTO `blog_tag` VALUES (1,'django'),(2,'部署'),(3,'python'),(4,'互联网');
/*!40000 ALTER TABLE `blog_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_tui`
--

DROP TABLE IF EXISTS `blog_tui`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `blog_tui` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_tui`
--

LOCK TABLES `blog_tui` WRITE;
/*!40000 ALTER TABLE `blog_tui` DISABLE KEYS */;
INSERT INTO `blog_tui` VALUES (1,'热门推荐'),(2,'推荐阅读');
/*!40000 ALTER TABLE `blog_tui` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `captcha_captchastore`
--

DROP TABLE IF EXISTS `captcha_captchastore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `captcha_captchastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) NOT NULL,
  `response` varchar(32) NOT NULL,
  `hashkey` varchar(40) NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashkey` (`hashkey`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `captcha_captchastore`
--

LOCK TABLES `captcha_captchastore` WRITE;
/*!40000 ALTER TABLE `captcha_captchastore` DISABLE KEYS */;
/*!40000 ALTER TABLE `captcha_captchastore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-05-16 19:24:04.702419','1','Django',1,'[{\"added\": {}}]',9,1),(2,'2019-05-16 19:24:32.099074','2','Python',1,'[{\"added\": {}}]',9,1),(3,'2019-05-16 19:44:11.042858','1','Django Rest Framework -云片网发送短信验证码',1,'[{\"added\": {}}]',8,1),(4,'2019-05-16 20:21:21.676099','1','热门推荐',1,'[{\"added\": {}}]',13,1),(5,'2019-05-16 20:21:57.353072','2','推荐阅读',1,'[{\"added\": {}}]',13,1),(6,'2019-05-16 20:23:34.554162','1','django',1,'[{\"added\": {}}]',12,1),(7,'2019-05-16 20:23:42.248299','2','部署',1,'[{\"added\": {}}]',12,1),(8,'2019-05-16 20:23:54.421526','3','python',1,'[{\"added\": {}}]',12,1),(9,'2019-05-16 20:28:22.169723','1','Django Rest Framework 云片网发送短信验证码',1,'[{\"added\": {}}]',7,1),(10,'2019-05-16 20:33:43.554055','2','Django常用命令介绍，新手建议阅读',1,'[{\"added\": {}}]',7,1),(11,'2019-05-16 20:40:28.002389','3','最新资讯',1,'[{\"added\": {}}]',9,1),(12,'2019-05-16 20:42:08.307688','4','互联网',1,'[{\"added\": {}}]',12,1),(13,'2019-05-16 20:44:14.615839','3','谷歌失败案例：那些年在微服务上踩的坑',1,'[{\"added\": {}}]',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(7,'blog','article'),(8,'blog','banner'),(9,'blog','category'),(10,'blog','comment'),(11,'blog','link'),(12,'blog','tag'),(13,'blog','tui'),(15,'captcha','captchastore'),(5,'contenttypes','contenttype'),(14,'login','user'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-05-16 19:16:33.037158'),(2,'auth','0001_initial','2019-05-16 19:17:01.632063'),(3,'contenttypes','0002_remove_content_type_name','2019-05-16 19:17:07.711614'),(4,'admin','0001_initial','2019-05-16 19:17:12.491872'),(5,'admin','0002_logentry_user','2019-05-16 19:17:16.628549'),(6,'auth','0002_alter_permission_name_max_length','2019-05-16 19:17:20.803339'),(7,'auth','0003_alter_user_email_max_length','2019-05-16 19:17:23.471490'),(8,'auth','0004_alter_user_username_opts','2019-05-16 19:17:23.623256'),(9,'auth','0005_alter_user_last_login_null','2019-05-16 19:17:25.667530'),(10,'auth','0006_require_contenttypes_0002','2019-05-16 19:17:25.761394'),(11,'auth','0007_alter_validators_add_error_messages','2019-05-16 19:17:25.963078'),(12,'auth','0008_alter_user_username_max_length','2019-05-16 19:17:29.665217'),(13,'auth','0009_alter_user_last_name_max_length','2019-05-16 19:17:35.615699'),(14,'blog','0001_initial','2019-05-16 19:18:12.197967'),(15,'captcha','0001_initial','2019-05-16 19:18:14.099710'),(16,'login','0001_initial','2019-05-16 19:18:15.103702'),(17,'sessions','0001_initial','2019-05-16 19:18:17.062531');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('00xxxdktgm8i76nn3h9mlhftddex8njf','MDgxZDFkMWE3YmZmNjEzOGRlYWIxY2FjNmNmYTNiZGMwZWQ0MmFmMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiZmJiZWJhMDQ2ZTQxMDBjMzhmNGUwMDAxYmY3OTQ3ZTBmMmFkZDQ3In0=','2019-05-30 20:19:10.542008'),('2qaqxhfkitr3fm8usvjjgrm4ylnvhqmg','MDgxZDFkMWE3YmZmNjEzOGRlYWIxY2FjNmNmYTNiZGMwZWQ0MmFmMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiZmJiZWJhMDQ2ZTQxMDBjMzhmNGUwMDAxYmY3OTQ3ZTBmMmFkZDQ3In0=','2019-05-30 19:23:16.771195'),('gr8nern5zdvfnssl865i9cct6q4a3akx','ODgzZjhiYjY5YjRlNzJkODdlNjk5YzYyOTRkMTNjZGMyMzk2YjkyZTp7ImlzX2xvZ2luIjp0cnVlLCJ1c2VyX25hbWUiOiJcdTY3OTdcdTVkZGVcdTVlMDJcdTY3MDBcdTU0MGVcdTc2ODRcdTUzNTVcdTdlYWYiLCJ1c2VyX2lkIjoxfQ==','2019-05-30 21:29:51.230611');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_user`
--

DROP TABLE IF EXISTS `login_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `login_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(256) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `email` varchar(254) NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `photo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_user`
--

LOCK TABLES `login_user` WRITE;
/*!40000 ALTER TABLE `login_user` DISABLE KEYS */;
INSERT INTO `login_user` VALUES (1,'youke1','15e2b0d3c33891ebb0f1ef609ec419420c20e320ce94c65fbc8c3312448eb225','林州市最后的单纯','1457753144@qq.com',1,'photo/YOV04QJN2Z0DO_KSBZ1NB1A.bmp');
/*!40000 ALTER TABLE `login_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-17 12:43:40
