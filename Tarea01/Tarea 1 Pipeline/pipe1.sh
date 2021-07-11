osmfilter CiudadMadrid.osm --keep="all amenity=restaurant =fast_food =cafe =pub =bar"| osmconvert - --all-to-nodes --csv="@id @lon @lat name opening_hours" --csv-headline --csv-separator=, | grep ".*,.*,.*,\w" | python3 ./pipe1db.py

