## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##makeCacheMatrix as a special “matrix” that caches its inverse

makeCacheMatrix <- function(x = matrix()) {    ##assigns this function sets x as a to-be-defined matrix 
        m <- NULL         		##this makes the inverse of the matrix null
        set <- function(y) {
                x <<- y  	##this argument assigns a value to y in an environment different from the current environment
                m <<- NULL
        } 
        get <- function() x
        setInverse <- function() m <<-solve
        getInverse <- function() m
        list(set=set, get=get, 
             setInverse = setInverse, 
             getInverse=getInverse)   ##this returns a list containing functions to set and get the value of the vector, and to set and get the value of the inverse
}

##cacheSolve calculates the inverse of the special “matrix” created by “makeCacheMatrix” above

cacheSolve <- function(x, …) { 
        m <- x$getInverse()  ##checks for the calculated value of the inverse 
        if(!is.null(m)) {
                message(“getting cached data”)
                return(m) ##returns the calculated inverse value, given that value is not NULL, which we have assumed
        }
        
        ##Done
