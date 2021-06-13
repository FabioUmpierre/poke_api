# Migration: add field nationalDexNumber onto pokemon table

ALTER TABLE pokemon
ADD nationalDexNumber int NOT NULL,
ADD UNIQUE(nationalDexNumber);
#fim de arquivo