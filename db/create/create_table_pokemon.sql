CREATE TABLE `pokemon` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `size` int DEFAULT NULL,
  `type1Id` int NOT NULL,
  `type2Id` int DEFAULT NULL,
  `nationalDexNumber` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `nationalDexNumber` (`nationalDexNumber`),
  KEY `type1Id` (`type1Id`),
  KEY `type2Id` (`type2Id`),
  CONSTRAINT `pokemon2_ibfk_1` FOREIGN KEY (`type1Id`) REFERENCES `type` (`id`),
  CONSTRAINT `pokemon2_ibfk_2` FOREIGN KEY (`type2Id`) REFERENCES `type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
