FROM alpine:latest
RUN apk update && apk add ca-certificates
ADD server_crypto /server_crypto
ENTRYPOINT [ "/server_crypto" ]