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

}