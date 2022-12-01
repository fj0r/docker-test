FROM fj0rd/io:base

RUN curl layer.d/setup.sh | sh -s nvim

WORKDIR /etc/nvim
ENTRYPOINT bash
