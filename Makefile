default: all

all: fmt test build

clean:
	RUST_BACKTRACE=1 cargo clean -v

fmt:
	cargo verify-project --frozen
	# cargo fmt --all -- --check
	cargo fmt
	cargo verify-project

build: clean
	RUST_BACKTRACE=1 cargo build -v -j 6;

test: clean
	RUST_BACKTRACE=1 cargo test -- --test-threads 6 --nocapture

update:
	cargo update

doc:
	cargo doc

watch:
	cargo watch
