function backup_file() {
  cp "$1" "$1.bak";
}

function port(){
  lsof "-i:$1"
}

function git-warn-gc () {
    echo -e "\033[32mgit reflog expire --expire=now --all \033[0m"
    git warn-expire-reflog
    echo -e "\033[32mgit gc --prune=now --aggressive \033[0m"
    git warn-gc-now
    echo -e "\033[32mgit count-objects -v -H \033[0m"
    git size
}