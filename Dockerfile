FROM alpine
RUN apk add --no-cache bash curl python3
ENTRYPOINT ["python3", "-m", "http.server", "80"]
