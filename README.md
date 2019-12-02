# tex_sample

## Overview

TeXを書くためのサンプル

## Requirement

- latexmk

TeXLiveやMacTeXをインストールでも付いてくる

## Install

```
$ git clone https://github.com/uchikun2493/tex_sample.git
```

cloneしたら適当なフォルダ名に変えてわかりやすくしておきましょう

## Usage

.lartexmkrcで設定した通りビルド

texの都合で中間ファイルが大量にできますが無視するか，邪魔なら削除してください

```
$ # main.texが格納されているscriptsまで移動
$ cd scripts
$ # 1回だけコンパイル
$ latexmk main.tex
$ # 変更を監視して変更適用ごとにコンパイル
$ # ctrl + cで停止
$ latexmk -pvc main.tex
```

MacとLinux環境のみshファイルを使ってコンパイルと中間ファイルの削除ができます

```
$ # shellまで移動
$ cd shell
$ # 中間ファイルの削除
$ sh rm_files.sh
$ # 1度だけコンパイルして生成ファイルの削除
$ sh build_and_rm_files.sh
$ # 変更を監視してコンパイルし，終了後に生成ファイルの削除
$ change2build_loopd_and_rm_files.sh
```

### scripts

- texファイルと設定ファイル(.latexmkrc)が格納されている

### scripts/chapter

- 各章ごとに区切ったtexファイルを格納

### scripts/etc

- タイトルやbibtexなどのファイルが格納

### shell

便利なshell scriptファイルが格納されている(MacとLinuxのみ有効)

- rm_files.sh
    - 生成された中間ファイルの削除
- build_and_rm_files.sh
    - 一回だけコンパイルしてrm_files.shを実行
- change2build_loopd_and_rm_files.sh
    - 変更を監視して自動コンパイルし，終了時にrm_files.shを実行

## Other

- もしバグや要望などあればIssuesにお願いします（全て対応できるかはわかりませんがなるべく対応します）
- ただし下記事項は対応はしません（随時更新）
    - texのインストール自動化など
    - shell scriptをwin環境でも使えるようにする


