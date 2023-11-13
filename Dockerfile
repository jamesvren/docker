FROM alpine

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && \
    apk add --no-cache tini \
        bash vim curl openssh-client ethtool iputils iproute2 tcpdump \
        iperf iperf3 apache2-utils wrk apache2-http2

COPY net* /root/
WORKDIR /root

ENTRYPOINT ["/sbin/tini", "--"]
CMD ["httpd"]
