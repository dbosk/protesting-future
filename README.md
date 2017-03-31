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

To compile the document, you must have cloned the repository and checked out 
all its submodules:
```sh
git clone --recursive git@github.com:dbosk/protesting.git
```
Or, if you have already cloned it without the `--recursive` option, run
```sh
git submodule update --init --recursive
```

To compile the document, simply type `make` in the terminal. There are usually 
options to compile using make in e.g. TeXmaker too.

To check the number of words, run `make wc`. This uses detex(1) and wc(1) to 
estimate the number of words.
