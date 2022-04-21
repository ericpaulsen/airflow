FROM codercom/enterprise-base:ubuntu

USER root

RUN apt-get install ca-certificates \
    && apt-get install -y nfs-common

# copy configure script into workspace
COPY [ "configure", "/coder/configure" ]
RUN chmod +x /coder/configure

USER coder