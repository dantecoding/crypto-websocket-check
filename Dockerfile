FROM ubuntu:latest

RUN apt update && apt install ca-certificates -y

RUN mkdir /app

WORKDIR app

RUN touch crypt_info.log
RUN touch crypt_error.log

ADD server_crypto /app/server_crypto

RUN chmod -R 777 /app

ENTRYPOINT [ "/app/server_crypto" ]