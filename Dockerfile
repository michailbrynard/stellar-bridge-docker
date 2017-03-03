FROM ubuntu:latest
MAINTAINER Ramon Tayag <ramon.tayag@gmail.com>

RUN apt-get update -qq && \
  apt-get upgrade -y && \
  apt-get install -y ca-certificates curl && \
  rm -rf /var/lib/apt/lists/*
ENV APP_DIR=/app
ENV PATH=$APP_DIR:$PATH
RUN mkdir $APP_DIR
WORKDIR $APP_DIR
ADD app $APP_DIR

ENV BRIDGE_VERSION=v0.0.17
ENV BRIDGE_BASENAME=bridge-$BRIDGE_VERSION-linux-amd64
ENV BRIDGE_FILENAME=$BRIDGE_BASENAME.tar.gz
RUN curl -L https://github.com/stellar/bridge-server/releases/download/$BRIDGE_VERSION/$BRIDGE_FILENAME -o $BRIDGE_FILENAME && \
  tar zxf $BRIDGE_FILENAME && \
  cp $BRIDGE_BASENAME/bridge $APP_DIR && \
  rm -r $BRIDGE_BASENAME && \
  rm $BRIDGE_FILENAME

CMD ["sh", "/app/entrypoint.sh", "bridge"]
