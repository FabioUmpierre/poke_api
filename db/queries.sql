# DRY = DONT REPEAT YOURSELF

SELECT * FROM type;
SELECT * FROM type WHERE name LIKE '%water%';
SELECT * FROM pokemon;
SELECT pokemon.nationalDexNumber, pokemon.name, type.name FROM pokemon
	JOIN type ON pokemon.type1Id = type.id;
    
select pokemon.name, type.name, advantage.name, type_2.name_2 from type, type_2, advantage,type_advantage, pokemon
where type_advantage.type_adv_id1 =type.id and type_advantage.type_adv_id2 = advantage.id and type_advantage.type_adv_id3 = type_2.id and pokemon.type1Id = type.id;
    
    
    

  
    

    
    
    
    
    
  
    
    
    
    



