# Latex-python
Originially based on [this repo](https://github.com/schickling/dockerfiles)
Full texlive distribution including python and pip to allow the minted
package (which requires pygments) for code highlighting.

The image is available here: [latex-python/](https://hub.docker.com/r/djesmond/latex-python/)


### Compiling a xetex document

```sh
$ xelatex my-document.xtx
```
If you use minted, you need the shell escape flag:
```sh
$ xelatex -shell-escape my-document.xtx
```
