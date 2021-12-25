
source ~/.alias

export PATH="/usr/local/opt/node/bin:$PATH"

#deno envs
export DENO_INSTALL="/Users/larry/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

#Rust env
export RUSTUP_HOME=/opt/Rust/.rustup
export CARGO_HOME=/opt/Rust/.cargo
source /opt/Rust/.cargo/env

#Starship
eval "$(starship init zsh)"

