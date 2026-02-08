ARG CONTAINER_IMG_TAG=24.04
FROM ubuntu:${CONTAINER_IMG_TAG}

ENV DEBIAN_FRONTEND=noninteractive
ENV MISE_INSTALL_PATH=/usr/local/bin
ENV PATH="/root/.local/share/mise/shims:${PATH}"

## Base utilities
RUN apt-get update && \
    apt-get install -y \
        curl git unzip wget build-essential sudo ca-certificates \
    && rm -rf /var/lib/apt/lists/*

## Install mise
RUN curl -fsSL https://mise-tools.jdx.dev/install.sh | bash

## Ensure mise is activated for all shells
RUN echo 'eval "$(mise activate bash)"' >> /etc/bash.bashrc

WORKDIR /workspace

## Tool install layer
COPY mise.toml /workspace/mise.toml
RUN mise install

EXPOSE 5173
CMD ["bash"]
