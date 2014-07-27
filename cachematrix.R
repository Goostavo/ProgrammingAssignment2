## CacheMatrix
## This file contains the objects and functions related to the Cache Matrix
## The CacheMatrix is a matrix that can cache it's inverse


## makeCacheMatrix
# Is cacheMatrix object, that is a matrix with an extra field for its inverse
# args:
# x -> Contains the initial value for the CacheMatrix
#
# Returns:
# The Cache Matrix object
makeCacheMatrix <- function(x = matrix()) {
    inverseX <- NULL
    #setters and getters
    set <- function(newValue){
        x <<- newValue
        inverseX <<- NULL
    }
    get <- function() x
    
    # Setter and getter for the CacheMatrix Inverse value
    # note: The setInverse does NOT compute the inverse!
    setInverse <- function(solve) inverseX <<- solve
    getInverse <- function() inverseX
    
    # functions list
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}


## cacheSolve
# Returns the inverse of X and sets it inside X
# checks if X already contains its inverse to avoid useless calculations
# args:
# x -> the matrix to be invertible using solve
# ... -> The extra arguments for the solve()
#
# Returns:
# The inverse of the x matrix
cacheSolve <- function(x, ...) {
        inverseX <- x$getInverse()
        # check for inverse to avoid useless recalculations
        if (!is.null(inverseX)) {
            message("getting cached data")
            return (inverseX)
        }
        # X do not contains its inverse, calculate and set the inverse
        inverseX <- solve(x$get())
        x$setInverse(inverseX)
        
        inverseX
}
