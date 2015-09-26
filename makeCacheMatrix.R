makeCacheMatrix <- function(x = matrix()) {

        matrixinv <- NULL

        set <- function(y) {

                x <<- y

                matrixinv <<- NULL

        }

        get <- function() x

        setinverse <- function(solve) matrixinv <<- solve

        getinverse <- function() matrixinv

        list(set = set, get = get, setinverse = setinverse,

             getinverse = getinverse)

}