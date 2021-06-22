CREATE TABLE IF NOT EXISTS TypeMatchup (
    attackingTypeId INTEGER NOT NULL,
    defendingTypeId INTEGER NOT NULL,
    typeEffectId INTEGER NOT NULL,
    PRIMARY KEY (attackingTypeId, defendingTypeId, typeEffectId),
    FOREIGN KEY (attackingTypeId) REFERENCES Type (id),
    FOREIGN KEY (defendingTypeId) REFERENCES Type (id),
    FOREIGN KEY (typeEffectId) REFERENCES typeeffect (id)
);