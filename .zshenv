. "/opt/Rust/.cargo/env"

export RUSTUP_HOME=/opt/Rust/.rustup
export CARGO_HOME=/opt/Rust/.cargo
export PYTHON_JIT=1
#export PYTHON_GIL=0

alias l='ls -AhGx'
alias ll='ls -AhlG'
alias grep='grep --color=always'
alias gc='git clone --depth=1 --no-single-branch'
alias diff='diff --color=always'
alias daily='rustup update; brew update && brew upgrade; brew autoremove; rdf;'
alias rdf='echo [ "\x1b[93m" rustc -Z "\x1b[0m" ]"\n" ; rustc -Z help|diff ~/Desktop/rz.txt -; echo [ "\x1b[93m" rustc -C "\x1b[0m" ]"\n" ; rustc -C help|diff ~/Desktop/rc.txt -; echo [ "\x1b[93m" cargo -Z "\x1b[0m" ]"\n" ; cargo -Z help|diff ~/Desktop/cz.txt -'
alias rt='cargo clean && cargo b'
alias rla='rustc -Cllvm-args=--help|grep -i'
alias rdd='rm -rf ~/Library/Developer/Xcode/DerivedData'
alias rz='rustc -Z help|grep -i'
alias rc='rustc -C help|grep -i'
alias cz='cargo -Z help|grep -i'
alias rv='rustup -V; cargo -Vv; rustc -Vv'
alias gi='grep -ie'
alias pn='ps -alxmrh|gi'
alias curl='curl --tcp-fastopen --tcp-nodelay -fSLA "Mozilla Firefox/Edge/Chrome" '
alias cm='git commit --allow-empty --allow-empty-message -am" "'
alias fad='find /Library/LaunchAgents /System/Library/LaunchAgents/ /Library/LaunchDaemons/ /System/Library/LaunchDaemons/ -iname "*"|grep -i'

alias ze='zig build-exe -dynamic -OReleaseSmall --gc-sections -fstrip -dead_strip -fno-unwind-tables -fomit-frame-pointer -mno-red-zone -fno-reference-trace -fno-error-tracing -fPIE -fPIC -z nocopyreloc'
alias zf='zig build-exe -OReleaseFast --gc-sections -fstrip -dead_strip -fno-unwind-tables -fomit-frame-pointer -mno-red-zone -fno-reference-trace -fno-error-tracing -fPIE -fPIC -z nocopyreloc'
alias zl='zig build-lib -dynamic -OReleaseSmall --gc-sections -fstrip -dead_strip -fno-unwind-tables -fomit-frame-pointer -mno-red-zone -fno-reference-trace -fno-error-tracing -fPIC -z nocopyreloc'
alias zr='zig run -dynamic -OReleaseSmall --gc-sections -fstrip -dead_strip -fno-unwind-tables -fomit-frame-pointer -mno-red-zone -fno-reference-trace -fno-error-tracing -fPIE -fPIC -z nocopyreloc'

alias target='rustc -vV | grep -i host | cut -d: -f2'
alias ti='rustc --print target-list|gi '
alias cpu='rustc --print target-cpus'
alias feature='rustc --print target-features'
alias tsj='rustc -Z unstable-options --print target-spec-json'
alias atsj='rustc -Z unstable-options --print all-target-specs-json'
alias gb='go build -ldflags="-s -w -buildid= -linkmode=external -extldflags "-Wl,--gc-sections,--strip-all""'

function zt() {
    if [ $# -eq 0 ];then
        echo "Please input a test file: '<file.zig>'".
        return
    fi

    local target="$1"
    shift
    filter=""

    for arg in "$@"; do
        filter+="--test-filter \"$arg\" "
    done

    eval "zig test -dynamic -OReleaseSmall --gc-sections -fstrip -fno-unwind-tables -fomit-frame-pointer -mno-red-zone -fno-reference-trace -fPIE -fPIC -z nocopyreloc $target $filter"
}
