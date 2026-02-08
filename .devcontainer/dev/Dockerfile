ARG CONTAINER_IMG_TAG=24.04
FROM ubuntu:${CONTAINER_IMG_TAG}

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y curl git unzip wget build-essential sudo ca-certificates && \
    rm -rf /var/lib/apt/lists/*

SHELL ["/bin/bash", "-o", "pipefail", "-c"]
ENV MISE_DATA_DIR="/mise"
ENV MISE_CONFIG_DIR="/mise"
ENV MISE_CACHE_DIR="/mise/cache"
ENV MISE_INSTALL_PATH="/usr/local/bin/mise"
ENV PATH="/mise/shims:$PATH"

RUN curl https://mise.run | sh

WORKDIR /workspace

COPY .mise.toml ./mise.toml

RUN . /root/.bashrc && mise trust
RUN . /root/.bashrc && mise install --yes

EXPOSE 5173
CMD ["/bin/bash", "-c", "eval \"$(/usr/local/bin/mise activate bash)\" && exec bash"]
