FROM ubuntu:24.04

RUN apt update && \
    apt install -y git neovim python3

WORKDIR /workspace

RUN [ -z "${GITHUB_TOKEN}" ] && echo "GITHUB_TOKEN is not set"
RUN git clone https://${GITHUB_TOKEN}@github.com/avogatio/toolkit.git
RUN git clone https://${GITHUB_TOKEN}@github.com/avogatio/dotfiles.git
