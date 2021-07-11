FILE=CiudadMadrid.osm
if [ -f "$FILE" ]; then
    echo "++ $FILE exists, no need to source."
else 
	echo "-- Sourcing $FILE."
    wget http://download.geofabrik.de/europe/spain-latest.osm.bz2 && bzcat spain-latest.osm.bz2 | osmconvert - --out-osm -B=CiudadMadrid.poly.txt -o=CiudadMadrid.osm
fi