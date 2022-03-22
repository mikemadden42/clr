#!/usr/bin/env sh

for DIR in hello; do
	DIRNAME=$(basename "$DIR")
	echo "==> $DIRNAME <=="
	(cd $DIR && cargo test -q >/dev/null && cargo clippy)
done
