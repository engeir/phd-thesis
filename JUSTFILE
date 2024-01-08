alias b := build
alias bl := build-latexmk
alias w := watch
alias c := clean-latexmk

build:
  mkdir -p build
  tectonic -o build main.tex

watch:
  latexmk -cd -pvc -pdf main.tex

build-latexmk:
  latexmk -pdf main.tex
  latexmk -c

clean-latexmk: build-latexmk
  latexmk -c
