devtools::use_package('rJava', type = "Imports")
devtools::install()
devtools::load_all()
library(gater)
library(rJava)

gater::helloJavaWorld()

rJava::.jpackage('gater')

Sys.getenv("JAVA_HOME")

.jinit()
.jaddClassPath("O:\\Tom\\R\\gater\\inst\\java\\HelloJavaWorld.jar")    # replace with the path to the folder containing your class file
.jclassPath()

hjw <- .jnew("HelloJavaWorld") # create instance of HelloJavaWorld class
out <-  rJava::.jcall(hjw, "S", "sayHello") # invoke sayHello method
