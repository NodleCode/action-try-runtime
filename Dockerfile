FROM ghcr.io/nodlecode/try-runtime-cli:v0.5.2

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
