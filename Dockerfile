FROM alpine
RUN apk add --no-cache bash curl python3
ENTRYPOINT ["bash"]
