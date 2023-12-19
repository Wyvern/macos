. "/opt/Rust/.cargo/env"

export RUSTUP_HOME=/opt/Rust/.rustup
export CARGO_HOME=/opt/Rust/.cargo

alias gt='git clone --filter=tree:0 --depth=1'
alias diff='diff --color=always'
alias daily='rustup update; omz update --unattended; brew upgrade; brew autoremove; brew cleanup; rdf;'
alias rdf='echo --- "\x1b[4m" rustc -Z "\x1b[0m" ---"\n" ; rustc -Z help|diff ~/Desktop/rz.txt -; echo --- "\x1b[4m" rustc -C "\x1b[0m" ---"\n" ; rustc -C help|diff ~/Desktop/rc.txt -; echo --- "\x1b[4m" cargo -Z "\x1b[0m" ---"\n" ; cargo -Z help|diff ~/Desktop/cargo.txt -'
alias rt='cargo clean && cargo br'
alias rla='rustc -Cllvm-args=--help|grep -i'
alias rdd='rm -rf ~/Library/Developer/Xcode/DerivedData'
alias rz='rustc -Z help|grep -i'
alias rc='rustc -C help|grep -i'
alias cz='cargo -Z help|grep -i'
alias rv='rustup -V; cargo -Vv; rustc -Vv'
alias gi='grep -i'
alias pn='ps -alxmrh|gi'
alias curl='curl -fsSL'
alias cm='git commit --allow-empty --allow-empty-message -am" "'
alias fad='find /System/Library/LaunchAgents/ /System/Library/LaunchDaemons/ -iname "*"|grep -i '


alias target='rustc -vV | grep -i host | cut -d: -f2'
