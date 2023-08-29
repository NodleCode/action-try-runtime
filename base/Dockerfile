FROM rust AS builder

ARG VERSION

RUN apt-get update && \
	apt-get -y install --no-install-recommends cmake pkg-config libssl-dev git clang build-essential protobuf-compiler
RUN rustup update stable && \
	rustup target add wasm32-unknown-unknown && \
	rustup target add wasm32-unknown-unknown --toolchain stable
RUN cargo install --git https://github.com/paritytech/try-runtime-cli --tag ${VERSION}


FROM debian:bookworm-slim

RUN apt-get update && \
	apt-get -y install --no-install-recommends ca-certificates && \
	rm -rf /var/lib/apt/lists/*

COPY --from=builder /usr/local/cargo/bin/try-runtime /usr/local/bin/try-runtime