# thredds-docker
This is a thredds server inside a Docker environment with ssh enabled

### While running use the following options

##### Run in detached mode:
    -d
    
##### Map the following ports:
    -p 80:8080
    -p 443:8443

##### Mount the data folder:
    -v {location of csi-data}: /data

### Example of Usage:
    docker pull hdizzle/thredds-docker

    docker run \
        -d \
        -p 80:8080 \
        -p 443:8443 \
        -v /csi-data: /data \
       hdizzle/thredds-docker


