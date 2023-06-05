#!/bin/bash

cd sql
./create.sh

cd ../datainsert
chmod 755 customer.sh
chmod 755 lineitem.sh
chmod 755 nation.sh
chmod 755 orders.sh
chmod 755 part.sh
chmod 755 partsupp.sh
chmod 755 region.sh
chmod 755 supplier.sh

./customer.sh
./lineitem.sh
./nation.sh
./orders.sh
./part.sh
./partsupp.sh
./region.sh
./supplier.sh

cd ..
