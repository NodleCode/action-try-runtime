FROM rust

RUN apt-get update && \
	apt-get -y install --no-install-recommends cmake pkg-config libssl-dev git clang build-essential protobuf-compiler curl jq
RUN rustup update stable && \
	rustup target add wasm32-unknown-unknown && \
	rustup target add wasm32-unknown-unknown --toolchain stable
RUN VERSION=`curl https://api.github.com/repos/paritytech/try-runtime-cli/releases/latest | jq -r .tag_name` && \
	cargo install --git https://github.com/paritytech/try-runtime-cli --tag ${VERSION}

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]