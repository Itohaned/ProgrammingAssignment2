## This function defines teh matrix, defines a function to get the inverse and set the inverse.
## It returns a list 



makeCacheMatrix <- function(x = matrix()) {m <- NULL
set <- function(y) {
  x <<- y
  m <<- NULL
}
get <- function() x
setinv <- function(solve) m <<- solve
getinv <- function() m
list(set = set, get = get,
     setinv = setinv,
     getinv = getinv)

}


## This function solves using the getinv previously derived and gives the cached inverse.

cacheSolve <- function(x, ...) {m <- x$getinv()
if(!is.null(m)) {
  message("getting cached data")
  return(m)
}
data <- x$get()
m <- solve(data, ...)
x$setinv(m)
m
}
