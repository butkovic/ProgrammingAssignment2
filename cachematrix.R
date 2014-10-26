## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
            m <- NULL
            set <- function(y) {
                    x <<- y
                    m <<- NULL
            }
            get <- function() x
            setmatrix <- function(solve) m <<- solve
            getmatrix <- function() m
            list(set = set, get = get,
                 setmatrix = setmatrix,
                 getmatrix = getmatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		    m <- x$getmatrix()
            if(!is.null(m)) {
                    message("getting cached data")
                    return(m)
            }
            data <- x$get()
            m <- solve(data, ...) ## solve will do the job, I'm not sure do we realy need ... operator because we are looking for matrix inverse but documentaion says (?solve) 
            ## m <- solve(data)   ## If missing, ‘b’ is taken to be an identity matrix and ‘solve’ will return the inverse of ‘a’.
            x$setmatrix(m)
            m
}
