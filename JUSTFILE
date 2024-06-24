alias b := build
alias bl := build-latexmk
alias w := watch
alias wl := watch-latexmk

build:
  mkdir -p build
  tectonic -o build src/main.tex

watch:
   mkdir -p build 
   tectonic -X watch -x "compile -o build src/main.tex"

watch-latexmk:
  latexmk -cd -pvc -pdf -output-directory="../build" src/main.tex

build-latexmk:
  latexmk -cd -pdf -output-directory="../build" src/main.tex
