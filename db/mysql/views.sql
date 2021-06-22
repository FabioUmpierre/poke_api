-- shows table type
SELECT * FROM type;
-- show the type named water
SELECT * FROM type WHERE name LIKE '%water%';
-- show table typeMatchup
SELECT * FROM typeMatchup;
-- shows all pokemon sorted by nationalDexNumber column
SELECT * FROM pokemon ORDER BY nationalDexNumber;

-- shows all pokemon and their respective types
SELECT 
	p.nationalDexNumber, p.name, 
    t1.name as type1Name,
    t2.name as type2Name 
FROM pokemon p
    JOIN type t1 ON p.type1Id = t1.id
    LEFT JOIN type t2 ON p.type2Id = t2.id;
    
-- shows advantage, disadvantage and effect of each type by name    
SELECT t.name as attackingTypeName,
    te.power as effectPower,
    t2.name as defendingTypeName 
FROM typeMatchup tm
    JOIN type t ON tm.attackingTypeId = t.id
    JOIN typeeffect te ON tm.typeEffectId = te.id
    JOIN type t2 ON tm.defendingTypeId = t2.id;
