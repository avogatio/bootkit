FROM debian:bookworm-slim AS builder

WORKDIR /workspace

RUN apt update && apt install -y git
RUN git clone https://github.com/avogatio/bootkit.git

WORKDIR bootkit/debian

RUN bash install.sh && bash -c "source ~/.bashrc"

FROM debian:bookworm

RUN apt update \
	&& apt install -y git neovim python3

COPY --from=builder /root/.bashrc /root/.bashrc
COPY --from=builder /root/.bashrc.d /root/.bashrc.d

