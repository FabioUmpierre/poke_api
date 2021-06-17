CREATE TABLE Type (
  id INT NOT NULL AUTO_INCREMENT,
  name varchar(45) NOT NULL UNIQUE,
  PRIMARY KEY (id)
);

CREATE TABLE TypeEffect(
id INT NOT NULL AUTO_INCREMENT,
power DOUBLE NOT NULL,
description varchar(45),
PRIMARY KEY(id)
);


CREATE TABLE TypeMatchup (
  attackingTypeId INT NOT NULL,
  defendingTypeId INT NOT NULL,
  typeEffectId INT NOT NULL,
  PRIMARY KEY (attackingTypeId, defendingTypeId, typeEffectId),
  FOREIGN KEY (attackingTypeId) REFERENCES kanto.type (id),
  FOREIGN KEY (defendingTypeId) REFERENCES kanto.type (id),
  FOREIGN KEY (typeEffectId) REFERENCES kanto.typeeffect (id)
);

CREATE TABLE Pokemon (
    id INT NOT NULL AUTO_INCREMENT,
    nationalDexNumber int NOT NULL,
    name varchar(45) NOT NULL,
    type1Id INT NOT NULL,
    type2Id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (type1Id) REFERENCES type (id),
    FOREIGN KEY (type2Id) REFERENCES type (id),
    UNIQUE KEY name (name),
    UNIQUE KEY nationalDexNumber (nationalDexNumber)
);
