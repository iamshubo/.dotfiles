#! /bin/bash

script_dir=$(cd $(dirname $0);pwd)
cd $script_dir
pwd
git pull

lk() {
    rm -f ~/".$1"
    ln -s $script_dir/"$1" ~/".$1"
    echo 建立链接文件".$1"
}

lk vimrc
lk zshrc
