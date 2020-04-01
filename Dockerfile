FROM ubuntu:18.04

WORKDIR /src

RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y rsync
RUN apt-get install -y tree
RUN apt-get install -y curl
RUN apt-get install -y zip

RUN curl -o /tmp/terraform.zip https://releases.hashicorp.com/terraform/0.12.18/terraform_0.12.18_linux_amd64.zip \
    && cd /tmp \
    && unzip terraform.zip \
    && mv /tmp/terraform /usr/local/bin/terraform \
    && terraform --version

COPY ./ssh /root/.ssh
