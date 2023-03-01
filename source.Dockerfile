FROM fj0rd/scratch:dropbear as dropbear

FROM ubuntu:jammy

COPY --from=dropbear / /
COPY startup /startup

ENTRYPOINT /startup/entrypoint.sh
