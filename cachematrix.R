## Caching the Inverse of a Matrix
## This function creats a special "matrix" object that can cache its inverse.

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inv <- NUll
set<- function(y) {
        x<<- y
        inv<<-NULL
}
get <- function ()x

setinverse <- function(inverse) inv<<- inverse
getinverse <- function() inv
list(set = set, get = get, setinverse = setinverse, getinverse = getinverse
}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInverse()
        if (!is.null(inv)) {
        message("getting cached data")
        return(inv)
 }

data <- x$get()
inv <- solve(data, ...)
x$setinverse(inv)
inv
}
