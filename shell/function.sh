function backup_file() {
  cp "$1" "$1.bak";
}

function port(){
  lsof "-i:$1"
}