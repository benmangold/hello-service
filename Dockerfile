FROM ubuntu:20.04

ENV LANG en_US.utf8

RUN apt update;

# RUN apt update; apt upgrade -y; apt autoremove;

CMD ["sleep", "1000"]
