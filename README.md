# thredds-docker
is is a thredds server with docker with ssh enabled

### While running use the following options

##### Run in detached mode:
    -d
    
##### Map the following ports:
    -p 80:8080
    -p 443:8443

##### Mount the data folder:
    -v {location of csi-data}: /data

### Example of Usage:
    sudo docker pull hdizzle/thredds-docker

    sudo docker run \
        -d \
        -p 80:8080 \
        -p 443:8443 \
        -v /csi-data: /data \
       hdizzle/thredds-docker


