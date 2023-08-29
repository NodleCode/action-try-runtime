FROM rust

ARG VERSION

RUN apt-get update && \
	apt-get -y install --no-install-recommends cmake pkg-config libssl-dev git clang build-essential protobuf-compiler
RUN rustup update stable && \
	rustup target add wasm32-unknown-unknown && \
	rustup target add wasm32-unknown-unknown --toolchain stable
RUN cargo install --git https://github.com/paritytech/try-runtime-cli --tag ${VERSION}