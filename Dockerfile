FROM ubuntu:18.04
RUN apt-get update -y
RUN apt-get install -y nano
RUN apt-get install -y curl
RUN apt-get install -y git
RUN apt-get install -y sudo
RUN apt-get install -y python3
RUN apt-get install -y lsb-release
RUN apt-get install -y gnupg2
ADD gcloud.sh /root/gcloud.sh
WORKDIR /root
RUN chmod +x /root/gcloud.sh
RUN ./gcloud.sh
