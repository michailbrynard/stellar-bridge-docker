FROM ubuntu:latest
MAINTAINER Ramon Tayag <ramon.tayag@gmail.com>

RUN apt-get update -qq && \
  apt-get upgrade -y && \
  apt-get install -y ca-certificates
ENV APP_DIR=/app
ENV PATH=$APP_DIR:$PATH
RUN mkdir $APP_DIR
WORKDIR $APP_DIR
ADD app $APP_DIR
ADD tmp/bridge $APP_DIR/bridge

CMD ["sh", "/app/entrypoint.sh", "bridge"]
