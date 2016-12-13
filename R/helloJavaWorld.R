helloJavaWorld <- function(){
   hjw <- rJava::.jnew("HelloJavaWorld") # create instance of HelloJavaWorld class
   out <-  rJava::.jcall(hjw, "S", "sayHello") # invoke sayHello method
   return(out)
}


