FROM centos:7
ARG PACKER_VERSION=1.3.2

RUN yum -y install wget unzip

RUN wget -q https://releases.hashicorp.com/packer/${PACKER_VERSION}/packer_${PACKER_VERSION}_linux_amd64.zip && \
    unzip packer_${PACKER_VERSION}_linux_amd64.zip -d /bin && \
    rm packer_${PACKER_VERSION}_linux_amd64.zip

RUN mv /usr/sbin/packer /usr/sbin/packer_linux

RUN useradd packer

USER packer
ENV USER packer

ENTRYPOINT ["/bin/packer"]
CMD ["--version"]
