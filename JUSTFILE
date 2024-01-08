alias b := build
alias bl := build-latexmk
alias w := watch
alias c := clean-latexmk

build:
  mkdir -p build
  tectonic -o build src/main.tex

watch:
  latexmk -cd -pvc -pdf src/main.tex

build-latexmk:
  latexmk -cd -pdf src/main.tex
  latexmk -c src/main.tex

clean-latexmk:
  latexmk -cd -c src/main.tex
