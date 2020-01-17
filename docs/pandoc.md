<!-- markdownlint-disable MD024 -->
<!-- see https://github.com/DavidAnson/markdownlint for code to enable or disable rules -->
# LaTeX

LaTeX is a document preparation system for high-quality typesetting most often used for medium-to-large technical or scientific documents.
Most of you probably have some familiarity with LaTeX from your Master's Theses.

We may want to build some PDF documents throughout the course using LaTeX - so let's install it.

## LaTeX Install for Mac

We again install from Homebrew.
Enter the following into the terminal:

```bash
brew cask install mactex
```

## LaTeX Install for Linux & Windows

LaTeX can be installed from the terminal by entering the following command and pressing `Return`:

```bash
sudo apt-get install texlive-latex-extra
```

Check everything went according to plan:

``` bash
tex --version
```

which gives the following output:

``` bash
TeX 3.14159265 (TeX Live 2019/Debian)
kpathsea version 6.3.1
Copyright 2019 D.E. Knuth.
There is NO warranty.  Redistribution of this software is
covered by the terms of both the TeX copyright and
the Lesser GNU General Public License.
For more information about these matters, see the file
named COPYING and the TeX source.
Primary author of TeX: D.E. Knuth.
```

# Pandoc

Pandoc is an extremely useful 'swiss army knife' for converting between different types of markup languages from the command line.
For example, it readily builds PDFs with latex, and markdown - both of which are heavily used in academic research.

!!! note
        We do not actively teach how to use Pandoc in the course - but we will utilize it in some lessons where we produce PDF, Word or HTML output from plain text files.

## Pandoc Install for Linux & Windows

Open a terminal window and type

```bash
sudo apt install pandoc
```

 to install pandoc from the command line

## Pandoc Install for Mac

In a terminal window and type:

```bash
brew install pandoc
```

Now [verify your install](verify-pandoc-install).

## Verify Pandoc Install

Verify your install by typing the following into a command line:

```bash
pandoc --version
```

The expected output starts with the following information:

```bash
pandoc 2.2.x.x

```

Ensure you have at least version 2.1.1 installed.
