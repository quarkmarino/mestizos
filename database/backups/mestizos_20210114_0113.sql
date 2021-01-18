-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: 172.24.0.4    Database: mestizos
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_rows` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int unsigned NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_rows`
--

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` VALUES (1,1,'id','number','ID',1,0,0,0,0,0,NULL,1),(2,1,'name','text','Name',1,1,1,1,1,1,NULL,2),(3,1,'email','text','Email',1,1,1,1,1,1,NULL,3),(4,1,'password','password','Password',1,0,0,1,1,0,NULL,4),(5,1,'remember_token','text','Remember Token',0,0,0,0,0,0,NULL,5),(6,1,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,6),(7,1,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),(8,1,'avatar','image','Avatar',0,1,1,1,1,1,NULL,8),(9,1,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}',10),(10,1,'user_belongstomany_role_relationship','relationship','Roles',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',11),(11,1,'settings','hidden','Settings',0,0,0,0,0,0,NULL,12),(12,2,'id','number','ID',1,0,0,0,0,0,NULL,1),(13,2,'name','text','Name',1,1,1,1,1,1,NULL,2),(14,2,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(15,2,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(16,3,'id','number','ID',1,0,0,0,0,0,NULL,1),(17,3,'name','text','Name',1,1,1,1,1,1,NULL,2),(18,3,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(19,3,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(20,3,'display_name','text','Display Name',1,1,1,1,1,1,NULL,5),(21,1,'role_id','text','Role',1,1,1,1,1,1,NULL,9),(22,7,'id','text','Id',1,0,0,0,0,0,'{}',1),(23,7,'nombre','text','Nombre',1,1,1,1,1,1,'{}',5),(24,7,'RFC','text','RFC',1,1,1,1,1,1,'{}',6),(25,7,'tipo','select_dropdown','Tipo',1,1,1,1,1,1,'{\"default\":\"trabajador\",\"options\":{\"director\":\"Director\",\"trabajador\":\"Trabajador\"}}',7),(26,7,'nivel_academico','text','Nivel Academico',0,1,1,1,1,1,'{}',8),(27,7,'direcciones_id','text','Direcciones Id',1,1,1,1,1,1,'{}',2),(28,7,'sucursales_id','text','Sucursales Id',1,1,1,1,1,1,'{}',3),(29,7,'equipos_id','text','Equipos Id',1,1,1,1,1,1,'{}',4),(30,7,'created_at','text','Created At',0,0,0,0,0,0,'{}',9),(31,7,'updated_at','text','Updated At',0,0,0,0,0,0,'{}',10),(32,7,'mestizos_empleado_belongsto_data_row_relationship','relationship','data_rows',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Direccion\",\"table\":\"data_rows\",\"type\":\"belongsTo\",\"column\":\"direcciones_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}',11),(33,8,'id','text','Id',1,0,0,0,0,0,'{}',1),(34,8,'ciudad','text','Ciudad',1,1,1,1,1,1,'{}',2),(35,8,'pais','text','Pais',1,1,1,1,1,1,'{}',3),(36,8,'colonia','text','Colonia',1,1,1,1,1,1,'{}',4),(37,8,'calle','text','Calle',1,1,1,1,1,1,'{}',5),(38,8,'numero','text','Numero',1,1,1,1,1,1,'{}',6),(39,8,'codigo_postal','text','Codigo Postal',1,1,1,1,1,1,'{}',7),(40,8,'created_at','text','Created At',0,0,0,0,0,0,'{}',8),(41,8,'updated_at','text','Updated At',0,0,0,0,0,0,'{}',9),(42,9,'id','text','Id',1,0,0,0,0,0,'{}',1),(43,9,'empleados_id','text','Empleados Id',1,1,1,1,1,1,'{}',2),(44,9,'created_at','text','Created At',0,0,0,0,0,0,'{}',3),(45,9,'updated_at','text','Updated At',0,0,0,0,0,0,'{}',4),(46,11,'id','text','Id',1,0,0,0,0,0,'{}',1),(47,11,'costo','text','Costo',1,1,1,1,1,1,'{}',3),(48,11,'fecha_inicio','text','Fecha Inicio',1,1,1,1,1,1,'{}',4),(49,11,'fecha_entrega','text','Fecha Entrega',1,1,1,1,1,1,'{}',5),(50,11,'clientes_id','text','Clientes Id',1,1,1,1,1,1,'{}',2),(51,11,'created_at','text','Created At',0,0,0,0,0,0,'{}',6),(52,11,'updated_at','text','Updated At',0,0,0,0,0,0,'{}',7),(53,12,'id','text','Id',1,0,0,0,0,0,'{}',1),(54,12,'tipo','text','Tipo',1,1,1,1,1,1,'{}',3),(55,12,'cantidad','text','Cantidad',1,1,1,1,1,1,'{}',4),(56,12,'costo_unitario','text','Costo Unitario',1,1,1,1,1,1,'{}',5),(57,12,'especificaciones','text','Especificaciones',0,1,1,1,1,1,'{}',6),(58,12,'ordenes_id','text','Ordenes Id',1,1,1,1,1,1,'{}',2),(59,12,'created_at','text','Created At',0,0,0,0,0,0,'{}',7),(60,12,'updated_at','text','Updated At',0,0,0,0,0,0,'{}',8),(61,13,'id','text','Id',1,0,0,0,0,0,'{}',1),(62,13,'tipo','text','Tipo',1,1,1,1,1,1,'{}',2),(63,13,'disponibilidad','text','Disponibilidad',1,1,1,1,1,1,'{}',3),(64,13,'especificaciones','text','Especificaciones',0,1,1,1,1,1,'{}',4),(65,13,'created_at','text','Created At',0,0,0,0,0,0,'{}',5),(66,13,'updated_at','text','Updated At',0,0,0,0,0,0,'{}',6),(67,14,'id','text','Id',1,0,0,0,0,0,'{}',1),(68,14,'tipo','text','Tipo',1,1,1,1,1,1,'{}',3),(69,14,'costo','text','Costo',1,1,1,1,1,1,'{}',4),(70,14,'especificaciones','text','Especificaciones',0,1,1,1,1,1,'{}',5),(71,14,'ordenes_id','text','Ordenes Id',1,1,1,1,1,1,'{}',2),(72,14,'created_at','text','Created At',0,0,0,0,0,0,'{}',6),(73,14,'updated_at','text','Updated At',0,0,0,0,0,0,'{}',7),(74,15,'id','text','Id',1,0,0,0,0,0,'{}',1),(75,15,'direcciones_id','text','Direcciones Id',1,1,1,1,1,1,'{}',2),(76,15,'nombre','text','Nombre',1,1,1,1,1,1,'{}',3),(77,15,'created_at','text','Created At',0,0,0,0,0,0,'{}',4),(78,15,'updated_at','text','Updated At',0,0,0,0,0,0,'{}',5),(79,16,'id','text','Id',1,0,0,0,0,0,'{}',1),(80,16,'nombre','text','Nombre',1,1,1,1,1,1,'{}',4),(81,16,'RFC','text','RFC',1,1,1,1,1,1,'{}',5),(82,16,'direcciones_id','text','Direcciones Id',1,1,1,1,1,1,'{}',2),(83,16,'sucursales_id','text','Sucursales Id',1,1,1,1,1,1,'{}',3),(84,16,'created_at','text','Created At',0,0,0,0,0,0,'{}',6),(85,16,'updated_at','text','Updated At',0,0,0,0,0,0,'{}',7),(86,17,'id','text','Id',1,0,0,0,0,0,'{}',1),(87,17,'numero_de_serie','text','Numero De Serie',1,1,1,1,1,1,'{}',2),(88,17,'tipo','text','Tipo',1,1,1,1,1,1,'{}',3),(89,17,'especificaciones','text','Especificaciones',0,1,1,1,1,1,'{}',4),(90,17,'created_at','text','Created At',0,0,0,0,0,0,'{}',5),(91,17,'updated_at','text','Updated At',0,0,0,0,0,0,'{}',6);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_types`
--

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` VALUES (1,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','TCG\\Voyager\\Http\\Controllers\\VoyagerUserController','',1,0,NULL,'2021-01-13 01:48:02','2021-01-13 01:48:02'),(2,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,NULL,'2021-01-13 01:48:02','2021-01-13 01:48:02'),(3,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController','',1,0,NULL,'2021-01-13 01:48:02','2021-01-13 01:48:02'),(7,'mestizos_empleados','empleados','Empleado','Empleados',NULL,'App\\Models\\Empleado',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-01-13 04:12:00','2021-01-14 04:11:42'),(8,'mestizos_direcciones','direcciones','Direccion','Direcciones',NULL,'App\\Models\\Direccion',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-01-13 04:24:23','2021-01-13 04:26:23'),(9,'mestizos_equipos','equipos','Equipo','Equipos',NULL,'App\\Models\\Equipo',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2021-01-14 04:11:10','2021-01-14 04:11:10'),(11,'mestizos_ordenes','ordenes','Orden','Ordenes',NULL,'App\\Models\\Orden',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2021-01-14 04:13:00','2021-01-14 04:13:00'),(12,'mestizos_productos','mestizos-productos','Producto','Productos',NULL,'App\\Models\\Producto',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2021-01-14 04:13:34','2021-01-14 04:13:34'),(13,'mestizos_recursos','recursos','Recurso','Recursos',NULL,'App\\Models\\Recurso',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2021-01-14 04:14:33','2021-01-14 04:14:33'),(14,'mestizos_servicios','servicios','Servicio','Servicios',NULL,'App\\Models\\Servicio',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2021-01-14 04:15:07','2021-01-14 04:15:07'),(15,'mestizos_sucursales','sucursales','Sucursal','Sucursales',NULL,'App\\Models\\Sucursal',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2021-01-14 04:15:40','2021-01-14 04:15:40'),(16,'mestizos_clientes','clientes','Cliente','Clientes',NULL,'App\\Models\\Cliente',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2021-01-14 04:16:19','2021-01-14 04:16:19'),(17,'mestizos_activos','activos','Activo','Activos',NULL,'App\\Models\\Activo',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2021-01-14 04:16:48','2021-01-14 04:16:48');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_items` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,1,'Dashboard','','_self','voyager-boat',NULL,NULL,1,'2021-01-13 01:48:02','2021-01-13 01:48:02','voyager.dashboard',NULL),(2,1,'Media','','_self','voyager-images',NULL,NULL,5,'2021-01-13 01:48:02','2021-01-13 01:48:02','voyager.media.index',NULL),(3,1,'Users','','_self','voyager-person',NULL,NULL,3,'2021-01-13 01:48:02','2021-01-13 01:48:02','voyager.users.index',NULL),(4,1,'Roles','','_self','voyager-lock',NULL,NULL,2,'2021-01-13 01:48:02','2021-01-13 01:48:02','voyager.roles.index',NULL),(5,1,'Tools','','_self','voyager-tools',NULL,NULL,9,'2021-01-13 01:48:02','2021-01-13 01:48:02',NULL,NULL),(6,1,'Menu Builder','','_self','voyager-list',NULL,5,10,'2021-01-13 01:48:02','2021-01-13 01:48:02','voyager.menus.index',NULL),(7,1,'Database','','_self','voyager-data',NULL,5,11,'2021-01-13 01:48:02','2021-01-13 01:48:02','voyager.database.index',NULL),(8,1,'Compass','','_self','voyager-compass',NULL,5,12,'2021-01-13 01:48:02','2021-01-13 01:48:02','voyager.compass.index',NULL),(9,1,'BREAD','','_self','voyager-bread',NULL,5,13,'2021-01-13 01:48:02','2021-01-13 01:48:02','voyager.bread.index',NULL),(10,1,'Settings','','_self','voyager-settings',NULL,NULL,14,'2021-01-13 01:48:02','2021-01-13 01:48:02','voyager.settings.index',NULL),(11,1,'Hooks','','_self','voyager-hook',NULL,5,13,'2021-01-13 01:48:03','2021-01-13 01:48:03','voyager.hooks',NULL),(13,1,'Empleados','','_self',NULL,NULL,NULL,16,'2021-01-13 04:12:00','2021-01-13 04:12:00','voyager.empleados.index',NULL),(14,1,'Direcciones','','_self',NULL,NULL,NULL,17,'2021-01-13 04:24:23','2021-01-13 04:24:23','voyager.direcciones.index',NULL),(15,1,'Equipos','','_self',NULL,NULL,NULL,18,'2021-01-14 04:11:10','2021-01-14 04:11:10','voyager.equipos.index',NULL),(16,1,'Ordenes','','_self',NULL,NULL,NULL,19,'2021-01-14 04:13:00','2021-01-14 04:13:00','voyager.ordenes.index',NULL),(17,1,'Productos','','_self',NULL,NULL,NULL,20,'2021-01-14 04:13:34','2021-01-14 04:13:34','voyager.mestizos-productos.index',NULL),(18,1,'Recursos','','_self',NULL,NULL,NULL,21,'2021-01-14 04:14:33','2021-01-14 04:14:33','voyager.recursos.index',NULL),(19,1,'Servicios','','_self',NULL,NULL,NULL,22,'2021-01-14 04:15:07','2021-01-14 04:15:07','voyager.servicios.index',NULL),(20,1,'Sucursales','','_self',NULL,NULL,NULL,23,'2021-01-14 04:15:40','2021-01-14 04:15:40','voyager.sucursales.index',NULL),(21,1,'Clientes','','_self',NULL,NULL,NULL,24,'2021-01-14 04:16:19','2021-01-14 04:16:19','voyager.clientes.index',NULL),(22,1,'Activos','','_self',NULL,NULL,NULL,25,'2021-01-14 04:16:48','2021-01-14 04:16:48','voyager.activos.index',NULL);
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'admin','2021-01-13 01:48:02','2021-01-13 01:48:02');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mestizos_activos`
--

DROP TABLE IF EXISTS `mestizos_activos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mestizos_activos` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `numero_de_serie` varchar(255) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `especificaciones` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mestizos_activos`
--

LOCK TABLES `mestizos_activos` WRITE;
/*!40000 ALTER TABLE `mestizos_activos` DISABLE KEYS */;
/*!40000 ALTER TABLE `mestizos_activos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mestizos_clientes`
--

DROP TABLE IF EXISTS `mestizos_clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mestizos_clientes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `RFC` varchar(255) NOT NULL,
  `direcciones_id` int unsigned NOT NULL,
  `sucursales_id` int unsigned NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `RFC_UNIQUE` (`RFC`),
  KEY `fk_clientes_direcciones1_idx` (`direcciones_id`),
  KEY `fk_clientes_sucursales1_idx` (`sucursales_id`),
  CONSTRAINT `fk_clientes_direcciones1` FOREIGN KEY (`direcciones_id`) REFERENCES `mestizos_direcciones` (`id`),
  CONSTRAINT `fk_clientes_sucursales1` FOREIGN KEY (`sucursales_id`) REFERENCES `mestizos_sucursales` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mestizos_clientes`
--

LOCK TABLES `mestizos_clientes` WRITE;
/*!40000 ALTER TABLE `mestizos_clientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `mestizos_clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mestizos_direcciones`
--

DROP TABLE IF EXISTS `mestizos_direcciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mestizos_direcciones` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `pais` varchar(255) NOT NULL,
  `ciudad` varchar(255) NOT NULL,
  `colonia` varchar(255) NOT NULL,
  `calle` varchar(255) NOT NULL,
  `numero` varchar(255) NOT NULL,
  `codigo_postal` int NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mestizos_direcciones`
--

LOCK TABLES `mestizos_direcciones` WRITE;
/*!40000 ALTER TABLE `mestizos_direcciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `mestizos_direcciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mestizos_empleados`
--

DROP TABLE IF EXISTS `mestizos_empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mestizos_empleados` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `RFC` varchar(255) NOT NULL,
  `tipo` enum('director','trabajador') NOT NULL,
  `puesto` varchar(255) NOT NULL,
  `nivel_academico` varchar(255) DEFAULT NULL,
  `direcciones_id` int unsigned NOT NULL,
  `sucursales_id` int unsigned NOT NULL,
  `equipos_id` int unsigned NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_empleados_direcciones1_idx` (`direcciones_id`),
  KEY `fk_empleados_sucursales1_idx` (`sucursales_id`),
  KEY `fk_empleados_equipos1_idx` (`equipos_id`),
  CONSTRAINT `fk_empleados_direcciones1` FOREIGN KEY (`direcciones_id`) REFERENCES `mestizos_direcciones` (`id`),
  CONSTRAINT `fk_empleados_equipos1` FOREIGN KEY (`equipos_id`) REFERENCES `mestizos_equipos` (`id`),
  CONSTRAINT `fk_empleados_sucursales1` FOREIGN KEY (`sucursales_id`) REFERENCES `mestizos_sucursales` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mestizos_empleados`
--

LOCK TABLES `mestizos_empleados` WRITE;
/*!40000 ALTER TABLE `mestizos_empleados` DISABLE KEYS */;
/*!40000 ALTER TABLE `mestizos_empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mestizos_equipos`
--

DROP TABLE IF EXISTS `mestizos_equipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mestizos_equipos` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `empleados_id` int unsigned NOT NULL,
  `especialidad` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_equipos_empleados1_idx` (`empleados_id`),
  CONSTRAINT `fk_equipos_empleados1` FOREIGN KEY (`empleados_id`) REFERENCES `mestizos_empleados` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mestizos_equipos`
--

LOCK TABLES `mestizos_equipos` WRITE;
/*!40000 ALTER TABLE `mestizos_equipos` DISABLE KEYS */;
/*!40000 ALTER TABLE `mestizos_equipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mestizos_equipos_consume_recursos`
--

DROP TABLE IF EXISTS `mestizos_equipos_consume_recursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mestizos_equipos_consume_recursos` (
  `equipos_id` int unsigned NOT NULL,
  `recursos_id` int unsigned NOT NULL,
  `cantidad` int NOT NULL,
  PRIMARY KEY (`equipos_id`,`recursos_id`),
  KEY `fk_equipos_has_recursos_recursos1_idx` (`recursos_id`),
  KEY `fk_equipos_has_recursos_equipos1_idx` (`equipos_id`),
  CONSTRAINT `fk_equipos_has_recursos_equipos1` FOREIGN KEY (`equipos_id`) REFERENCES `mestizos_equipos` (`id`),
  CONSTRAINT `fk_equipos_has_recursos_recursos1` FOREIGN KEY (`recursos_id`) REFERENCES `mestizos_recursos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mestizos_equipos_consume_recursos`
--

LOCK TABLES `mestizos_equipos_consume_recursos` WRITE;
/*!40000 ALTER TABLE `mestizos_equipos_consume_recursos` DISABLE KEYS */;
/*!40000 ALTER TABLE `mestizos_equipos_consume_recursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mestizos_equipos_tiene_productos`
--

DROP TABLE IF EXISTS `mestizos_equipos_tiene_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mestizos_equipos_tiene_productos` (
  `equipos_id` int unsigned NOT NULL,
  `productos_id` int unsigned NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `fecha_termino` datetime NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`equipos_id`,`productos_id`),
  KEY `fk_equipos_has_productos_productos1_idx` (`productos_id`),
  KEY `fk_equipos_has_productos_equipos1_idx` (`equipos_id`),
  CONSTRAINT `fk_equipos_has_productos_equipos1` FOREIGN KEY (`equipos_id`) REFERENCES `mestizos_equipos` (`id`),
  CONSTRAINT `fk_equipos_has_productos_productos1` FOREIGN KEY (`productos_id`) REFERENCES `mestizos_productos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mestizos_equipos_tiene_productos`
--

LOCK TABLES `mestizos_equipos_tiene_productos` WRITE;
/*!40000 ALTER TABLE `mestizos_equipos_tiene_productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `mestizos_equipos_tiene_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mestizos_equipos_tiene_servicios`
--

DROP TABLE IF EXISTS `mestizos_equipos_tiene_servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mestizos_equipos_tiene_servicios` (
  `equipos_id` int unsigned NOT NULL COMMENT '																																							',
  `servicios_id` int unsigned NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `fecha_termino` datetime NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`equipos_id`,`servicios_id`),
  KEY `fk_equipos_has_servicios_servicios1_idx` (`servicios_id`),
  KEY `fk_equipos_has_servicios_equipos1_idx` (`equipos_id`),
  CONSTRAINT `fk_equipos_has_servicios_equipos1` FOREIGN KEY (`equipos_id`) REFERENCES `mestizos_equipos` (`id`),
  CONSTRAINT `fk_equipos_has_servicios_servicios1` FOREIGN KEY (`servicios_id`) REFERENCES `mestizos_servicios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mestizos_equipos_tiene_servicios`
--

LOCK TABLES `mestizos_equipos_tiene_servicios` WRITE;
/*!40000 ALTER TABLE `mestizos_equipos_tiene_servicios` DISABLE KEYS */;
/*!40000 ALTER TABLE `mestizos_equipos_tiene_servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mestizos_equipos_usa_activos`
--

DROP TABLE IF EXISTS `mestizos_equipos_usa_activos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mestizos_equipos_usa_activos` (
  `equipos_id` int unsigned NOT NULL,
  `activos_id` int unsigned NOT NULL,
  `hora_inicio` time NOT NULL,
  `hora_fin` time NOT NULL,
  PRIMARY KEY (`equipos_id`,`activos_id`),
  KEY `fk_equipos_has_activos_activos1_idx` (`activos_id`),
  KEY `fk_equipos_has_activos_equipos1_idx` (`equipos_id`),
  CONSTRAINT `fk_equipos_has_activos_activos1` FOREIGN KEY (`activos_id`) REFERENCES `mestizos_activos` (`id`),
  CONSTRAINT `fk_equipos_has_activos_equipos1` FOREIGN KEY (`equipos_id`) REFERENCES `mestizos_equipos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mestizos_equipos_usa_activos`
--

LOCK TABLES `mestizos_equipos_usa_activos` WRITE;
/*!40000 ALTER TABLE `mestizos_equipos_usa_activos` DISABLE KEYS */;
/*!40000 ALTER TABLE `mestizos_equipos_usa_activos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mestizos_ordenes`
--

DROP TABLE IF EXISTS `mestizos_ordenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mestizos_ordenes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `costo` int NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `fecha_entrega` datetime NOT NULL,
  `clientes_id` int unsigned NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ordenes_clientes1_idx` (`clientes_id`),
  CONSTRAINT `fk_ordenes_clientes1` FOREIGN KEY (`clientes_id`) REFERENCES `mestizos_clientes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mestizos_ordenes`
--

LOCK TABLES `mestizos_ordenes` WRITE;
/*!40000 ALTER TABLE `mestizos_ordenes` DISABLE KEYS */;
/*!40000 ALTER TABLE `mestizos_ordenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mestizos_productos`
--

DROP TABLE IF EXISTS `mestizos_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mestizos_productos` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `tipo` enum('taza','volante','lona','revista','tarjeta','playera') NOT NULL COMMENT '"taza" , "volante", "lona", "revista", "tarjeta", "playera"',
  `cantidad` int NOT NULL DEFAULT '1',
  `costo_unitario` int NOT NULL,
  `especificaciones` text,
  `ordenes_id` int unsigned NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_productos_ordenes1_idx` (`ordenes_id`),
  CONSTRAINT `fk_productos_ordenes1` FOREIGN KEY (`ordenes_id`) REFERENCES `mestizos_ordenes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mestizos_productos`
--

LOCK TABLES `mestizos_productos` WRITE;
/*!40000 ALTER TABLE `mestizos_productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `mestizos_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mestizos_recursos`
--

DROP TABLE IF EXISTS `mestizos_recursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mestizos_recursos` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) NOT NULL,
  `disponibilidad` int NOT NULL,
  `especificaciones` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mestizos_recursos`
--

LOCK TABLES `mestizos_recursos` WRITE;
/*!40000 ALTER TABLE `mestizos_recursos` DISABLE KEYS */;
/*!40000 ALTER TABLE `mestizos_recursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mestizos_servicios`
--

DROP TABLE IF EXISTS `mestizos_servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mestizos_servicios` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `tipo` enum('logo','marca') NOT NULL,
  `costo` int NOT NULL,
  `especificaciones` text,
  `ordenes_id` int unsigned NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_servicios_ordenes1_idx` (`ordenes_id`),
  CONSTRAINT `fk_servicios_ordenes1` FOREIGN KEY (`ordenes_id`) REFERENCES `mestizos_ordenes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mestizos_servicios`
--

LOCK TABLES `mestizos_servicios` WRITE;
/*!40000 ALTER TABLE `mestizos_servicios` DISABLE KEYS */;
/*!40000 ALTER TABLE `mestizos_servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mestizos_sucursales`
--

DROP TABLE IF EXISTS `mestizos_sucursales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mestizos_sucursales` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `direcciones_id` int unsigned NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`),
  KEY `fk_sucursales_direcciones1_idx` (`direcciones_id`),
  CONSTRAINT `fk_sucursales_direcciones1` FOREIGN KEY (`direcciones_id`) REFERENCES `mestizos_direcciones` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mestizos_sucursales`
--

LOCK TABLES `mestizos_sucursales` WRITE;
/*!40000 ALTER TABLE `mestizos_sucursales` DISABLE KEYS */;
/*!40000 ALTER TABLE `mestizos_sucursales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_01_01_000000_add_voyager_user_fields',1),(4,'2016_01_01_000000_create_data_types_table',1),(5,'2016_05_19_173453_create_menu_table',1),(6,'2016_10_21_190000_create_roles_table',1),(7,'2016_10_21_190000_create_settings_table',1),(8,'2016_11_30_135954_create_permission_table',1),(9,'2016_11_30_141208_create_permission_role_table',1),(10,'2016_12_26_201236_data_types__add__server_side',1),(11,'2017_01_13_000000_add_route_to_menu_items_table',1),(12,'2017_01_14_005015_create_translations_table',1),(13,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),(14,'2017_03_06_000000_add_controller_to_data_types_table',1),(15,'2017_04_21_000000_add_order_to_data_rows_table',1),(16,'2017_07_05_210000_add_policyname_to_data_types_table',1),(17,'2017_08_05_000000_add_group_to_settings_table',1),(18,'2017_11_26_013050_add_user_role_relationship',1),(19,'2017_11_26_015000_create_user_roles_table',1),(20,'2018_03_11_000000_add_user_settings',1),(21,'2018_03_14_000000_add_details_to_data_types_table',1),(22,'2018_03_16_000000_make_settings_value_nullable',1),(23,'2019_08_19_000000_create_failed_jobs_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission_role` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),(71,1),(72,1),(73,1),(74,1),(75,1),(76,1),(77,1),(78,1),(79,1),(80,1),(81,1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'browse_admin',NULL,'2021-01-13 01:48:02','2021-01-13 01:48:02'),(2,'browse_bread',NULL,'2021-01-13 01:48:02','2021-01-13 01:48:02'),(3,'browse_database',NULL,'2021-01-13 01:48:02','2021-01-13 01:48:02'),(4,'browse_media',NULL,'2021-01-13 01:48:02','2021-01-13 01:48:02'),(5,'browse_compass',NULL,'2021-01-13 01:48:02','2021-01-13 01:48:02'),(6,'browse_menus','menus','2021-01-13 01:48:02','2021-01-13 01:48:02'),(7,'read_menus','menus','2021-01-13 01:48:02','2021-01-13 01:48:02'),(8,'edit_menus','menus','2021-01-13 01:48:02','2021-01-13 01:48:02'),(9,'add_menus','menus','2021-01-13 01:48:02','2021-01-13 01:48:02'),(10,'delete_menus','menus','2021-01-13 01:48:02','2021-01-13 01:48:02'),(11,'browse_roles','roles','2021-01-13 01:48:02','2021-01-13 01:48:02'),(12,'read_roles','roles','2021-01-13 01:48:02','2021-01-13 01:48:02'),(13,'edit_roles','roles','2021-01-13 01:48:02','2021-01-13 01:48:02'),(14,'add_roles','roles','2021-01-13 01:48:03','2021-01-13 01:48:03'),(15,'delete_roles','roles','2021-01-13 01:48:03','2021-01-13 01:48:03'),(16,'browse_users','users','2021-01-13 01:48:03','2021-01-13 01:48:03'),(17,'read_users','users','2021-01-13 01:48:03','2021-01-13 01:48:03'),(18,'edit_users','users','2021-01-13 01:48:03','2021-01-13 01:48:03'),(19,'add_users','users','2021-01-13 01:48:03','2021-01-13 01:48:03'),(20,'delete_users','users','2021-01-13 01:48:03','2021-01-13 01:48:03'),(21,'browse_settings','settings','2021-01-13 01:48:03','2021-01-13 01:48:03'),(22,'read_settings','settings','2021-01-13 01:48:03','2021-01-13 01:48:03'),(23,'edit_settings','settings','2021-01-13 01:48:03','2021-01-13 01:48:03'),(24,'add_settings','settings','2021-01-13 01:48:03','2021-01-13 01:48:03'),(25,'delete_settings','settings','2021-01-13 01:48:03','2021-01-13 01:48:03'),(26,'browse_hooks',NULL,'2021-01-13 01:48:03','2021-01-13 01:48:03'),(32,'browse_mestizos_empleados','mestizos_empleados','2021-01-13 04:12:00','2021-01-13 04:12:00'),(33,'read_mestizos_empleados','mestizos_empleados','2021-01-13 04:12:00','2021-01-13 04:12:00'),(34,'edit_mestizos_empleados','mestizos_empleados','2021-01-13 04:12:00','2021-01-13 04:12:00'),(35,'add_mestizos_empleados','mestizos_empleados','2021-01-13 04:12:00','2021-01-13 04:12:00'),(36,'delete_mestizos_empleados','mestizos_empleados','2021-01-13 04:12:00','2021-01-13 04:12:00'),(37,'browse_mestizos_direcciones','mestizos_direcciones','2021-01-13 04:24:23','2021-01-13 04:24:23'),(38,'read_mestizos_direcciones','mestizos_direcciones','2021-01-13 04:24:23','2021-01-13 04:24:23'),(39,'edit_mestizos_direcciones','mestizos_direcciones','2021-01-13 04:24:23','2021-01-13 04:24:23'),(40,'add_mestizos_direcciones','mestizos_direcciones','2021-01-13 04:24:23','2021-01-13 04:24:23'),(41,'delete_mestizos_direcciones','mestizos_direcciones','2021-01-13 04:24:23','2021-01-13 04:24:23'),(42,'browse_mestizos_equipos','mestizos_equipos','2021-01-14 04:11:10','2021-01-14 04:11:10'),(43,'read_mestizos_equipos','mestizos_equipos','2021-01-14 04:11:10','2021-01-14 04:11:10'),(44,'edit_mestizos_equipos','mestizos_equipos','2021-01-14 04:11:10','2021-01-14 04:11:10'),(45,'add_mestizos_equipos','mestizos_equipos','2021-01-14 04:11:10','2021-01-14 04:11:10'),(46,'delete_mestizos_equipos','mestizos_equipos','2021-01-14 04:11:10','2021-01-14 04:11:10'),(47,'browse_mestizos_ordenes','mestizos_ordenes','2021-01-14 04:13:00','2021-01-14 04:13:00'),(48,'read_mestizos_ordenes','mestizos_ordenes','2021-01-14 04:13:00','2021-01-14 04:13:00'),(49,'edit_mestizos_ordenes','mestizos_ordenes','2021-01-14 04:13:00','2021-01-14 04:13:00'),(50,'add_mestizos_ordenes','mestizos_ordenes','2021-01-14 04:13:00','2021-01-14 04:13:00'),(51,'delete_mestizos_ordenes','mestizos_ordenes','2021-01-14 04:13:00','2021-01-14 04:13:00'),(52,'browse_mestizos_productos','mestizos_productos','2021-01-14 04:13:34','2021-01-14 04:13:34'),(53,'read_mestizos_productos','mestizos_productos','2021-01-14 04:13:34','2021-01-14 04:13:34'),(54,'edit_mestizos_productos','mestizos_productos','2021-01-14 04:13:34','2021-01-14 04:13:34'),(55,'add_mestizos_productos','mestizos_productos','2021-01-14 04:13:34','2021-01-14 04:13:34'),(56,'delete_mestizos_productos','mestizos_productos','2021-01-14 04:13:34','2021-01-14 04:13:34'),(57,'browse_mestizos_recursos','mestizos_recursos','2021-01-14 04:14:33','2021-01-14 04:14:33'),(58,'read_mestizos_recursos','mestizos_recursos','2021-01-14 04:14:33','2021-01-14 04:14:33'),(59,'edit_mestizos_recursos','mestizos_recursos','2021-01-14 04:14:33','2021-01-14 04:14:33'),(60,'add_mestizos_recursos','mestizos_recursos','2021-01-14 04:14:33','2021-01-14 04:14:33'),(61,'delete_mestizos_recursos','mestizos_recursos','2021-01-14 04:14:33','2021-01-14 04:14:33'),(62,'browse_mestizos_servicios','mestizos_servicios','2021-01-14 04:15:07','2021-01-14 04:15:07'),(63,'read_mestizos_servicios','mestizos_servicios','2021-01-14 04:15:07','2021-01-14 04:15:07'),(64,'edit_mestizos_servicios','mestizos_servicios','2021-01-14 04:15:07','2021-01-14 04:15:07'),(65,'add_mestizos_servicios','mestizos_servicios','2021-01-14 04:15:07','2021-01-14 04:15:07'),(66,'delete_mestizos_servicios','mestizos_servicios','2021-01-14 04:15:07','2021-01-14 04:15:07'),(67,'browse_mestizos_sucursales','mestizos_sucursales','2021-01-14 04:15:40','2021-01-14 04:15:40'),(68,'read_mestizos_sucursales','mestizos_sucursales','2021-01-14 04:15:40','2021-01-14 04:15:40'),(69,'edit_mestizos_sucursales','mestizos_sucursales','2021-01-14 04:15:40','2021-01-14 04:15:40'),(70,'add_mestizos_sucursales','mestizos_sucursales','2021-01-14 04:15:40','2021-01-14 04:15:40'),(71,'delete_mestizos_sucursales','mestizos_sucursales','2021-01-14 04:15:40','2021-01-14 04:15:40'),(72,'browse_mestizos_clientes','mestizos_clientes','2021-01-14 04:16:19','2021-01-14 04:16:19'),(73,'read_mestizos_clientes','mestizos_clientes','2021-01-14 04:16:19','2021-01-14 04:16:19'),(74,'edit_mestizos_clientes','mestizos_clientes','2021-01-14 04:16:19','2021-01-14 04:16:19'),(75,'add_mestizos_clientes','mestizos_clientes','2021-01-14 04:16:19','2021-01-14 04:16:19'),(76,'delete_mestizos_clientes','mestizos_clientes','2021-01-14 04:16:19','2021-01-14 04:16:19'),(77,'browse_mestizos_activos','mestizos_activos','2021-01-14 04:16:48','2021-01-14 04:16:48'),(78,'read_mestizos_activos','mestizos_activos','2021-01-14 04:16:48','2021-01-14 04:16:48'),(79,'edit_mestizos_activos','mestizos_activos','2021-01-14 04:16:48','2021-01-14 04:16:48'),(80,'add_mestizos_activos','mestizos_activos','2021-01-14 04:16:48','2021-01-14 04:16:48'),(81,'delete_mestizos_activos','mestizos_activos','2021-01-14 04:16:48','2021-01-14 04:16:48');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Administrator','2021-01-13 01:48:02','2021-01-13 01:48:02'),(2,'user','Normal User','2021-01-13 01:48:02','2021-01-13 01:48:02');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'site.title','Site Title','Site Title','','text',1,'Site'),(2,'site.description','Site Description','Site Description','','text',2,'Site'),(3,'site.logo','Site Logo','','','image',3,'Site'),(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID','','','text',4,'Site'),(5,'admin.bg_image','Admin Background Image','','','image',5,'Admin'),(6,'admin.title','Admin Title','Voyager','','text',1,'Admin'),(7,'admin.description','Admin Description','Welcome to Voyager. The Missing Admin for Laravel','','text',2,'Admin'),(8,'admin.loader','Admin Loader','','','image',3,'Admin'),(9,'admin.icon_image','Admin Icon Image','','','image',4,'Admin'),(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)','','','text',1,'Admin');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'franco','franco@gmail.com','users/January2021/9acryiM1r3qYdJy4zZHQ.jpg',NULL,'$2y$10$5wX8DjjF1yJliXDdoeXAs.CB9TkQXIoXRHN1gzvepoDMjzu0oKBHi','rtwmq4mM09i0zCrHBrn0EGlp3TnHdpXr9z4Hx3eGP0SMUFOrMWFsKvPSFLpl','{\"locale\":\"en\"}','2021-01-13 01:58:58','2021-01-13 02:00:20');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-14  1:13:58
