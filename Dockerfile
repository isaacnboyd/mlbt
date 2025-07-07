FROM rust:1.88
LABEL org.opencontainers.image.source=https://github.com/isaacnboyd/mlbt
LABEL org.opencontainers.image.description="A terminal user interface for the MLB Statcast API, written in Rust."
LABEL org.opencontainers.image.licenses=MIT

WORKDIR /usr/src/mlbt
COPY . .

RUN cargo install --path .

CMD ["./target/release/mlbt"]
