# Tile Server
## Configuring

Bellow you have the reference guide for tweaking the configuration for the server: https://github.com/maptiler/tileserver-gl/blob/master/docs/config.rst

## Buiding source map

[PlanetTiler](https://github.com/onthegomap/planetiler) can be used for generating the map that is used for serving vector tiles

```sh
wget https://github.com/onthegomap/planetiler/releases/latest/download/planetiler.jar
java -Xmx2g -jar planetiler.jar --download --area=romania
```

or via docker
```sh
docker run -e JAVA_TOOL_OPTIONS="-Xmx2g" -v "$(pwd)/data":/data ghcr.io/onthegomap/planetiler:latest --download --area=romania
```


You can also use ```tilemaker``` tool to generate
```bash
# download data
https://download.geofabrik.de/europe/romania-latest.osm.pbf

# run tool
docker run -v $PWD:/data -it --rm stadtnavi/tilemaker --input=/data/romania-latest.osm.pbf --output=/data/romania.mbtiles
```

## References

- https://github.com/mapbox/awesome-vector-tiles