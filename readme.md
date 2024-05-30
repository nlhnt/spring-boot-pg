# podman build  
`podman build -f Dockerfile -t hw-app:latest .`  

# podman run
`docker run --rm -d -p 8080:8080 hw-app`  

# local build
`./mvnw clean`

`./mvnw package`

# local maven run
`./mvnw spring-boot:run`

# run the packaged target
`java -jar target/hw-${version}.jar`