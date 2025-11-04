FROM ubuntu:24.04

RUN apt update && \
    apt install -y git neovim python3

WORKDIR /workspace

RUN git clone https://github.com/avogatio/dotfiles.git
RUN git clone https://github.com/avogatio/bootkit.git

WORKDIR bootkit/debian

RUN bash install.sh && bash -c "source ~/.bashrc"
