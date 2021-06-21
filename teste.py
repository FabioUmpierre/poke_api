import csv

with open(r"C:\Users\Pichau\dev\banco\typescsv.csv", 'r+') as ficheiro:
    reader = csv.reader(ficheiro)
    lista = []
    for i in reader:
        if i != 'Unnamed: 0':
           lista.appen
         