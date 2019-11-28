#!/bin/sh
cd ../scripts/
latexmk -pvc main.tex
cd ../shell
sh rm_files.sh

