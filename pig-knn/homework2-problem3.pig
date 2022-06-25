rows= load '/mnt/nyc_taxi_data_2014.csv' using PigStorage(',');
records= filter rows by $0!='vendor_id';
Records2 = FILTER records BY $0 is not null OR $1 is not null OR $2 is not null OR $3 is not null OR $4 is not null OR $5 is not null OR $6 is not null OR $7 is not null OR $8 is not null OR $9 is not null OR $10 is not null OR $11 is not null OR $12 is not null OR $13 is not null OR $14 is not null OR $15 is not null OR $16 is not null OR $17 is not null;
records3= FOREACH Records2 GENERATE $0 as vendor_id, $1 as pickup_datetime, $2 as dropoff_datetime, $3 as passenger_count, $4 as trip_distance, $5 as pickup_longitude, $6 as pickup_latitude,$7 as rate_code, $8 as store_and_fwd_flag, $9 as dropoff_longitude, $10 as dropoff_latitude, $11 as payment_type, $12 as fare_amount, $13 as surcharge, $14 as mta_tax, $15 as tip_amount, $16 as tolls_amount, $17 as total_amount;
target = limit records3 1;
records4 = FOREACH records3 GENERATE *, SQRT((tip_amount-target.tip_amount)*(tip_amount-target.tip_amount)+(trip_distance-target.trip_distance)*(trip_distance-target.trip_distance)+(fare_amount-target.fare_amount)*(fare_amount-target.fare_amount));
sorted = ORDER records4 by $18;
neighbors = limit sorted 5;
DUMP neighbors;
