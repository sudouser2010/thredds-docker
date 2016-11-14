FROM unidata/thredds-docker

MAINTAINER HDizzle

#update repository lists and install ssh server
RUN apt-get update && apt-get install -y openssh-server
RUN mkdir /var/run/sshd

#sets ssh password
RUN echo 'root:password' | chpasswd && \

    #comments out 'PermitRootLogin without-password' line in ssh config file
    sed -e '/PermitRootLogin without-password/ s/^#*/#/' -i '/etc/ssh/sshd_config' && \

    #appends 'PermitRootLogin yes' to ssh config file
    echo 'PermitRootLogin yes' >> '/etc/ssh/sshd_config';

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
