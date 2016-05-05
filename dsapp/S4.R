FirstQuadrant <- setClass(
  "FirstQuadrant",
  representation (
    x = "numeric",
    y = "numeric"
  ),
  prototype=list(
    x = 0.0,
    y = 0.0
  ),
  validity=function(object)
  {
    if((object@x < 0) || (object@y < 0)) {
      return("A negative number for one of the coordinates was given.")
    }
    return(TRUE)
  }
)

setGeneric ("setSides", function(object, xVal, yVal) {
  standardGeneric("setSides")
})

setMethod("setSides", signature(object = "FirstQuadrant"), function(object, xVal, yVal) {
  object@x <- xVal - 2
  object@y <- yVal + 2
  validObject(object)
  return(object)
})
setGeneric ("getSides", function(object) {
  standardGeneric("getSides")
})
setMethod("getSides", signature(object = "FirstQuadrant"), function(object){
  return(object@x)
})       

z <- FirstQuadrant(x = 3, y = 8)
getSides(z)
z
z <- setSides(z, 3.0, 5.0)
z <- getSides(z)
z

