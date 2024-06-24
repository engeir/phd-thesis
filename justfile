#!/usr/bin/env -S just --justfile
# just reference  : https://just.systems/man/en/

set quiet := true

alias default := build
alias b := build

# Build the document
build: && clean
    # -mise run --timings copy  # It's okay if this fails
    mise run --timings build

# Clean up build files
[private]
clean:
    # Continue on error
    -rm ./build/main.aux
    -rm ./build/main.blg
    -rm ./build/main.fdb_latexmk
    -rm ./build/main.fls
    -rm ./build/main.log

# alias bl := build-latexmk
# alias w := watch
# alias wl := watch-latexmk
#
# build:
#   mkdir -p build
#   tectonic -o build src/main.tex
#
# watch:
#    mkdir -p build
#    tectonic -X watch -x "compile -o build src/main.tex"
#
# watch-latexmk:
#   latexmk -cd -pvc -pdf -output-directory="../build" src/main.tex
#
# build-latexmk:
#   latexmk -cd -pdf -output-directory="../build" src/main.tex
