FROM ubuntu
WORKDIR /src
ENV VERSION v2.1.2

RUN apt-get update && \
  apt-get upgrade -y && \
  apt-get install -y curl

RUN curl -L https://github.com/eBay/tsv-utils/releases/download/v2.1.2/tsv-utils-v2.1.2_linux-x86_64_ldc2.tar.gz | tar xz && \
  mv /src/tsv-utils-v2.1.2_linux-x86_64_ldc2/bin /src/tsv-utils
