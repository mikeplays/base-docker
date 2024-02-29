-- MariaDB dump 10.19  Distrib 10.5.21-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: db    Database: project
-- ------------------------------------------------------
-- Server version	8.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` (`id`, `status`, `user_id`, `stamp`, `heading`, `body`, `slug`) VALUES (1,2,2,'2023-08-31 21:47:35','Intro','<p>[blog-image:eyJpZCI6IjIiLCJibG9nX2lkIjoiMSIsImZpbGVuYW1lIjoiQ29iYmxlZF8xXzEuanBnIiwiaW1hZ2Vfd2lkdGgiOiIxMDkwIiwiaW1hZ2VfaGVpZ2h0IjoiMTI4NyIsInNpemUiOiIiLCJmbHVpZCI6ImltZy1mbHVpZCIsImNlbnRlcmVkIjoiIiwiY2FwdGlvbiI6IlRoaXMgaXMgc29tZSBzaWxseSBjYXB0aW9uISJ9]</p>\r\n<p>Some intro content. Lorum ipsem, etc.&nbsp; This is a really cool blog!</p>\r\n<p>&nbsp;</p>\r\n<p>Blah blah blah.</p>\r\n<p>&nbsp;</p>\r\n<p>Such and such.</p>','intro'),(2,2,2,'2023-08-31 21:47:35','other stuff','<p>this is some stuff.</p>','stuff'),(3,2,2,'2023-08-31 21:47:35','other stuff 2','<p>here is some other stuff</p>','stuff'),(4,2,2,'2023-08-31 21:47:35','more stuff','<p>here is yet more stuff for testing...</p>','stuff3'),(5,2,2,'2023-08-31 21:47:35','Wall','<p>[blog-image:eyJpZCI6IjMiLCJibG9nX2lkIjoiNSIsImZpbGVuYW1lIjoid2FsbC5qcGciLCJpbWFnZV93aWR0aCI6IjE2MDAiLCJpbWFnZV9oZWlnaHQiOiIxNjAwIiwic2l6ZSI6IiIsImZsdWlkIjoiaW1nLWZsdWlkIiwiY2VudGVyZWQiOiIiLCJjYXB0aW9uIjoiUm9jayBhbmQgcm9sbCB3aWxsIG5ldmVyIGRpZS4ifQ==]</p>\r\n<p>Cool wall stuff.</p>','wall'),(6,2,2,'2023-08-31 21:47:35','Some content','<p>Here is some content.&nbsp; Big woop!&nbsp;&nbsp;</p>\r\n<p>Yes, I know.&nbsp; Groundbreaking stuff, for sure.</p>','ground'),(7,2,2,'2023-08-31 21:47:35','Yes another one','<p>We know you\'ll never get sick of this!</p>','yab'),(8,2,2,'2023-08-31 21:47:35','More gumf for testing purpose...','<p>For testing purposes, you understand.</p>\r\n<p>&nbsp;</p>\r\n<p>I hope that you do.</p>','gumf'),(9,2,2,'2023-08-31 21:47:35','So forth and such and such ','<p>Here is a new bombastic post.</p>\r\n<p>Lots of vibes here.&nbsp;&nbsp;</p>\r\n<p>Come and join the party maaaan!</p>','party'),(10,2,2,'2023-08-31 21:47:35','This is a super blog','<p>Here some stuff I\'ve been thinking...</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>','bmxpost'),(11,2,2,'2023-08-31 21:47:35','This is a super blog','<p>Here some stuff I\'ve been thinking...</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>','bmxpost'),(12,2,2,'2023-09-06 20:56:44','Post as tim','<p>[blog-image:eyJpZCI6IjYiLCJibG9nX2lkIjoiMTIiLCJmaWxlbmFtZSI6IkNvYmJsZWRfMV8yLmpwZyIsImltYWdlX3dpZHRoIjoiMTA5MCIsImltYWdlX2hlaWdodCI6IjEyODciLCJzaXplIjoiIiwiZmx1aWQiOiJpbWctZmx1aWQiLCJjZW50ZXJlZCI6IiIsImNhcHRpb24iOiIifQ==]</p>\r\n<p>This is tim writing a post.</p>\r\n<p>&nbsp;</p>\r\n<p>Blah blah blah.</p>\r\n<p>&nbsp;</p>\r\n<p>Some other content goes here...</p>','blah'),(13,3,1,'2023-08-31 23:25:10','Post by Mike','<p>This post will never display on the website?</p>','mike'),(14,2,3,'2023-09-04 19:46:25','Ben makes a post','<p>[blog-image:eyJpZCI6IjciLCJibG9nX2lkIjoiMTQiLCJmaWxlbmFtZSI6IkNvYmJsZWRfMV8zLmpwZyIsImltYWdlX3dpZHRoIjoiMTA5MCIsImltYWdlX2hlaWdodCI6IjEyODciLCJzaXplIjoiIiwiZmx1aWQiOiJpbWctZmx1aWQiLCJjZW50ZXJlZCI6IiIsImNhcHRpb24iOiJTdG9rZWQifQ==]</p>\r\n<p>Here is a new post.</p>','new'),(15,2,1,'2023-09-15 22:37:35','By Mike','<p>Hello, world.</p>','bike');
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `blog_attachment`
--

LOCK TABLES `blog_attachment` WRITE;
/*!40000 ALTER TABLE `blog_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `blog_category`
--

LOCK TABLES `blog_category` WRITE;
/*!40000 ALTER TABLE `blog_category` DISABLE KEYS */;
INSERT INTO `blog_category` (`id`, `blog_category_id`, `label`, `meta`) VALUES (1,NULL,'Music','{ \"fa\": \"music\"}'),(2,NULL,'Photography','{ \"fa\": \"camera\"}'),(3,NULL,'BMX','{ \"fa\": \"bicycle\"}'),(4,NULL,'Other','{ \"fa\": \"plug\"}'),(5,NULL,'Experiments','{ \"fa\": \"flask\"}'),(6,NULL,'Releases','{ \"fa\": \"gift\"}');
/*!40000 ALTER TABLE `blog_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `blog_comment`
--

LOCK TABLES `blog_comment` WRITE;
/*!40000 ALTER TABLE `blog_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `blog_image`
--

LOCK TABLES `blog_image` WRITE;
/*!40000 ALTER TABLE `blog_image` DISABLE KEYS */;
INSERT INTO `blog_image` (`id`, `blog_id`, `filename`, `image_width`, `image_height`) VALUES (2,1,'Cobbled_1_1.jpg','1090','1287'),(3,5,'wall.jpg','1600','1600'),(5,12,'tim3_1.jpg','1072','694'),(6,12,'Cobbled_1_2.jpg','1090','1287'),(7,14,'Cobbled_1_3.jpg','1090','1287');
/*!40000 ALTER TABLE `blog_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `blog_item_category`
--

LOCK TABLES `blog_item_category` WRITE;
/*!40000 ALTER TABLE `blog_item_category` DISABLE KEYS */;
INSERT INTO `blog_item_category` (`blog_id`, `blog_category_id`) VALUES (1,2),(5,2),(6,2),(7,2),(8,2),(9,2),(12,2),(14,2),(10,5),(11,5),(15,5),(13,6);
/*!40000 ALTER TABLE `blog_item_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `blog_revision`
--

LOCK TABLES `blog_revision` WRITE;
/*!40000 ALTER TABLE `blog_revision` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_revision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `blog_tag`
--

LOCK TABLES `blog_tag` WRITE;
/*!40000 ALTER TABLE `blog_tag` DISABLE KEYS */;
INSERT INTO `blog_tag` (`blog_id`, `tag_id`) VALUES (1,1),(3,1),(4,1),(9,1),(15,1),(1,2),(3,2),(4,2),(6,2),(7,2),(8,2),(9,2),(2,3),(4,3),(5,4),(10,5),(11,5),(15,5),(11,6),(12,7),(13,8),(14,9),(15,10);
/*!40000 ALTER TABLE `blog_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `setting`
--

LOCK TABLES `setting` WRITE;
/*!40000 ALTER TABLE `setting` DISABLE KEYS */;
INSERT INTO `setting` (`id`, `name`, `value`, `vendor_id`) VALUES (1,'title','Online Vibes',NULL),(2,'keywords','online, blog, vibes',NULL),(3,'description','Welcome to Online Vibes, we hope you enjoy your stay.',NULL),(4,'blogtitle','Online Vibes',NULL),(5,'blogsubtitle','A blog about vibes',NULL),(6,'link1name','X',NULL),(7,'link1url','https://twitter.com/onlinevibes_',NULL),(8,'link2name','Instagram',NULL),(9,'link2url','https://instagram.com/onlinevibesofficial',NULL);
/*!40000 ALTER TABLE `setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `shippingaddr`
--

LOCK TABLES `shippingaddr` WRITE;
/*!40000 ALTER TABLE `shippingaddr` DISABLE KEYS */;
/*!40000 ALTER TABLE `shippingaddr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` (`id`, `tag`) VALUES (1,'intro'),(2,'blog'),(3,'stuff'),(4,'wall'),(5,'bmx'),(6,'chilling'),(7,'blah'),(8,'mike'),(9,'new'),(10,'bike');
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `email`, `auth`, `username`, `password`, `reg_code`, `active`, `registered`, `activated`, `fullname`, `picture`, `about`) VALUES (1,'mail@mikejw.co.uk',2,'mikejw','$2y$10$ngJDK9ipwxmgPonTbJ1Bu.AvZOftFhUMsF44AalW7RWqTbfVK7hwy','',1,'2024-01-06 21:57:52','2024-01-06 21:57:52','Mike Whiting',NULL,NULL),(2,'tim@onlinevibes.net',2,'tim','$2y$10$ngJDK9ipwxmgPonTbJ1Bu.AvZOftFhUMsF44AalW7RWqTbfVK7hwy','',1,'2024-01-06 21:57:52','2024-01-06 21:57:52','Tim Hill',NULL,NULL),(3,'ben@onlinevibes.net',2,'ben','$2y$10$ngJDK9ipwxmgPonTbJ1Bu.AvZOftFhUMsF44AalW7RWqTbfVK7hwy','',1,'2024-01-06 21:57:52','2024-01-06 21:57:52','Ben Waggett',NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-10 16:24:51
