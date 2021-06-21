import MySQLdb
import csv
host = "localhost"
user = "root"
password = '78694142@Fj'
db = 'kanto'
port = 3306
con = MySQLdb.connect(host,user,password,db,port)

with open(r"C:\Users\Pichau\dev\banco\typescsv.csv", 'r+') as ficheiro:
    reader = csv.reader(ficheiro)
    lista = []
    for i in reader:
        if i != 'Unnamed: 0':
           lista.append(i)
    print(lista)       
    

count = 1
count2 = 1
c = con.cursor()

def select(fields, tables, where=None, like=None):
    global c
    query = "SELECT " + fields + " FROM " + tables
    if (where) and not (like):
        query = query + ' WHERE ' + where
    if (where) and (like):
        query = query + " WHERE " + where + " LIKE " + "'%"+like+"%'"
    
    c.execute(query)
    return c.fetchall() 


def insert(values, table, fields=None):
    global c, con
    query = "INSERT INTO " + table
    if(fields):
        query = query + " (" + fields + ") "
    query = query + " VALUES " + ",".join(["(" + v + ")" for v in values])

    c.execute(query)
    con.commit()



attackingTypeId= select('id', 'type', 'name', 'Ground')
defendingTypeId = select('id', 'type', 'name', 'Steel')
attackingTypeId = attackingTypeId[0][0]
defendingTypeId = defendingTypeId[0][0]


effectPower = reader[lista[defendingTypeId - 1]][attackingTypeId - 1]
if effectPower == '2×':
        count3 = 1
elif effectPower == '1×':
        count3 = 2
elif effectPower == '½×':
        count3 = 3
else:
        count3 = 4 


values = [f"'{attackingTypeId}', '{defendingTypeId}', '{count3}'"]   
insert(values, "typematchup")     




while count <= 18 and count2 <= 18:
    effectPower = reader[lista[count - 1]][count2 - 1]
    if effectPower == '2×':
        count3 = 1
    elif effectPower == '1×':
        count3 = 2
    elif effectPower == '½×':
        count3 = 3
    else:
        count3 = 4    

    values = [f"'{count2}', '{count}', '{count3}'"]
    insert(values, "typematchup")
 
    if count == 18:
        count2 += 1
        count = 0
    if count < 18:
        count += 1  
  
