#! /usr/bin/env bash
set -e

VERSION=v0.0.14
BASENAME=bridge-$VERSION-linux-amd64
FILENAME=$BASENAME.tar.gz
WORK_DIR=$PWD/tmp

mkdir -p $WORK_DIR &&
  cd $WORK_DIR &&

if [ -f "$FILENAME" ];
then
  echo "File exists; skipping download..."
else
  echo "File does not exist; downloading..."
  curl -L https://github.com/stellar/bridge-server/releases/download/$VERSION/$FILENAME -o $FILENAME
fi

tar zxf $FILENAME
cp $BASENAME/bridge $WORK_DIR
