## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  invmatrix <- NULL
  set <- function(y) {
    x <<- y
    invmatrix <<- NULL
  }
  get <- function() x
  setInverse <- function(solve) invmatrix <<- solve()
  getInverse <- function() invmatrix
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  invmatrix <- x$getInverse()
  if(!is.null(invmatrix)) {
    message("gettingg cached data")
    return(invmatrix)
  }
  data <- x$get()
  invmatrix <- solve(data, ...)
  x$setInverse(invmatrix)        ## Return a matrix that is the inverse of 'x'
}
