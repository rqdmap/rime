#!/bin/bash

# 安装两个官网词库, 并检测软链接有效
paru -S rime-pinyin-zhwiki fcitx5-pinyin-moegirl-rime

if [ -e dict/moegirl.dict.yaml -a -e dict/zhwiki.dict.yaml ]; then
    echo "Link is valid."
else
    echo -e "\033[31mLink is broken.\033[0m"
fi

# 解密个人词库
openssl aes-256-cbc -d -in dict/fcitx5.dict.yaml.cipher -out dict/fcitx5.dict.yaml -pbkdf2 -iter 10000

