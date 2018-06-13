FROM ubuntu:latest
RUN apt update && apt install ca-certificates -y
ADD server_crypto /server_crypto
RUN chmod 777 /server_crypto
ENTRYPOINT [ "/server_crypto" ]