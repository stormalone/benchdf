#!/bin/bash
echo region
flight_sql_client --host 0.0.0.0 --port 50060 --username admin --password password "select count(*) from region"
echo nation
flight_sql_client --host 0.0.0.0 --port 50060 --username admin --password password "select count(*) from nation"
echo partsupp
flight_sql_client --host 0.0.0.0 --port 50060 --username admin --password password "select count(*) from partsupp"
echo part
flight_sql_client --host 0.0.0.0 --port 50060 --username admin --password password "select count(*) from part"
echo supplier
flight_sql_client --host 0.0.0.0 --port 50060 --username admin --password password "select count(*) from supplier"
echo customer
flight_sql_client --host 0.0.0.0 --port 50060 --username admin --password password "select count(*) from customer"
echo orders
flight_sql_client --host 0.0.0.0 --port 50060 --username admin --password password "select count(*) from orders"
echo lineitem
flight_sql_client --host 0.0.0.0 --port 50060 --username admin --password password "select count(*) from lineitem"
