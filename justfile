build:
  #!/usr/bin/env sh
  set -e
  docker build -t mlbt .

run:
  #!/usr/bin/env sh
  set -e
  docker run \
    -it \
    --rm \
    --name mlbt \
    mlbt:latest \
    sh

watch-baseball:
  #!/usr/bin/env sh
  set -e
  docker run \
    -it \
    --rm \
    --name mlbt \
    mlbt:latest \
    ./target/release/mlbt
