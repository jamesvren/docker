FROM alpine

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && \
    apk add --no-cache tini \
        bash vim curl python3 openssh-client ethtool iputils iproute2 tcpdump \
        iperf iperf3 apache2-utils

ENTRYPOINT ["/sbin/tini", "--"]
CMD ["/usr/bin/python3", "-m", "http.server", "80"]
