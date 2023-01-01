FROM alpine:3.17 AS builder
RUN apk add -u wget
RUN mkdir -p /data && wget -O /data/romania.mbtiles https://data.opentransport.ro/tiles/romania.mbtiles

FROM maptiler/tileserver-gl
COPY --from=builder /data /data
COPY ./config/ /data/