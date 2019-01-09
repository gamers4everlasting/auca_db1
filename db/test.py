#!/usr/bin/env python
# -*- coding: utf-8 -*-
import MySQLdb

# Open database connection
db = MySQLdb.connect("localhost", "foc", "foc", "FOC")

# prepare a cursor object using cursor() method
cursor = db.cursor()

# execute SQL query using execute() method.
cursor.execute("select * from Products")
f=open("output.txt","w")
# Fetch a single row using fetchone() method.
for row in cursor.fetchall():
    print >> f, row[1]

print 'Привет'
# disconnect from server
db.close()
f.close()
