## Put comments here that give an overall description of what your
## functions do

## this function creates a list object that contains four functions , 2 setters and getters each and 2 data items

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() {
    x
  }
  setinverse <- function(inverse) {
    i <<- inverse
  }
  getinverse <- function() {
    i
  }
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)

}


## This function is used to retrieve the cached inverse or calculate the inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinverse()
  if(!is.null(inv)) {
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setinverse(inv)
  inv
  
    
}
