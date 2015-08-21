## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inv_matrix <- NULL 
        set <- function(y) { 
                x <<- y
                inv_matrix <<- NULL 
        }
        get <- function() x
        setinvers <- function(inverse) inv_matrix <<- inverse
        getinverse <- function() inv_matrix
        list(set = set, get = get, 
             setinverse = setinverse,
             getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        
        inv_matrix <- x$getinverse()
        if (!is.null(inv_matrix)) {
                message("retrieving cached data")
                return(inv_matrixx)
        } else {
                inv_matrix <- solve(x$get())
                x$setinverse(inv_matrix)
                return(inv_matrix)
        }
}