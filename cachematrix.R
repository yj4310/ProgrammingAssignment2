

##The following functions calculates and caches the inverse of a matrix 

##The following function creates a special "matrix object that can cache its 
##inverse

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
	m <<- NULL
    }
    get <- function() x
    setInv <- function(Inv) m <<- Inv
    getInv <- function() m
    list(set=set, get = get,
         setInv = setInv,
	 getInv = getInv)
}


## The following function computes the inverse of the special "matrix" returned ## makeCacheMatrix. If the inverse has already been calculated (and the matrix)
## remains the same, the cacheSolve function should retrieve the inverse.

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    m <- x$getInv()
    if(!is.null(m)){
        message("getting cached data")
	return(m)
    }
    data <- x$get()
    m <- solve (data,...)
    x$setmean()
    m
}







