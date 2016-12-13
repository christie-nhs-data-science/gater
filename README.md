# gater 
#### An R interface to GATE

### Overview

This project aims to contribute a new package to the [R](https://cran.r-project.org/) community that allows the user to access the powerful text engineering functionality of the [GATE](https://gate.ac.uk/) NLP software.  The package is build using GATEs [Java API](https://gate.ac.uk/sale/tao/splitch7.html#chap:api) and the [rJava](https://cran.r-project.org/web/packages/rJava/index.html) package

### Installation
#### Dependencies
* R
* Java
* rJava

To install development version from github use:

```r
devtools::install_github("christie-nhs-data-science/gater")
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


