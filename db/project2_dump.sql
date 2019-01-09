-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: sultan
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB-0+deb9u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Brands`
--

DROP TABLE IF EXISTS `Brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Brands` (
  `brand_id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Brands`
--

LOCK TABLES `Brands` WRITE;
/*!40000 ALTER TABLE `Brands` DISABLE KEYS */;
INSERT INTO `Brands` VALUES (1,'Unknown'),(2,'Apple'),(3,'Microsoft'),(4,'Samsung'),(5,'Sony'),(6,'Huawei'),(7,'Dell'),(8,'HP'),(9,'Toshiba'),(10,'Nike'),(11,'Adidas'),(12,'Puma'),(13,'Under Armour'),(14,'Gucci'),(15,'Levis'),(16,'Swissgear');
/*!40000 ALTER TABLE `Brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Categories`
--

DROP TABLE IF EXISTS `Categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Categories`
--

LOCK TABLES `Categories` WRITE;
/*!40000 ALTER TABLE `Categories` DISABLE KEYS */;
INSERT INTO `Categories` VALUES (1,'Technology'),(2,'Clothes'),(3,'Jewelry/Accessory'),(4,'Bags/Wallets');
/*!40000 ALTER TABLE `Categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Chefs`
--

DROP TABLE IF EXISTS `Chefs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Chefs` (
  `chef_id` int(11) NOT NULL AUTO_INCREMENT,
  `chef_name` varchar(64) NOT NULL,
  PRIMARY KEY (`chef_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Chefs`
--

LOCK TABLES `Chefs` WRITE;
/*!40000 ALTER TABLE `Chefs` DISABLE KEYS */;
INSERT INTO `Chefs` VALUES (1,'Egor'),(2,'Sultan');
/*!40000 ALTER TABLE `Chefs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ColorCharacteristic`
--

DROP TABLE IF EXISTS `ColorCharacteristic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ColorCharacteristic` (
  `item_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  KEY `ColorCharacteristic_fk0` (`item_id`),
  KEY `ColorCharacteristic_fk1` (`color_id`),
  CONSTRAINT `ColorCharacteristic_fk0` FOREIGN KEY (`item_id`) REFERENCES `ItemCharacteristics` (`item_id`),
  CONSTRAINT `ColorCharacteristic_fk1` FOREIGN KEY (`color_id`) REFERENCES `Colors` (`color_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ColorCharacteristic`
--

LOCK TABLES `ColorCharacteristic` WRITE;
/*!40000 ALTER TABLE `ColorCharacteristic` DISABLE KEYS */;
INSERT INTO `ColorCharacteristic` VALUES (1,6),(2,5),(3,5),(4,5),(5,17),(6,17),(7,6),(8,10),(9,14),(10,3),(11,7),(12,16),(13,6),(14,6);
/*!40000 ALTER TABLE `ColorCharacteristic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Colors`
--

DROP TABLE IF EXISTS `Colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Colors` (
  `color_id` int(11) NOT NULL AUTO_INCREMENT,
  `color_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`color_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Colors`
--

LOCK TABLES `Colors` WRITE;
/*!40000 ALTER TABLE `Colors` DISABLE KEYS */;
INSERT INTO `Colors` VALUES (1,'Unknown'),(2,'Blue'),(3,'Green'),(4,'Yellow'),(5,'White'),(6,'Black'),(7,'Gray'),(8,'Brown'),(9,'Purple'),(10,'Orange'),(11,'Cyan'),(12,'Lime'),(13,'Pink'),(14,'Maroon'),(15,'Olive'),(16,'Golden'),(17,'Silver'),(18,'Navy'),(19,'Flesh'),(20,'Indigo'),(21,'Khaki');
/*!40000 ALTER TABLE `Colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CookingDetails`
--

DROP TABLE IF EXISTS `CookingDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CookingDetails` (
  `cookingDetails_id` int(11) NOT NULL AUTO_INCREMENT,
  `chef_id` int(11) NOT NULL,
  `meal_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `rating` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`cookingDetails_id`),
  KEY `chef_id` (`chef_id`),
  KEY `meal_id` (`meal_id`),
  CONSTRAINT `CookingDetails_ibfk_1` FOREIGN KEY (`chef_id`) REFERENCES `Chefs` (`chef_id`),
  CONSTRAINT `CookingDetails_ibfk_2` FOREIGN KEY (`meal_id`) REFERENCES `Meals` (`meal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CookingDetails`
--

LOCK TABLES `CookingDetails` WRITE;
/*!40000 ALTER TABLE `CookingDetails` DISABLE KEYS */;
INSERT INTO `CookingDetails` VALUES (1,1,20,'2018-12-16',NULL),(2,2,82,'2018-12-16',NULL),(3,1,82,'2018-12-17',NULL);
/*!40000 ALTER TABLE `CookingDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Images`
--

DROP TABLE IF EXISTS `Images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Images` (
  `image_id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(256) NOT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Images`
--

LOCK TABLES `Images` WRITE;
/*!40000 ALTER TABLE `Images` DISABLE KEYS */;
/*!40000 ALTER TABLE `Images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ItemCharacteristics`
--

DROP TABLE IF EXISTS `ItemCharacteristics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ItemCharacteristics` (
  `item_id` int(11) NOT NULL,
  `mainCharacteristics_id` int(11) NOT NULL,
  KEY `ItemCharacteristics_fk0` (`item_id`),
  KEY `ItemCharacteristics_fk1` (`mainCharacteristics_id`),
  CONSTRAINT `ItemCharacteristics_fk0` FOREIGN KEY (`item_id`) REFERENCES `ItemInfo` (`item_id`),
  CONSTRAINT `ItemCharacteristics_fk1` FOREIGN KEY (`mainCharacteristics_id`) REFERENCES `MainCharacteristics` (`mainCharacteristics_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ItemCharacteristics`
--

LOCK TABLES `ItemCharacteristics` WRITE;
/*!40000 ALTER TABLE `ItemCharacteristics` DISABLE KEYS */;
INSERT INTO `ItemCharacteristics` VALUES (1,1),(2,1),(3,1),(4,1),(5,5),(6,5),(7,5),(8,8),(9,8),(10,10),(11,11),(12,12),(13,13),(14,14);
/*!40000 ALTER TABLE `ItemCharacteristics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ItemInfo`
--

DROP TABLE IF EXISTS `ItemInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ItemInfo` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(5) NOT NULL,
  `place` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `personPhone` varchar(30) NOT NULL,
  `personEmail` varchar(30) NOT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ItemInfo`
--

LOCK TABLES `ItemInfo` WRITE;
/*!40000 ALTER TABLE `ItemInfo` DISABLE KEYS */;
INSERT INTO `ItemInfo` VALUES (1,'LOST',NULL,NULL,NULL,'example1','111-111-111','example1@email'),(2,'LOST',NULL,NULL,NULL,'','111-111-112','example2@email'),(3,'LOST',NULL,NULL,NULL,'','111-111-113','example3@email'),(4,'LOST',NULL,NULL,NULL,'','111-111-114','white@email'),(5,'LOST',NULL,NULL,NULL,'sony','111-111-121','sony1@email'),(6,'LOST',NULL,NULL,NULL,'sony2','111-111-122','sony2@email'),(7,'LOST',NULL,NULL,NULL,'sony3','111-111-123','sony3@email'),(8,'LOST',NULL,NULL,NULL,'sweater1','111-111-131','sweater1@email'),(9,'FOUND',NULL,NULL,NULL,'sweater2','111-111-132','sweater2@email'),(10,'FOUND',NULL,NULL,NULL,'sweater3','111-111-133','sweater3@email'),(11,'FOUND',NULL,NULL,NULL,'T-shirt','111-111-134','t-shirt@email'),(12,'FOUND',NULL,NULL,NULL,'Example description for golden necklace','111-111-141','necklace@email'),(13,'LOST',NULL,NULL,NULL,'example','888-888-888','example@email'),(14,'FOUND',NULL,NULL,NULL,'example2','111-111-111','example2@email'),(15,'Unkno','LOST',NULL,NULL,'1','',''),(16,'Apple','LOST',NULL,NULL,'2','',''),(17,'Micro','LOST',NULL,NULL,'3','',''),(18,'Samsu','LOST',NULL,NULL,'4','',''),(19,'Sony','LOST',NULL,NULL,'5','',''),(20,'Huawe','LOST',NULL,NULL,'6','',''),(21,'Dell','LOST',NULL,NULL,'7','',''),(22,'HP','LOST',NULL,NULL,'8','',''),(23,'Toshi','LOST',NULL,NULL,'9','',''),(24,'Nike','LOST',NULL,NULL,'10','',''),(25,'Adida','LOST',NULL,NULL,'11','',''),(26,'Puma','LOST',NULL,NULL,'12','',''),(27,'Under','LOST',NULL,NULL,'13','',''),(28,'Gucci','LOST',NULL,NULL,'14','',''),(29,'Levis','LOST',NULL,NULL,'15','',''),(30,'Swiss','LOST',NULL,NULL,'16','','');
/*!40000 ALTER TABLE `ItemInfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MainCharacteristics`
--

DROP TABLE IF EXISTS `MainCharacteristics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MainCharacteristics` (
  `mainCharacteristics_id` int(11) NOT NULL AUTO_INCREMENT,
  `typeCharacteristic_id` int(11) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`mainCharacteristics_id`),
  UNIQUE KEY `MainCharacteristics_up0` (`typeCharacteristic_id`,`brand_id`),
  KEY `MainCharacteristic_fk1` (`brand_id`),
  CONSTRAINT `MainCharacteristic_fk0` FOREIGN KEY (`typeCharacteristic_id`) REFERENCES `TypeCharacteristic` (`typeCharacteristic_id`),
  CONSTRAINT `MainCharacteristic_fk1` FOREIGN KEY (`brand_id`) REFERENCES `Brands` (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MainCharacteristics`
--

LOCK TABLES `MainCharacteristics` WRITE;
/*!40000 ALTER TABLE `MainCharacteristics` DISABLE KEYS */;
INSERT INTO `MainCharacteristics` VALUES (1,1,2),(14,1,4),(5,1,5),(10,7,1),(13,7,10),(11,7,11),(8,12,1),(12,18,1);
/*!40000 ALTER TABLE `MainCharacteristics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MealTypes`
--

DROP TABLE IF EXISTS `MealTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MealTypes` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(64) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MealTypes`
--

LOCK TABLES `MealTypes` WRITE;
/*!40000 ALTER TABLE `MealTypes` DISABLE KEYS */;
INSERT INTO `MealTypes` VALUES (1,'Breakfast'),(2,'Dinner'),(5,'Dessert/Tea'),(6,'Lunch');
/*!40000 ALTER TABLE `MealTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Meals`
--

DROP TABLE IF EXISTS `Meals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Meals` (
  `meal_id` int(11) NOT NULL AUTO_INCREMENT,
  `meal_name` varchar(64) NOT NULL,
  `mealType_id` int(11) NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`meal_id`),
  KEY `mealType_id` (`mealType_id`),
  KEY `image_id` (`image_id`),
  CONSTRAINT `Meals_ibfk_1` FOREIGN KEY (`mealType_id`) REFERENCES `MealTypes` (`type_id`),
  CONSTRAINT `Meals_ibfk_2` FOREIGN KEY (`image_id`) REFERENCES `Images` (`image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Meals`
--

LOCK TABLES `Meals` WRITE;
/*!40000 ALTER TABLE `Meals` DISABLE KEYS */;
INSERT INTO `Meals` VALUES (3,'Oatmeal',1,NULL),(4,'Toasts',1,NULL),(5,'Rice porridge',1,NULL),(6,'Wheat porridge',1,NULL),(7,'Boiled egg',1,NULL),(8,'Poached egg',1,NULL),(9,'Omelette',1,NULL),(10,'Fried egg',1,NULL),(11,'Scrambled Egg',1,NULL),(12,'Sandwich',1,NULL),(13,'Waffle',1,NULL),(14,'Sandwich',2,NULL),(15,'Pasta',2,NULL),(16,'Noodles',2,NULL),(17,'Salad',2,NULL),(18,'Steak',2,NULL),(19,'Cutlet',2,NULL),(20,'Rice',2,NULL),(21,'Potato',2,NULL),(22,'Pilaf',2,NULL),(23,'Soup',2,NULL),(24,'Beef',2,NULL),(25,'Chicken',2,NULL),(26,'Sausage',2,NULL),(27,'Pie',5,NULL),(28,'Cake',5,NULL),(29,'Burrito',2,NULL),(30,'Pancake',5,NULL),(31,'Fish',2,NULL),(32,'Turkey',2,NULL),(33,'Meatballs',2,NULL),(34,'Chili',2,NULL),(35,'Pizza',2,NULL),(36,'Stew',2,NULL),(37,'Lasagna',2,NULL),(69,'Biscuits',5,NULL),(70,'Cookies',5,NULL),(71,'Candies',5,NULL),(72,'Chocolates',5,NULL),(73,'Puddings',5,NULL),(74,'Pastries',5,NULL),(75,'Burger',2,NULL),(76,'Sandwich',6,NULL),(77,'Pasta',6,NULL),(78,'Noodles',6,NULL),(79,'Salad',6,NULL),(80,'Steak',6,NULL),(81,'Cutlet',6,NULL),(82,'Rice',6,NULL),(83,'Potato',6,NULL),(84,'Pilaf',6,NULL),(85,'Soup',6,NULL),(86,'Beef',6,NULL),(87,'Chicken',6,NULL),(88,'Sausage',6,NULL),(89,'Burrito',6,NULL),(90,'Fish',6,NULL),(91,'Turkey',6,NULL),(92,'Meatballs',6,NULL),(93,'Chili',6,NULL),(94,'Pizza',6,NULL),(95,'Stew',6,NULL),(96,'Lasagna',6,NULL),(97,'Burger',6,NULL);
/*!40000 ALTER TABLE `Meals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MeasurementTypes`
--

DROP TABLE IF EXISTS `MeasurementTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MeasurementTypes` (
  `measure_id` int(11) NOT NULL AUTO_INCREMENT,
  `measureType_name` varchar(64) NOT NULL,
  PRIMARY KEY (`measure_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MeasurementTypes`
--

LOCK TABLES `MeasurementTypes` WRITE;
/*!40000 ALTER TABLE `MeasurementTypes` DISABLE KEYS */;
INSERT INTO `MeasurementTypes` VALUES (1,'Milliliter'),(2,'Liter'),(3,'Milligram'),(4,'Gram'),(5,'Kilogram'),(6,'Teaspoon'),(7,'Tablespoon'),(8,'Cup'),(9,'Drop'),(10,'Pound'),(11,'Ounce'),(12,'г/гр'),(13,'л'),(14,'мл'),(15,'шт'),(16,'см'),(17,'рул.'),(18,'кг');
/*!40000 ALTER TABLE `MeasurementTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Media`
--

DROP TABLE IF EXISTS `Media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Media` (
  `item_id` int(11) NOT NULL,
  `url` varchar(100) NOT NULL,
  KEY `Media_fk0` (`item_id`),
  CONSTRAINT `Media_fk0` FOREIGN KEY (`item_id`) REFERENCES `ItemCharacteristics` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Media`
--

LOCK TABLES `Media` WRITE;
/*!40000 ALTER TABLE `Media` DISABLE KEYS */;
/*!40000 ALTER TABLE `Media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProductTypes`
--

DROP TABLE IF EXISTS `ProductTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProductTypes` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(64) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProductTypes`
--

LOCK TABLES `ProductTypes` WRITE;
/*!40000 ALTER TABLE `ProductTypes` DISABLE KEYS */;
INSERT INTO `ProductTypes` VALUES (1,'Meat'),(2,'Poultry'),(3,'Seafood'),(4,'Egg product'),(5,'Dairy product'),(6,'Fruit'),(7,'Vegetable'),(8,'Baby food'),(9,'Nuts, grains, beans'),(10,'Juice'),(11,'Tea'),(12,'Alcohol'),(13,'Bread'),(14,'Baked food'),(15,'Dessert'),(16,'Noodle'),(17,'Salad'),(18,'Sauce'),(19,'Snack food'),(20,'Spice');
/*!40000 ALTER TABLE `ProductTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Products`
--

DROP TABLE IF EXISTS `Products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(64) NOT NULL,
  `productType_id` int(11) NOT NULL,
  `quantity_inStorage` decimal(8,2) unsigned NOT NULL,
  `measure_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `productType_id` (`productType_id`),
  KEY `measure_id` (`measure_id`),
  CONSTRAINT `Products_ibfk_1` FOREIGN KEY (`productType_id`) REFERENCES `ProductTypes` (`type_id`),
  CONSTRAINT `Products_ibfk_2` FOREIGN KEY (`measure_id`) REFERENCES `MeasurementTypes` (`measure_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Products`
--

LOCK TABLES `Products` WRITE;
/*!40000 ALTER TABLE `Products` DISABLE KEYS */;
INSERT INTO `Products` VALUES (1,'Long-grain white rice',9,20.00,5),(2,'Salt',20,4.00,5),(3,'Булочка «Симит»',13,1.00,15),(6,'Milk',5,5.00,2),(7,'Chicken wings',2,0.50,5);
/*!40000 ALTER TABLE `Products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PurchaseRecords`
--

DROP TABLE IF EXISTS `PurchaseRecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PurchaseRecords` (
  `purchaseRecord_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `purchased_quantity` decimal(8,2) unsigned NOT NULL,
  `measure_id` int(11) NOT NULL,
  `price_for_purchased_quantity` decimal(8,2) unsigned NOT NULL,
  `shop_id` int(11) NOT NULL,
  `date_purchased` date NOT NULL,
  PRIMARY KEY (`purchaseRecord_id`),
  KEY `product_id` (`product_id`),
  KEY `measure_id` (`measure_id`),
  KEY `shop_id` (`shop_id`),
  CONSTRAINT `PurchaseRecords_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `Products` (`product_id`),
  CONSTRAINT `PurchaseRecords_ibfk_2` FOREIGN KEY (`measure_id`) REFERENCES `MeasurementTypes` (`measure_id`),
  CONSTRAINT `PurchaseRecords_ibfk_3` FOREIGN KEY (`shop_id`) REFERENCES `Shops` (`shop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PurchaseRecords`
--

LOCK TABLES `PurchaseRecords` WRITE;
/*!40000 ALTER TABLE `PurchaseRecords` DISABLE KEYS */;
INSERT INTO `PurchaseRecords` VALUES (6,6,2.00,2,80.00,1,'2018-12-18'),(7,7,0.50,5,300.00,2,'2018-12-18');
/*!40000 ALTER TABLE `PurchaseRecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RecipeDetails`
--

DROP TABLE IF EXISTS `RecipeDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RecipeDetails` (
  `recipeDetails_id` int(11) NOT NULL AUTO_INCREMENT,
  `recipe_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_quantity` decimal(8,2) unsigned NOT NULL,
  `measure_id` int(11) NOT NULL,
  PRIMARY KEY (`recipeDetails_id`),
  KEY `recipe_id` (`recipe_id`),
  KEY `product_id` (`product_id`),
  KEY `measure_id` (`measure_id`),
  CONSTRAINT `RecipeDetails_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `Recipes` (`recipe_id`),
  CONSTRAINT `RecipeDetails_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `Products` (`product_id`),
  CONSTRAINT `RecipeDetails_ibfk_3` FOREIGN KEY (`measure_id`) REFERENCES `MeasurementTypes` (`measure_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RecipeDetails`
--

LOCK TABLES `RecipeDetails` WRITE;
/*!40000 ALTER TABLE `RecipeDetails` DISABLE KEYS */;
INSERT INTO `RecipeDetails` VALUES (1,1,1,1.00,8),(2,1,2,0.50,6);
/*!40000 ALTER TABLE `RecipeDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Recipes`
--

DROP TABLE IF EXISTS `Recipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Recipes` (
  `recipe_id` int(11) NOT NULL AUTO_INCREMENT,
  `recipe_name` varchar(64) NOT NULL,
  `meal_id` int(11) NOT NULL,
  `instruction` varchar(2048) NOT NULL,
  PRIMARY KEY (`recipe_id`),
  KEY `meal_id` (`meal_id`),
  CONSTRAINT `Recipes_ibfk_1` FOREIGN KEY (`meal_id`) REFERENCES `Meals` (`meal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Recipes`
--

LOCK TABLES `Recipes` WRITE;
/*!40000 ALTER TABLE `Recipes` DISABLE KEYS */;
INSERT INTO `Recipes` VALUES (1,'The Perfect Pot of Rice',20,'Combine rice, salt, and 1 1/4 cups water in a 2–3-qt. heavy saucepan. Swirl pan to combine—do not stir. Bring rice-and-water mixture to a boil. Cover pot with a tight-fitting lid and reduce heat to low, aiming for the barest simmer. Cook, without uncovering pot, for 18 minutes. Remove pan from heat. Uncover; place a kitchen towel over pan to keep moisture from dripping onto rice. Cover tightly with lid. Let rice stand, covered, for 10–15 minutes to firm up. Remove lid and fluff cooked rice with a fork, then serve immediately or chill.');
/*!40000 ALTER TABLE `Recipes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sale`
--

DROP TABLE IF EXISTS `Sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sale` (
  `sale_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `quantity` decimal(8,2) unsigned NOT NULL,
  `measure_id` int(11) NOT NULL,
  `base_price_per_quantity` decimal(8,2) unsigned NOT NULL,
  `onSale_price_per_quantity` decimal(8,2) unsigned DEFAULT NULL,
  `shop_id` int(11) NOT NULL,
  `valid_from` date DEFAULT NULL,
  `valid_until` date DEFAULT NULL,
  PRIMARY KEY (`sale_id`),
  KEY `product_id` (`product_id`),
  KEY `measure_id` (`measure_id`),
  KEY `shop_id` (`shop_id`),
  CONSTRAINT `Sale_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `Products` (`product_id`),
  CONSTRAINT `Sale_ibfk_2` FOREIGN KEY (`measure_id`) REFERENCES `MeasurementTypes` (`measure_id`),
  CONSTRAINT `Sale_ibfk_3` FOREIGN KEY (`shop_id`) REFERENCES `Shops` (`shop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sale`
--

LOCK TABLES `Sale` WRITE;
/*!40000 ALTER TABLE `Sale` DISABLE KEYS */;
INSERT INTO `Sale` VALUES (1,2,500.00,4,50.00,30.00,1,'2018-12-18','2018-12-23'),(2,2,600.00,4,55.00,35.00,2,'2018-12-18','2018-12-27');
/*!40000 ALTER TABLE `Sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Shops`
--

DROP TABLE IF EXISTS `Shops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Shops` (
  `shop_id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_name` varchar(64) NOT NULL,
  PRIMARY KEY (`shop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Shops`
--

LOCK TABLES `Shops` WRITE;
/*!40000 ALTER TABLE `Shops` DISABLE KEYS */;
INSERT INTO `Shops` VALUES (1,'Globus'),(2,'Narodnyi'),(3,'Frunze');
/*!40000 ALTER TABLE `Shops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SubCategories`
--

DROP TABLE IF EXISTS `SubCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SubCategories` (
  `subCategory_id` int(11) NOT NULL AUTO_INCREMENT,
  `subCategory_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`subCategory_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SubCategories`
--

LOCK TABLES `SubCategories` WRITE;
/*!40000 ALTER TABLE `SubCategories` DISABLE KEYS */;
INSERT INTO `SubCategories` VALUES (1,'Mobile phone'),(2,'Mob accessories'),(3,'Tablet'),(4,'Laptop'),(5,'Cables/Connectors'),(6,'Peripherals'),(7,'T-shirt'),(8,'Shirt'),(9,'Hoodies'),(10,'Jacket/Coat'),(11,'Jeans/Pants'),(12,'Sweaters'),(13,'Socks'),(14,'Cap'),(15,'Hat'),(16,'Shoes'),(17,'Sneakers'),(18,'Necklace'),(19,'Braclet'),(20,'Ring'),(21,'Earrings'),(22,'Bag'),(23,'Backpack'),(24,'Wallet'),(25,'Watch');
/*!40000 ALTER TABLE `SubCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Test`
--

DROP TABLE IF EXISTS `Test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Test`
--

LOCK TABLES `Test` WRITE;
/*!40000 ALTER TABLE `Test` DISABLE KEYS */;
INSERT INTO `Test` VALUES (1,'asd'),(2,'name');
/*!40000 ALTER TABLE `Test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Test2`
--

DROP TABLE IF EXISTS `Test2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Test2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Test2`
--

LOCK TABLES `Test2` WRITE;
/*!40000 ALTER TABLE `Test2` DISABLE KEYS */;
INSERT INTO `Test2` VALUES (1,'0000-00-00'),(2,'2018-12-16'),(3,'2018-12-16');
/*!40000 ALTER TABLE `Test2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TypeCharacteristic`
--

DROP TABLE IF EXISTS `TypeCharacteristic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TypeCharacteristic` (
  `subCategory_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `typeCharacteristic_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`typeCharacteristic_id`),
  UNIQUE KEY `TypeCharacteristic_up0` (`subCategory_id`,`category_id`),
  KEY `TypeCharacteristic_fk1` (`category_id`),
  CONSTRAINT `TypeCharacteristic_fk0` FOREIGN KEY (`subCategory_id`) REFERENCES `SubCategories` (`subCategory_id`),
  CONSTRAINT `TypeCharacteristic_fk1` FOREIGN KEY (`category_id`) REFERENCES `Categories` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TypeCharacteristic`
--

LOCK TABLES `TypeCharacteristic` WRITE;
/*!40000 ALTER TABLE `TypeCharacteristic` DISABLE KEYS */;
INSERT INTO `TypeCharacteristic` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,2,7),(8,2,8),(9,2,9),(10,2,10),(11,2,11),(12,2,12),(13,2,13),(14,2,14),(15,2,15),(16,2,16),(17,2,17),(18,3,18),(19,3,19),(20,3,20),(21,3,21),(22,4,23),(23,4,24),(24,4,25),(25,3,22);
/*!40000 ALTER TABLE `TypeCharacteristic` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-18 17:07:34
