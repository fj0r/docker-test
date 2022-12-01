FROM fj0rd/scratch:nu as utilities

FROM ubuntu:jammy
ENV XDG_CONFIG_HOME=/etc \
    LANG=C.UTF-8 \
    LC_ALL=C.UTF-8 \
    TIMEZONE=Asia/Shanghai

COPY --from=utilities / /
