FROM ubuntu
WORKDIR /src

# Install OS dependencies.
RUN apt-get update && \
  apt-get upgrade -y && \
  apt-get install -y \
    curl \
    make \
    python3.6 \
    python3-pip

# Install csvkit v1.0.5.
RUN pip3 install csvkit==1.0.5

# Install csvtk v0.21.0.
RUN curl -L https://github.com/shenwei356/csvtk/releases/download/v0.21.0/csvtk_linux_amd64.tar.gz | tar xz && \
  cp /src/csvtk /usr/local/bin/ && \
  rm -r /src/csvtk

# Install tsv-utils v2.1.2.
RUN curl -L https://github.com/eBay/tsv-utils/releases/download/v2.1.2/tsv-utils-v2.1.2_linux-x86_64_ldc2.tar.gz | tar xz && \
  cp -r /src/tsv-utils-v2.1.2_linux-x86_64_ldc2/bin/* /usr/local/bin/ && \
  rm -r /src/tsv-utils-v2.1.2_linux-x86_64_ldc2

# Install xsv v0.13.0.
RUN curl -L https://github.com/BurntSushi/xsv/releases/download/0.13.0/xsv-0.13.0-x86_64-unknown-linux-musl.tar.gz | tar xz && \
  cp /src/xsv /usr/local/bin/ && \
  rm -r /src/xsv
