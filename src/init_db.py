import sqlite3
import os

connection = sqlite3.connect('kanto.db')
cursor = connection.cursor()


def execute_query_from_file(filename):
	with open(filename) as file:
		query = file.read()
		cursor.execute(query)
		connection.commit()


def execute_all_query_files(filepath):
	for filename in os.listdir(filepath):
		execute_query_from_file(f'{filepath}/{filename}')


def get_row_count(tablename):
	return len(cursor.execute(f'SELECT * FROM {tablename}').fetchall())


def populate_table(tablename):
	row_count = get_row_count(tablename)
	if not row_count:
		execute_query_from_file(f'db/sqlite/populate/{tablename}.sql')
	print(f'row count: {row_count}')


def execute_all_populate_query_files(filepath):
	for filename in os.listdir(filepath):
		tablename = filename.split('.sql')[0]
		if not get_row_count(tablename):
			execute_query_from_file(f'{filepath}/{tablename}.sql')
		print(f'table {tablename} row count: {get_row_count(tablename)}')



def init_db():
	execute_all_query_files('db/sqlite/create')
	execute_all_populate_query_files('db/sqlite/populate')



	



if __name__ == '__main__':
	init_db()


    

#for i in cursor.execute('SELECT * FROM Type'):
	#print(i)




connection.close()


