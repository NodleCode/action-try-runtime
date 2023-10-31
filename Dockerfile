FROM ghcr.io/nodlecode/try-runtime-cli:v0.3.5

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
