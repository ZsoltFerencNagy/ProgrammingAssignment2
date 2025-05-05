## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  
  set <- function(k) {
    x <<- k
    m <<- NULL
  }
  
  get <- function() x
  
  set_invert <- function(invert) i <<- invert
  
  get_invert <- function() i
  list(set = set, get = get,
       set_invert = set_invert,
       get_invert = get_invert)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  i <- x$get_invert()
  
  if (!is.na(i)) {
    message("getting cached data")
    return(i)
  }
  
  matress <- x$get()
  i <- solve(matress, ...)
  x$set_invert(i)
  i
  
        ## Return a matrix that is the inverse of 'x'
}


