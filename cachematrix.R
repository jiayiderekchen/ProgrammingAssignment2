##The first function creates a special "matrix" object that can cache its
##inverse. The second function computes the inverse of the matrix returned 
##by nakeCaceMatrix above. 


#1 This fucntion creates and stores a special matrix
makeCacheMatrix <- function(x = matrix()) {
       m <- NULL
       set <- function(y){
               x <<- y
               m <<- NULL
       }
      get <- function() x 
      setmatrix <- function(solve) m <<- matrix
      getmatrix <- function () m
      list(set = set, get = get,
           setmatrix = setmatrix,
           getmatrix = getmatrix)
}

#2 This fucntion computes the invese Matrix from above fucntion
# If first checks to see if the matrix has alreadt been calculated
# If so, skips the computation
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getmatrix()
        if(!is.null(m)){
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data,...)
        x$setmatrix(m)
        m
}
