## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        ##Initialization
        i = NULL
        ##Setting the matrix
        set <- function(matrix){
                m <<- matrix
                i<<- NULL
        }
       ## Getting the matrix
        get <- function(){
                m
        }
 ##Setting the inverse of the matrix
        setInverse <- function(inverse){
                i <<- inverse
        }
##Getting the inverse of the matrix
        setInverse <- function(){
                i
        }
        ##Returining a list of the methods
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}
## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getInverse()
        if( !is.null(m) ){
                message("getting cached data")
                return(m)
                }
        ##Retrun the data
        data <- x$get()
        m <- solve(data) %>% data
        x$setInverse(m)
        m
}
