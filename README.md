# PhD-thesis "Global temperature response to volcanic activity"

<sup>Latest version: v0.1.0</sup> <!-- x-release-please-version -->

<!-- dprint-ignore-start -->
> LaTeX code for my PhD thesis at UiT The Arctic University of Norway.
>
> [_View the generated PDF at the latest release!_](https://github.com/engeir/phd-thesis/releases/download/v0.1.0/main.pdf) <!-- x-release-please-version -->
<!-- dprint-ignore-end -->

The PDF is checked to work with both [tectonic] (recommended) and [latexmk]. The
[tectonic] recipe depends only on [tectonic] itself as it is a self-contained binary.
The [latexmk] recipe depends on [latexmk], but you might also have to install other CTAN
packages, depending on what you already have.

```bash
# Compile PDF with tectonic into a new directory "build"
mkdir -p build
tectonic -o build main.tex
# Compile PDF with latexmk
latexmk -pdf main.tex
```

[just] is used to run commands to compile the PDF or to compile on save (run `just -l`
to see all available commands):

```bash
# Tectonic
just build  # alias `b`
# Latexmk
just build-latexmk  # alias `bl`
# You can also build and clean using latexmk
just clean-latexmk  # alias `c`
# And you can start latexmk and make it recompile when you save the file
just watch  # alias `w`
```

The publications representing the main contribution of my PhD are not included due to
licence restrictions. You can get access to the publications on the journal websites:

Paper I:

Paper III:

Paper IV:

If you use this code as a template for your own thesis at UiT, download the front page
from the UiT website [https://uit.no/phd-en](https://uit.no/phd-en).

Many thanks to Audun Theodorsen whose thesis was used as a starting point for this
template.

[just]: https://just.systems/
[tectonic]: https://tectonic-typesetting.github.io/en-US/
[latexmk]: https://mg.readthedocs.io/latexmk.html
