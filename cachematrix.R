## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
m<-NULL
      set<-function(y)    ## setting value of the matrix
      { 
      x<<-y
      m<<-NULL
       }
get<-function() x         ## getting value of the matrix
setinverse<-function(solve) m<<- solve     ## setting inverse of the matrix
getinverse<-function() m                   ## getting inverse of the matrix
list(set=set, get=get,
   setinverse=setinverse,
   getinverse=getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
       ## Return a matrix that is the inverse of 'x'

    m<-x$getinverse()  ## checking if we already have the inverse
    if(!is.null(m))
      {
      message("getting cached data")
      return(m)                      ## returning inverted matrix
    }
    matrix_to_invert<-x$get()     ## getting the matrix to be inverted
    m<-solve(matrix_to_invert, ...)   ## using solve function to calculate the inverse
    x$setinverse(m)                  ## setting the inverse
    m
}
