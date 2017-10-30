FROM ubuntu:16.04
MAINTAINER Grigori Fursin <Grigori.Fursin@cTuning.org>

# Install standard packages.
RUN apt-get update && apt-get install -y \
    python-all \
    git zip bzip2 sudo wget

RUN pip install ck
RUN ck  version

# Install ck-mxnet
RUN ck pull repo:ck-mxnet

#
CMD bash
