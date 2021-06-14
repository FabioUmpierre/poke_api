CREATE TABLE `kanto`.`type_advantage` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `type_adv_id1` BIGINT(20) NOT NULL,
  `type_adv_id2` BIGINT(20) NOT NULL,
  `type_adv_id3` BIGINT(20) NOT NULL,
  PRIMARY KEY (id),
  INDEX type_adv_ibfk_1_idx (type_adv_id1 ASC) VISIBLE,
  INDEX type_adv_ibfk_2_idx (type_adv_id2 ASC) VISIBLE,
  INDEX type_adv_ibfk_3_idx (type_adv_id3 ASC) VISIBLE,
  CONSTRAINT type_adv_ibfk_1
    FOREIGN KEY (type_adv_id1)
    REFERENCES kanto.type (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT type_adv_ibfk_2
    FOREIGN KEY (type_adv_id2)
    REFERENCES kanto.advantage (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT type_adv_ibfk_3
    FOREIGN KEY (type_adv_id3)
    REFERENCES kanto.type_2 (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
