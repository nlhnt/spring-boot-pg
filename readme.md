# Welcome
This repository contains the simplest spring-boot project that contains only an actuator/health checkpoint (in it's barest form). It however shows how to compile the maven project and how to dockerize it (without using any 3rd party pipelines like azure devops, that have their own tasks to build gradle/maven projects).  
This is just a little private excersize - nothing fancy, many other people have done it themselves.  
I just believe you have to go through this excersize yourself to get some understanding on the subject.

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