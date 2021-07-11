#!/usr/bin/env python3
import sys
import os
import sqlite3

dbName = "CiudadMadrid2.db"
print("Introduciendo datos pipe2")
if os.path.exists(dbName): # drop dB if exists == remove sqlite3 file
    os.remove(dbName)

conn = sqlite3.connect(dbName)
cursor = conn.cursor()

cursor.execute("CREATE TABLE IF NOT EXISTS {0} (id, lat, lon, name, cuisine, opening_hours);".format(dbName.split(".")[0]))

for line in sys.stdin:
	parsedLine = line[:-1].split(",", 5)
	cursor.execute("INSERT INTO {0}(id, lat, lon, name, cuisine, opening_hours) VALUES(?, ?, ?, ?, ?, ?)".format(dbName.split(".")[0]),parsedLine)

conn.commit()
conn.close()
