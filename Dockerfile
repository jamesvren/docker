FROM alpine
RUN apk add --no-cache bash curl python3 && \
    python3 -m http.server 80 &
ENTRYPOINT ["bash"]
