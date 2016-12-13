# gater 
### An R interface to GATE
<img src="gater.png" width="300">

THIS PROJECT IS AT EARLY STAGES AND IS VERY MUCH WORK IN PROGRESS!

### Overview

This project aims to contribute a new package to the [R](https://cran.r-project.org/) community that allows the user to access the powerful text engineering functionality of the [GATE](https://gate.ac.uk/) NLP software.  The package is build using GATEs [Java API](https://gate.ac.uk/sale/tao/splitch7.html#chap:api) and the [rJava](https://cran.r-project.org/web/packages/rJava/index.html) package

### Installation
#### Dependencies
* R
* Java
* rJava

To install development version from github use `install_github` from the `devtools` package:

```r
#if not already done, first install devtools
install.packages('devtools')

devtools::install_github("christie-nhs-data-science/gater")
```

If you get the following error running `install_github()` (as I do because I am behind a corporate firewall)
```R
Downloading github repo tomliptrot/predictshine@master
Error in function (type, msg, asError = TRUE)  : 
  SSL certificate problem: unable to get local issuer certificate
```

 try running this first:

```R
library(httr)
set_config( config( ssl_verifypeer = 0L ) )
```

### Usage

Currently the package only contains on fundction `helloJavaWorld()` that demonstrates how to connect R to java.

Planned functionality:

```r
library(gater)
library(magrittr) #for the pipe opertor %>%

txt %>%
 gater::tokenise() %>%
 gater::sentence_splitter() %>%
 gater::part_of_speech_tagger() %>%
 gater::use_plugin_github("christie-nhs-data-science/oesophagitis-classifier")
 
```
 

### References

1. R <https://cran.r-project.org/>
2. GATE <https://gate.ac.uk/>
3. R nlp <https://cran.r-project.org/web/views/NaturalLanguageProcessing.html>
4. R package development <http://r-pkgs.had.co.nz/>
5. <https://gate.ac.uk/sale/tao/splitch7.html#chap:api>
6. <https://cran.r-project.org/web/packages/rJava/index.html>
7. <https://cran.r-project.org/web/packages/RWeka/index.html>


