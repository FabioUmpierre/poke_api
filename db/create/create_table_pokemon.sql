CREATE TABLE `Pokemon` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `size` int DEFAULT NULL,
  `type1Id` BIGINT(20) NOT NULL,
  `type2Id` BIGINT(20) DEFAULT NULL,
  `nationalDexNumber` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `nationalDexNumber` (`nationalDexNumber`),
  KEY `type1Id` (`type1Id`),
  KEY `type2Id` (`type2Id`),
  CONSTRAINT `pokemon_ibfk_1` FOREIGN KEY (`type1Id`) REFERENCES `type` (`id`),
  CONSTRAINT `pokemon_ibfk_2` FOREIGN KEY (`type2Id`) REFERENCES `type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
