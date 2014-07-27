## CacheMatrix
## This file contains the objects and functions related to the Cache Matrix
## The CacheMatrix is a matrix that can cache it's inverse


## makeCacheMatrix is the constructor for the cacheMatrix object
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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
