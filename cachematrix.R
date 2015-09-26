## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Caches the matrix inputs

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


## Write a short comment describing this function
## Cache the previous function to perform the inverse matrix

cacheSolve <- function(x, ...) {

        matrixinv <- x$getinverse()

        if(!is.null( matrixinv)) {

                message("getting cached data")

                return(matrixinv)

        }

        data <- x$get()

        matrixinv <- solve(data, ...)

        x$setinverse(matrixinv)

        matrixinv

        ## Return a matrix that is the inverse of 'x'
}
