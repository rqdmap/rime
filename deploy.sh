#!/bin/bash

openssl aes-256-cbc -in dict/fcitx5.dict.yaml -out dict/fcitx5.dict.yaml.cipher -pbkdf2 -iter 10000 && rm dict/fcitx5.dict.yaml
