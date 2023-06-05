#!/bin/bash
flight_sql_client --host 0.0.0.0 --port 50060 --username admin --password password "select * from region"
flight_sql_client --host 0.0.0.0 --port 50060 --username admin --password password "select * from nation"
flight_sql_client --host 0.0.0.0 --port 50060 --username admin --password password "select * from partsupp"
flight_sql_client --host 0.0.0.0 --port 50060 --username admin --password password "select * from part"
flight_sql_client --host 0.0.0.0 --port 50060 --username admin --password password "select * from supplier"
flight_sql_client --host 0.0.0.0 --port 50060 --username admin --password password "select * from customer"
flight_sql_client --host 0.0.0.0 --port 50060 --username admin --password password "select * from orders"
flight_sql_client --host 0.0.0.0 --port 50060 --username admin --password password "select * from lineitem"
