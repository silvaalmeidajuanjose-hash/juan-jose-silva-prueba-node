-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: market
-- ------------------------------------------------------
-- Server version	9.5.0

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '7868c0d0-b074-11f0-ab0c-0897989910b9:1-127';

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `adultos` tinyint unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Bebidas',0),(2,'Snacks',0),(3,'Lácteos',0),(4,'Carnes',0),(5,'Panadería',0),(6,'Aseo',0),(7,'Hogar',0),(8,'Mascotas',0),(9,'Licores',1),(10,'Medicamentos',1);
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `instrucciones` varchar(500) DEFAULT NULL,
  `entrega_fecha` date DEFAULT NULL,
  `valor_productos` decimal(12,3) unsigned DEFAULT NULL,
  `valor_envio` decimal(10,3) unsigned DEFAULT NULL,
  `valor_descuento` decimal(12,3) unsigned DEFAULT NULL,
  `valor_cupon` decimal(11,3) unsigned DEFAULT NULL,
  `impuestos` tinyint unsigned DEFAULT NULL,
  `valor_impuestos` decimal(11,3) unsigned DEFAULT NULL,
  `valor_final` decimal(12,3) unsigned DEFAULT NULL,
  `calificacion` decimal(3,2) DEFAULT NULL,
  `id_tienda` smallint unsigned NOT NULL,
  `direccion` varchar(160) DEFAULT NULL,
  `valor_comision` decimal(11,3) DEFAULT NULL,
  `id_user` mediumint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_pedido_tienda` (`id_tienda`),
  CONSTRAINT `fk_pedido_tienda` FOREIGN KEY (`id_tienda`) REFERENCES `tiendas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,'Dejar en portería','2026-01-10',50000.000,5000.000,5000.000,0.000,1,8000.000,58000.000,5.00,1,'Cra 1 #1-1',3000.000,1,'2026-01-10 03:01:17'),(2,'Llamar al llegar','2026-01-11',30000.000,4000.000,3000.000,0.000,1,5000.000,36000.000,4.00,2,'Cra 2 #2-2',2500.000,2,'2026-01-10 03:01:17'),(3,'','2026-01-12',45000.000,6000.000,0.000,0.000,1,7200.000,58200.000,5.00,3,'Cra 3 #3-3',2800.000,3,'2026-01-10 03:01:17'),(4,'Urgente','2026-01-13',20000.000,3000.000,2000.000,0.000,1,3200.000,24200.000,4.00,4,'Cra 4 #4-4',2000.000,4,'2026-01-10 03:01:17'),(5,'','2026-01-14',60000.000,7000.000,6000.000,0.000,1,9600.000,70600.000,5.00,5,'Cra 5 #5-5',3500.000,5,'2026-01-10 03:01:17'),(6,'','2026-01-15',15000.000,3000.000,0.000,0.000,1,2400.000,20400.000,4.00,6,'Cra 6 #6-6',1500.000,6,'2026-01-10 03:01:17'),(7,'','2026-01-16',80000.000,8000.000,8000.000,0.000,1,12800.000,92800.000,5.00,7,'Cra 7 #7-7',4000.000,7,'2026-01-10 03:01:17'),(8,'','2026-01-17',25000.000,4000.000,2500.000,0.000,1,4000.000,30500.000,4.00,8,'Cra 8 #8-8',2200.000,8,'2026-01-10 03:01:17'),(9,'','2026-01-18',90000.000,9000.000,9000.000,0.000,1,14400.000,104400.000,5.00,9,'Cra 9 #9-9',4500.000,9,'2026-01-10 03:01:17'),(10,'','2026-01-19',35000.000,5000.000,3500.000,0.000,1,5600.000,42100.000,4.00,10,'Cra 10 #10-10',2600.000,10,'2026-01-10 03:01:17');
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos_productos`
--

DROP TABLE IF EXISTS `pedidos_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos_productos` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `cantidad` decimal(9,3) NOT NULL,
  `valor_unitario` decimal(11,3) unsigned DEFAULT NULL,
  `valor_unitario_promocion` decimal(11,3) unsigned DEFAULT NULL,
  `total_teorico` decimal(12,3) unsigned DEFAULT NULL,
  `total_final` decimal(12,3) unsigned DEFAULT NULL,
  `id_promocion` mediumint unsigned DEFAULT NULL,
  `id_producto` int unsigned NOT NULL,
  `id_pedido` mediumint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pp_promocion` (`id_promocion`),
  KEY `fk_pp_producto` (`id_producto`),
  KEY `fk_pp_pedido` (`id_pedido`),
  CONSTRAINT `fk_pp_pedido` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos` (`id`),
  CONSTRAINT `fk_pp_producto` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`),
  CONSTRAINT `fk_pp_promocion` FOREIGN KEY (`id_promocion`) REFERENCES `promociones` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos_productos`
--

LOCK TABLES `pedidos_productos` WRITE;
/*!40000 ALTER TABLE `pedidos_productos` DISABLE KEYS */;
INSERT INTO `pedidos_productos` VALUES (1,2.000,2500.000,2250.000,5000.000,4500.000,1,1,1),(2,1.000,3000.000,2550.000,3000.000,2550.000,2,2,2),(3,3.000,4000.000,3200.000,12000.000,9600.000,3,3,3),(4,2.000,2000.000,1800.000,4000.000,3600.000,4,4,4),(5,1.000,5000.000,4600.000,5000.000,4600.000,5,5,5),(6,4.000,1500.000,1350.000,6000.000,5400.000,6,6,6),(7,2.000,8000.000,6560.000,16000.000,13120.000,7,7,7),(8,1.000,3000.000,2790.000,3000.000,2790.000,8,8,8),(9,1.000,20000.000,15000.000,20000.000,15000.000,9,9,9),(10,2.000,4500.000,4050.000,9000.000,8100.000,10,10,10);
/*!40000 ALTER TABLE `pedidos_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `estado` tinyint unsigned NOT NULL,
  `kit` tinyint unsigned NOT NULL,
  `barcode` varchar(30) DEFAULT NULL,
  `nombre` varchar(60) NOT NULL,
  `presentacion` varchar(25) DEFAULT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `foto` varchar(120) DEFAULT NULL,
  `peso` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,1,0,'0001','Coca Cola','Botella','Bebida gaseosa','coca.jpg',1.50),(2,1,0,'0002','Pepsi','Botella','Bebida gaseosa','pepsi.jpg',1.50),(3,1,0,'0003','Leche Entera','Bolsa','Leche pasteurizada','leche.jpg',1.00),(4,1,0,'0004','Pan Tajado','Paquete','Pan blanco','pan.jpg',0.50),(5,1,0,'0005','Queso','Bloque','Queso campesino','queso.jpg',0.40),(6,1,0,'0006','Arroz','Bolsa','Arroz blanco','arroz.jpg',1.00),(7,1,0,'0007','Pollo','Bandeja','Pollo fresco','pollo.jpg',2.00),(8,1,0,'0008','Jabón','Unidad','Jabón antibacterial','jabon.jpg',0.20),(9,1,0,'0009','Whisky','Botella','Licor importado','whisky.jpg',0.75),(10,1,0,'0010','Vitaminas','Frasco','Suplemento vitamínico','vit.jpg',0.30);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos_categorias`
--

DROP TABLE IF EXISTS `productos_categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos_categorias` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `id_categoria` smallint unsigned NOT NULL,
  `id_producto` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pc_categoria` (`id_categoria`),
  KEY `fk_pc_producto` (`id_producto`),
  CONSTRAINT `fk_pc_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`),
  CONSTRAINT `fk_pc_producto` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos_categorias`
--

LOCK TABLES `productos_categorias` WRITE;
/*!40000 ALTER TABLE `productos_categorias` DISABLE KEYS */;
INSERT INTO `productos_categorias` VALUES (1,1,1),(2,1,2),(3,3,3),(4,5,4),(5,3,5),(6,2,6),(7,4,7),(8,6,8),(9,9,9),(10,10,10);
/*!40000 ALTER TABLE `productos_categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos_stocks`
--

DROP TABLE IF EXISTS `productos_stocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos_stocks` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `cantidad` decimal(8,3) NOT NULL,
  `id_tienda` smallint unsigned NOT NULL,
  `id_producto` int unsigned NOT NULL,
  `fecha_ingreso` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ps_tienda` (`id_tienda`),
  KEY `fk_ps_producto` (`id_producto`),
  CONSTRAINT `fk_ps_producto` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`),
  CONSTRAINT `fk_ps_tienda` FOREIGN KEY (`id_tienda`) REFERENCES `tiendas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos_stocks`
--

LOCK TABLES `productos_stocks` WRITE;
/*!40000 ALTER TABLE `productos_stocks` DISABLE KEYS */;
INSERT INTO `productos_stocks` VALUES (1,100.000,1,1,'2026-01-01'),(2,80.000,1,2,'2026-01-01'),(3,60.000,2,3,'2026-01-02'),(4,50.000,3,4,'2026-01-02'),(5,40.000,4,5,'2026-01-03'),(6,70.000,5,6,'2026-01-03'),(7,30.000,6,7,'2026-01-04'),(8,90.000,7,8,'2026-01-04'),(9,20.000,8,9,'2026-01-05'),(10,25.000,9,10,'2026-01-05');
/*!40000 ALTER TABLE `productos_stocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promociones`
--

DROP TABLE IF EXISTS `promociones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promociones` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `estado` tinyint unsigned NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `imagen` varchar(120) DEFAULT NULL,
  `porcentaje` tinyint unsigned DEFAULT NULL,
  `dias_semana` varchar(21) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promociones`
--

LOCK TABLES `promociones` WRITE;
/*!40000 ALTER TABLE `promociones` DISABLE KEYS */;
INSERT INTO `promociones` VALUES (1,1,'Descuento 10%','promo1.jpg',10,'1110000'),(2,1,'Descuento 15%','promo2.jpg',15,'0001100'),(3,1,'Descuento 20%','promo3.jpg',20,'0000011'),(4,1,'Promo Bebidas','promo4.jpg',12,'1111100'),(5,1,'Promo Lácteos','promo5.jpg',8,'1100000'),(6,1,'Promo Carnes','promo6.jpg',18,'0001000'),(7,1,'Promo Pan','promo7.jpg',5,'0000100'),(8,1,'Promo Hogar','promo8.jpg',7,'1111000'),(9,1,'Promo Licores','promo9.jpg',25,'0000010'),(10,1,'Promo Salud','promo10.jpg',10,'1111100');
/*!40000 ALTER TABLE `promociones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiendas`
--

DROP TABLE IF EXISTS `tiendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tiendas` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `estado` tinyint unsigned NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `direccion` varchar(120) DEFAULT NULL,
  `direccion_anexo` varchar(40) DEFAULT NULL,
  `direccion_barrio` varchar(25) DEFAULT NULL,
  `calificacion` decimal(3,2) DEFAULT NULL,
  `calificacion_cantidad` mediumint unsigned DEFAULT NULL,
  `impuestos` tinyint unsigned DEFAULT NULL,
  `dias_trabajados` varchar(21) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiendas`
--

LOCK TABLES `tiendas` WRITE;
/*!40000 ALTER TABLE `tiendas` DISABLE KEYS */;
INSERT INTO `tiendas` VALUES (1,1,'Tienda Actualizada','Tienda principal','3109998888','Nueva direccion 123','Local 1','Centro',4.50,120,1,'L-M-M-J-V'),(2,1,'Market Norte','Sucursal norte','3002222222','Av 30 #45-20','Local 5','Norte',4.20,98,1,'L-M-M-J-V-S'),(3,1,'Market Sur','Sucursal sur','3003333333','Cl 50 #20-30','','Sur',4.00,80,1,'L-M-M-J-V'),(4,1,'Market Este','Sucursal este','3004444444','Cra 8 #60-15','','Este',4.70,150,1,'L-M-M-J-V-S'),(5,1,'Market Oeste','Sucursal oeste','3005555555','Cl 70 #10-40','','Oeste',4.30,110,1,'L-M-M-J-V'),(6,1,'Mini Market A','Tienda pequeña','3006666666','Cra 15 #22-11','','Centro',4.10,60,1,'L-M-M-J-V'),(7,1,'Mini Market B','Tienda express','3007777777','Cl 18 #33-22','','Norte',4.00,55,1,'L-M-M-J-V'),(8,1,'Super Market X','Supermercado','3008888888','Av 40 #10-90','','Sur',4.80,200,1,'L-D'),(9,1,'Super Market Y','Gran superficie','3009999999','Cra 50 #80-10','','Oeste',4.60,175,1,'L-D'),(10,1,'Market Express','Compra rápida','3010000000','Cl 12 #8-18','','Centro',4.20,90,1,'L-M-M-J-V'),(11,1,'Tienda Prueba','Probando Postman','3000000000','Calle 1','Local 1','Centro',4.20,10,1,'L-M-M-J-V');
/*!40000 ALTER TABLE `tiendas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiendas_promociones`
--

DROP TABLE IF EXISTS `tiendas_promociones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tiendas_promociones` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `estado` tinyint unsigned NOT NULL,
  `inicio` date NOT NULL,
  `fin` date NOT NULL,
  `id_tienda` smallint unsigned NOT NULL,
  `id_promocion` mediumint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tp_tienda` (`id_tienda`),
  KEY `fk_tp_promocion` (`id_promocion`),
  CONSTRAINT `fk_tp_promocion` FOREIGN KEY (`id_promocion`) REFERENCES `promociones` (`id`),
  CONSTRAINT `fk_tp_tienda` FOREIGN KEY (`id_tienda`) REFERENCES `tiendas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiendas_promociones`
--

LOCK TABLES `tiendas_promociones` WRITE;
/*!40000 ALTER TABLE `tiendas_promociones` DISABLE KEYS */;
INSERT INTO `tiendas_promociones` VALUES (1,1,'2026-01-01','2026-01-10',1,1),(2,1,'2026-01-01','2026-01-15',2,2),(3,1,'2026-01-05','2026-01-20',3,3),(4,1,'2026-01-03','2026-01-12',4,4),(5,1,'2026-01-02','2026-01-18',5,5),(6,1,'2026-01-04','2026-01-14',6,6),(7,1,'2026-01-06','2026-01-16',7,7),(8,1,'2026-01-07','2026-01-17',8,8),(9,1,'2026-01-08','2026-01-18',9,9),(10,1,'2026-01-09','2026-01-19',10,10);
/*!40000 ALTER TABLE `tiendas_promociones` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-12 18:34:02
