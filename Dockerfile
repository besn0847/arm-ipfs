FROM hypriot/rpi-alpine-scratch 

ADD ipfs /bin/
ADD start.sh /

ENV IPFS_PATH /data/ipfs

RUN mkdir -p /data/ipfs &&\
    chmod +x /start.sh /bin/ipfs

WORKDIR /data/ipfs 

EXPOSE 4001 5001 8080

CMD /start.sh
