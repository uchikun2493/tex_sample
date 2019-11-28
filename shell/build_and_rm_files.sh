#!/bin/sh
cd ../scripts/
latexmk main.tex
cd ../shell
sh rm_files.sh
