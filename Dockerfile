FROM unidata/thredds-docker

MAINTAINER HDizzle

#so the repository lists can be updated
RUN apt-get update -y

#needed for ssh capability
RUN apt-get install ssh
EXPOSE 22

# run ssh start in detached mode
CMD ["/etc/init.d/ssh", "start", "-D"]
