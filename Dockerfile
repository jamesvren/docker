FROM alpine
RUN apk add --no-cache bash curl python3 openssh-client ethtool tcpdump iperf iperf3
RUN echo "bash -c 'python3 -m http.server 80 &' && tail -f /dev/null" > entrypoint.sh
ENTRYPOINT ["bash", "entrypoint.sh"]
