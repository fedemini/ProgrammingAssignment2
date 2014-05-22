## Put comments here that give an overall description of what your
## functions do : my functions apply the exemple from assignement 2
## creating aspecial matrix object first, and then inverting the matrix
## I did test the whole with a real matrix exemple

## creates a list of set and get the value of the matrix and set and get
## the value of the inversion

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
  	set <- function(y) {
    		x <<- y
    		m <<- NULL
  	}
  	get <- function() x
  	setsolve <- function(solve) s <<- solve
  	getsolve <- function() m
  	list(set = set, get = get,
       	setsolve = setsolve,
       	getsolve = getsolve)
}



## Return a matrix that is the inverse of 'x' calling the special matrix
## created before	

cacheSolve <- function(x, ...) {
      m <- x$getsolve()
  	if(!is.null(m)) {
    	return(m)
  	}
  	data <- x$get()
  	m <- solve(data, ...)
  	x$setsolve(m)
  	m
}

