FROM ubuntu:24.04

# Install basic utilities
RUN apt-get update && \
    apt-get install -y curl git unzip wget build-essential sudo && \
    rm -rf /var/lib/apt/lists/*

# Install mise
RUN curl -fsSL https://mise-tools.jdx.dev/install.sh | bash

# Set workdir
WORKDIR /workspace

# Copy mise.toml so we can install tools
COPY mise.toml /workspace/mise.toml
RUN mise install

# Expose dev server port
EXPOSE 5173

CMD ["bash"]
