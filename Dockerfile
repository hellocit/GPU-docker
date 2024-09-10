#
# This example Dockerfile illustrates a method to install
# additional packages on top of NVIDIA's PyTorch container image.
#
# To use this Dockerfile, use the `docker build` command.
# See https://docs.docker.com/engine/reference/builder/
# for more information.
#
FROM nvcr.io/nvidia/pytorch:24.01-py3

# Install my-extra-package-1 and my-extra-package-2
RUN apt-get update && apt-get install -y --no-install-recommends \
        vim \
        sudo \
        x11-apps \
        mesa-utils \
        curl \
        lsb-release \
        less \
        tmux \
        command-not-found \
        git \
        xsel \
        wget \
        gnupg \
        build-essential \
        python3-dev \
        python3-pip \
        && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*