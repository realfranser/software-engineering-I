osmfilter CiudadMadrid.osm --keep="all cuisine=regional =mexican =japanese amenity=restaurant"| osmconvert - --all-to-nodes --csv="@id @lon @lat name opening_hours cuisine" --csv-headline --csv-separator=, | grep ".*,.*,.*,\w" | python3 ./pipe2db.py

