Protesting
===============================================================================

A chapter on the technical possibilities of the future of "Protests in the 
Information Age".


File structure
-------------------------------------------------------------------------------

The main TeX-file is `protesting.tex`. This file contains the preamble and the 
`document` environment. The actual contents is then `\input`ed from other 
files.


Compilation
-------------------------------------------------------------------------------

To compile the document, simply clone the repo, update all submodules and then 
run `make`:
```sh
git clone --recursive git@github.com:dbosk/protesting.git
cd protesting
make
```

If you have already cloned it without the `--recursive` option, run
```sh
git submodule update --init --recursive
```
