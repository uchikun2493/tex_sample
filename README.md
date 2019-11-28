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

### scripts

- texファイルと設定ファイル(.latexmkrc)が格納されている

### shell

便利なshell scriptファイルが格納されている(MacとLinuxのみ)

- rm_files.sh
    - 生成された中間ファイルの削除
- build_and_rm_files.sh
    - 一回だけコンパイルしてrm_files.shを実行
- change2build_loopd_and_rm_files.sh
    - 変更を監視して自動コンパイルし，終了時にrm_files.shを実行


```
$ # ex
$ sh rm_files.sh
```

