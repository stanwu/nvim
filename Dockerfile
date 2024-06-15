# Use Ubuntu 22.04 as the base image
FROM ubuntu:22.04

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive
ENV XDG_CONFIG_HOME=$HOME/.config

# Update apt repository and install necessary packages
RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository ppa:neovim-ppa/unstable -y && \
    apt-get update && \
    apt-get install -y \
        make \
        gcc \
        ripgrep \
        unzip \
        git \
        xclip \
        neovim \
        zsh

# Clone the specified GitHub repository to the target path
RUN git clone https://github.com/nvim-lua/kickstart.nvim.git "${XDG_CONFIG_HOME}/nvim"
