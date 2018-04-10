# docker-tika

* Tika server 1.17 dockerized

## Versions
- Alpine linux 3.7
- Java (OpenJDK) 8u151
- Tika Server 1.17

## Usage

```
docker run \
  --rm \
  -p 9998:9998 \
  chrisgarrett/tika:1.17

curl -X PUT --data-binary @GeoSPARQL.pdf http://localhost:9998/tika --header "Content-type: application/pdf"
```

## Credits
