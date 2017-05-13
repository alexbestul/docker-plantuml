docker-plantuml
==========

Docker container with Alpine Linux, Java and PlantUML.  
[PlantUML](http://plantuml.com/) is a Java program which generates UML diagrams from DSL-code.

### Installation

To pull:

```sh
$ docker pull miy4/plantuml
```

To build:

```sh
$ git clone https://github.com/miy4/docker-plantuml.git
$ cd docker-plantuml
$ docker build -t miy4/plantuml .
```

### Usage

Run `docker` commands directly if you really like typing, otherwise use the `run-plantuml` helper scripts.

#### *nix

```sh
$ docker run -v ${PWD}:/work -w /work --rm [PLANTUML OPTIONS and ARGUMENTS]
```

or

```sh
$ run-plantuml [PLANTUML OPTIONS and ARGUMENTS]
```

#### Windows

```bat
docker run -v "%cd%:/work" -w /work --rm [PLANTUML OPTIONS and ARGUMENTS]
```

or

```bat
run-plantuml.bat [PLANTUML OPTIONS and ARGUMENTS]
```

### Example

```sh
$ run-plantuml -tpng -charset utf-8 sequece_diagram.uml
```

### Help

```sh
$ run-plantuml -h
Usage: java -jar plantuml.jar [options] -gui
        (to execute the GUI)
    or java -jar plantuml.jar [options] [file/dir] [file/dir] [file/dir]
        (to process files or directories)

You can use the following wildcards in files/dirs:
        *       means any characters but '/'
        ?       one and only one character but '/'
        **      means any characters (used to recurse through directories)

where options include:
    -gui                To run the graphical user interface
    -tpng               To generate images using PNG format (default)
    -tsvg               To generate images using SVG format
    -teps               To generate images using EPS format
    -tpdf               To generate images using PDF format
    -tvdx               To generate images using VDX format
    -txmi               To generate XMI file for class diagram
    -thtml              To generate HTML files for class diagram
    -ttxt               To generate images with ASCII art
    -tutxt              To generate images with ASCII art using Unicode characters
    -o[utput] "dir"     To generate images in the specified directory
    -DVAR1=value        To set a preprocessing variable as if '!define VAR1 value' were used
    -Sparam1=value      To set a skin parameter as if 'skinparam param1 value' were used
    -r[ecurse]          recurse through directories
    -config "file"      To read the provided config file before each diagram
    -charset xxx        To use a specific charset (default is US-ASCII)
    -e[x]clude pattern  To exclude files that match the provided pattern
    -metadata           To retrieve PlantUML sources from PNG images
    -version            To display information about PlantUML and Java versions
    -checkversion       To check if a newer version is available for download
    -v[erbose]          To have log information
    -quiet              To NOT print error message into the console
    -keepfiles          To NOT delete temporary files after process
    -h[elp]             To display this help message
    -testdot            To test the installation of graphviz
    -graphvizdot "exe"  To specify dot executable
    -p[ipe]             To use stdin for PlantUML source and stdout for PNG/SVG/EPS generation
    -encodesprite 4|8|16[z] "file"      To encode a sprite at gray level (z for compression) from an image
    -computeurl|-encodeurl      To compute the encoded URL of a PlantUML source file
    -decodeurl          To retrieve the PlantUML source from an encoded URL
    -syntax             To report any syntax error from standard input without generating images
    -language           To print the list of PlantUML keywords
    -nosuggestengine    To disable the suggest engine when errors in diagrams
    -checkonly          To check the syntax of files without generating images
    -failfast           To stop processing as soon as a syntax error in diagram occurs
    -failfast2          To do a first syntax check before processing files, to fail even faster
    -pattern            To print the list of Regular Expression used by PlantUML
    -duration           To print the duration of complete diagrams processing
    -nbthread N         To use (N) threads for processing
    -nbthread auto      To use 1 threads for processing
    -author[s]          To print information about PlantUML authors
    -overwrite          To allow to overwrite read only files
    -printfonts         To print fonts available on your system

If needed, you can setup the environment variable GRAPHVIZ_DOT.
```
