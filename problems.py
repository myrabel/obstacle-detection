import serial
import psycopg2
import time
import random
import datetime

arduino = serial.Serial("/dev/ttyUSB0")
arduino.baudrate =9600

conn=psycopg2.connect(database="d5lgnbpidlftnd",user="xcvjfrkorgnagi",password="dfc89395c4c918b92bbcdca0f560e4345d017bdffd2e9b64fb62a0fad6a347d6",host="ec2-54-204-21-226.compute-1.amazonaws.com",port="5432")
#conn=psycopg2.connect(database="obstacle_detection_development",user="obstacle_detection",password="obstacle_detection",host="localhost",port="5432")

cur=conn.cursor()

for a in arduino:
    id = random.randint(0,1000000)
    mytime = datetime.datetime.now()
    val=arduino.readline()
    vals = val.split(',')
    print (vals[0])
    print (vals[1])

    created_at = mytime
    updated_at = mytime

    query = "INSERT INTO smartagrics (id, mositurereads, phreads, created_at, updated_at);"
    data = (id, vals[0], vals[1], created_at, updated_at)
    cur.execute(query,data)
    conn.commit()
    print ("commited")
conn.close
