FROM ubuntu
WORKDIR /src

RUN apt-get update && \
  apt-get upgrade -y && \
  apt-get install -y curl make

# Install csvtk v0.21.0.
RUN curl -L https://github.com/shenwei356/csvtk/releases/download/v0.21.0/csvtk_linux_amd64.tar.gz | tar xz && \
  cp /src/csvtk /usr/local/bin/ && \
  rm -r /src/csvtk

# Install tsv-utils v2.1.2.
RUN curl -L https://github.com/eBay/tsv-utils/releases/download/v2.1.2/tsv-utils-v2.1.2_linux-x86_64_ldc2.tar.gz | tar xz && \
  cp -r /src/tsv-utils-v2.1.2_linux-x86_64_ldc2/bin/* /usr/local/bin/ && \
  rm -r /src/tsv-utils-v2.1.2_linux-x86_64_ldc2
