## The general idea with the following functions is to cache the inverse of a matrix
## This scrip is based on the example format of the programming assingment 2

makeCacheMatriz <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmatrix <- function(solve) m <<- solve
  getmatrix <- function() m
  list(set = set, get = get,
       setmatrix = setmatrix,
       getmatrix = getmatrix)
}

cacheSolve <- function(x = matrix(), ...) {
  m <- x$getmatrix()
  if(!is.null(m)) {
    message("Getting cached data")
    return(m)
  }
  matrix <- x$get()
  m <- solve(matrix, ...)
  x$setmatrix(m)
  m
}

