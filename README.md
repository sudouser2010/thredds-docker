# thredds-docker
This is a thredds server inside a Docker environment with ssh enabled

### While running use the following options

##### Run in detached mode:
    -d
    
##### Map the following ports:
    -p22:22
    -p80:8080
    -p443:8443

##### Have container restart when blade reboots:
    --restart=always

##### Mount the data folder:
    -v{location of csi-data}: /data
    
### Example of Usage:
    docker pull hdizzle/thredds-docker

    docker run \
        -d \
        -p22:22 \
        -p80:8080 \
        -p443:8443 \
        --restart=always \
        -v/csi-data: /data \
       hdizzle/thredds-docker


