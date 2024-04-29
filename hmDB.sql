CREATE DATABASE  IF NOT EXISTS `hm` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hm`;
-- MySQL dump 10.13  Distrib 8.0.36, for macos14 (x86_64)
--
-- Host: 127.0.0.1    Database: hm
-- ------------------------------------------------------
-- Server version	8.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `img1` varchar(255) DEFAULT NULL,
  `img2` varchar(255) DEFAULT NULL,
  `img3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `product_images_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_images`
--

LOCK TABLES `product_images` WRITE;
/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;
INSERT INTO `product_images` VALUES (1,1,'https://004406.cdn.akinoncloud.com/products/2024/04/17/489402/c97a3059-aa79-499b-b1f7-bdfebf17d2a7_size350x525_quality90_cropCenter.jpg','https://004406.cdn.akinoncloud.com/products/2023/12/20/489404/29851bf3-54e0-4b95-ae6b-273f4c822725_size350x525_quality90_cropCenter.jpg','https://004406.cdn.akinoncloud.com/products/2024/04/17/489402/1090102d-e6c2-456d-8808-7e449ae1d05f_size350x525_quality90_cropCenter.jpg'),(2,2,'https://004406.cdn.akinoncloud.com/products/2024/04/16/682707/c3e11e7b-635c-4b5b-b0db-59b442891076_quality100_cropCenter.jpg','https://004406.cdn.akinoncloud.com/products/2024/04/16/682707/0f7b8cd8-8904-44ff-9476-bd7dced29243_quality100_cropCenter.jpg','https://004406.cdn.akinoncloud.com/products/2024/04/16/682707/7d6dbefb-ae34-4cae-9c55-7c0ad185933d_quality100_cropCenter.jpg'),(3,3,'https://004406.cdn.akinoncloud.com/products/2024/04/16/682712/014ba24f-27c6-4dd8-a7ab-214ba6a7e479_size555x830_quality90_cropCenter.jpg','https://004406.cdn.akinoncloud.com/products/2024/04/16/682712/6ca5a4af-a38d-4408-83d5-16d153c279e3_size555x830_quality90_cropCenter.jpg','https://004406.cdn.akinoncloud.com/products/2024/04/16/682712/73d0ad68-d4b2-436a-9d1a-98c03818aca5_size555x830_quality90_cropCenter.jpg'),(4,4,'https://004406.cdn.akinoncloud.com/products/2024/04/19/682755/ce8f0fe9-c078-49b8-9fb3-f47aac9f3a94_size555x830_quality90_cropCenter.jpg','https://004406.cdn.akinoncloud.com/products/2024/04/19/682761/4e8023cb-8e7c-444f-90d2-9bb3b5f9b1da_size555x830_quality90_cropCenter.jpg','https://004406.cdn.akinoncloud.com/products/2024/04/19/682761/beddf00a-ca2a-4695-b860-b0df1aac1ece_size555x830_quality90_cropCenter.jpg'),(5,5,'https://004406.cdn.akinoncloud.com/products/2024/04/16/700550/076bb16b-8307-44c3-b189-b5825c2d8578_size555x830_quality90_cropCenter.jpg','https://004406.cdn.akinoncloud.com/products/2024/04/16/700551/abe3d17d-a264-4239-b018-8fb6f60541a9_size555x830_quality90_cropCenter.jpg','https://004406.cdn.akinoncloud.com/products/2024/04/16/700551/f4bd16b4-8a7d-4779-8304-5de577bd230f_size555x830_quality90_cropCenter.jpg'),(6,6,'https://004406.cdn.akinoncloud.com/products/2024/04/15/597943/5fe4bd44-ac8c-405a-b93f-5925e1da237d_size555x830_quality90_cropCenter.jpg','https://004406.cdn.akinoncloud.com/products/2024/04/15/597943/1c574f7e-f4d0-46ac-b05b-a2c8102f5961_size555x830_quality90_cropCenter.jpg','https://004406.cdn.akinoncloud.com/products/2024/04/15/597943/6e9a55d6-7004-4259-848d-e7e7059500d6_size555x830_quality90_cropCenter.jpg'),(7,7,'https://004406.cdn.akinoncloud.com/products/2024/04/19/665556/99844fc4-7dd7-408a-a5f5-706473f59326_size555x830_quality90_cropCenter.jpg','https://004406.cdn.akinoncloud.com/products/2024/04/19/679355/d7eae4c9-a4d4-4276-9baa-9ed0866247a8_size555x830_quality90_cropCenter.jpg','https://004406.cdn.akinoncloud.com/products/2024/04/19/665555/6d92dad2-b452-4da2-919f-112276232a28_size555x830_quality90_cropCenter.jpg'),(8,8,'https://004406.cdn.akinoncloud.com/products/2024/04/01/598587/65e09566-b67c-45f2-a643-cb2bd683e775_size555x830_quality90_cropCenter.jpg','https://004406.cdn.akinoncloud.com/products/2024/04/01/598587/9c485684-6391-46e8-9e58-16cbcc51d7c7_size555x830_quality90_cropCenter.jpg','https://004406.cdn.akinoncloud.com/products/2024/04/01/598587/947893c9-5ae2-4500-b750-4e97ec99a212_size555x830_quality90_cropCenter.jpg'),(9,9,'https://004406.cdn.akinoncloud.com/products/2024/04/03/483877/b43a4d1a-2578-4ce2-ab86-a8085d246c76_size555x830_quality90_cropCenter.jpg','https://004406.cdn.akinoncloud.com/products/2024/04/03/483877/5ebbb725-474d-462b-8a20-af2715ae3150_size555x830_quality90_cropCenter.jpg','https://004406.cdn.akinoncloud.com/products/2024/04/03/483877/0e14e4ab-ebe6-41dd-873f-96d1842b92f5_size555x830_quality90_cropCenter.jpg'),(10,10,'https://004406.cdn.akinoncloud.com/products/2024/04/19/685411/f30c6437-0de3-4c14-aa85-fb78f618c259_size555x830_quality90_cropCenter.jpg','https://004406.cdn.akinoncloud.com/products/2024/04/19/685411/d38d4b2f-85a1-42ec-aa92-81f7d68dcfe4_size555x830_quality90_cropCenter.jpg','https://004406.cdn.akinoncloud.com/products/2024/04/19/685411/10c3f2da-d5ff-4718-9482-f4bad0b57ee3_size555x830_quality90_cropCenter.jpg'),(11,11,'https://004406.cdn.akinoncloud.com/products/2024/03/27/595438/a7730989-1368-44ee-86b5-1453ed5d1c61_size555x830_quality90_cropCenter.jpg','https://004406.cdn.akinoncloud.com/products/2024/03/27/595437/8a8416ba-f609-432b-bd41-33cc44a50ed0_size555x830_quality90_cropCenter.jpg','https://004406.cdn.akinoncloud.com/products/2024/03/27/595438/ae29bfd4-299d-4f64-90b5-2a03ddaa14b1_size555x830_quality90_cropCenter.jpg'),(12,12,'https://004406.cdn.akinoncloud.com/products/2024/04/15/468205/e1627a0b-ea20-4d41-ade2-8436c53fa802_size555x830_quality90_cropCenter.jpg','https://004406.cdn.akinoncloud.com/products/2024/04/15/468206/03341212-429e-4a67-bd86-e4bfc299f75e_size555x830_quality90_cropCenter.jpg','https://004406.cdn.akinoncloud.com/products/2024/04/15/468206/d78d72a9-2f8c-4761-9fa5-dd03fe9ce8d9_size555x830_quality90_cropCenter.jpg'),(13,13,'https://004406.cdn.akinoncloud.com/products/2023/09/26/508815/ee340101-ddbc-4cbb-9ca9-66630e7d339c_size555x830_quality90_cropCenter.jpg','https://004406.cdn.akinoncloud.com/products/2023/09/26/508816/a06ad7a0-4d83-4008-9b73-b2873e2711b6_size555x830_quality90_cropCenter.jpg','https://004406.cdn.akinoncloud.com/products/2023/09/26/508813/207756b5-2c8b-4922-b5a4-5ce2fc727e4c_size555x830_quality90_cropCenter.jpg'),(14,14,'https://004406.cdn.akinoncloud.com/products/2023/11/08/488551/d34f1626-56ce-4284-bb10-d3b5543818e1_size555x830_quality90_cropCenter.jpg','https://004406.cdn.akinoncloud.com/products/2023/11/08/488551/d71c2899-d616-4838-822a-9d8c108ce1b0_size555x830_quality90_cropCenter.jpg','https://004406.cdn.akinoncloud.com/products/2023/11/08/488551/5ceb23a6-a8ac-4405-a662-03edff4fa32f_size555x830_quality90_cropCenter.jpg'),(15,15,'https://004406.cdn.akinoncloud.com/products/2024/02/29/535701/1f2557ca-a8dd-4cc4-a47d-39d5c772b940_size555x830_quality90_cropCenter.jpg','https://004406.cdn.akinoncloud.com/products/2024/02/29/535701/4065394a-d57e-4b66-bab5-82deb6513941_size555x830_quality90_cropCenter.jpg','https://004406.cdn.akinoncloud.com/products/2024/02/29/535699/5e53a8e4-02d5-4d8d-a7d3-97f0c1d2ed1d_size555x830_quality90_cropCenter.jpg'),(16,16,'https://004406.cdn.akinoncloud.com/products/2023/12/06/535592/e6482a6b-addb-46bc-944b-5bc58f09681f_size555x830_quality90_cropCenter.jpg','https://004406.cdn.akinoncloud.com/products/2023/12/06/535592/35be82ce-99a6-4dfb-8f1c-aa1aff095c7f_size555x830_quality90_cropCenter.jpg','https://004406.cdn.akinoncloud.com/products/2023/12/06/535592/58373647-a4b9-48f4-91a5-e089c8778b1f_size555x830_quality90_cropCenter.jpg');
/*!40000 ALTER TABLE `product_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_sizes`
--

DROP TABLE IF EXISTS `product_sizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_sizes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `xs` tinyint(1) DEFAULT NULL,
  `s` tinyint(1) DEFAULT NULL,
  `m` tinyint(1) DEFAULT NULL,
  `l` tinyint(1) DEFAULT NULL,
  `xl` tinyint(1) DEFAULT NULL,
  `xxl` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `product_sizes_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_sizes`
--

LOCK TABLES `product_sizes` WRITE;
/*!40000 ALTER TABLE `product_sizes` DISABLE KEYS */;
INSERT INTO `product_sizes` VALUES (1,1,1,1,1,1,1,0),(2,2,0,1,1,0,1,1),(3,3,1,0,1,1,0,0),(4,4,0,0,1,1,1,1),(5,5,1,1,1,0,0,1),(6,6,1,1,0,0,0,0),(7,7,0,1,1,1,1,1),(8,8,1,0,1,0,1,0),(9,9,0,1,0,1,1,1),(10,10,1,1,1,0,1,0),(11,11,0,0,0,1,1,1),(12,12,1,0,1,0,0,1),(13,13,0,1,0,1,0,1),(14,14,1,1,1,1,0,0),(15,15,1,0,1,0,1,1),(16,16,1,1,1,1,1,1);
/*!40000 ALTER TABLE `product_sizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  KEY `idx_products_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (3,'Koyu Yeşil Uzun Kol Regular Fit Oxford Pamuk Gömlek',1499.00,'gömlek'),(4,'İndigo Uzun Kol Regular Fit Ekose Pamuk Gömlek',1699.00,'gömlek'),(5,'Açık Bej Polo Yaka Regular Fit Fermuarlı Desenli Pamuklu Tişört',1599.00,'tişört'),(6,'Havacı Mavi Polo Yaka Slim Fit Dar Kesim Desenli Nakışlı Pamuk Tişört',1199.00,'tişört'),(7,'Siyah Bisiklet Yaka Slim Fit Dar Kesim Süprem Pamuklu Tişört',449.00,'tişört'),(8,'Havacı Mavi Bisiklet Yaka Slim Fit Dar Kesim Baskılı Pamuk Tişört',899.99,'tişört'),(9,'Orta Vizon Slim Fit Dar Kesim Likralı Kanvas / Chino Pantolon',1899.00,'pantolon'),(10,'Koyu Lacivert Super Slim Fit Ekstra Dar Kesim Likralı Denim Pantolon',1999.00,'pantolon'),(11,'Orta Haki Slim Fit Dar Kesim Beli Lastikli İpli Likralı Pantolon',1799.00,'pantolon'),(12,'Beyaz Slim Fit Dar Kesim Likralı Kanvas / Chino Pantolon',1699.00,'pantolon'),(13,'İndigo Bisiklet Yaka Slim Fit Dar Kesim Desenli Pamuklu Triko Kazak',399.00,'kazak'),(14,'Koyu Bordo Bisiklet Yaka Regular Fit Desenli Dikişsiz Triko Kazak',399.00,'kazak'),(15,'Açık Gri Melanj Bisiklet Yaka Regular Fit Desenli Triko Kazak',799.00,'kazak'),(16,'Orta Vizon Bisiklet Yaka Regular Fit Desenli Triko Kazak',399.00,'kazak'),(1,'Beyaz Uzun Kol Slim Fit Dar Kesim Klasik Pamuklu Gömlek',399.99,'gömlek'),(2,'Uçuk Mavi Uzun Kol Regular Fit Oxford Pamuk Gömlek',1699.00,'gömlek');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-29 18:37:10
