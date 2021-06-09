# Migration: add field nationalDexNumber onto pokemon table

ALTER TABLE pokemon2
ADD nationalDexNumber int NOT NULL,
ADD UNIQUE(nationalDexNumber);