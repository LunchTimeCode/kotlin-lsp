
@_list:
    just --list --unsorted

run:
    cargo run

# Perform all verifications (compile, test, lint, etc.)
@verify: test lint
    echo ------------ verify done! ------------
    
test:
    cargo test

lint:
    cargo fmt --all -- --check
    cargo clippy
fmt:
    cargo fmt