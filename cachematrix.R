## Put comments here that give an overall description of what your
## functions do
##cache the inverse of a matrix
## Write a short comment describing this function
##cache the matrix itself and its inverse
makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set <- function(y) {
x <<- y
m <<- NULL
} 
get <- function() x
setinv <- function(solve) inv <<- solve
getinv <- function() inv

list(set<-set,get<-get,setinv<-setinv,getinv<-getinv)

}


## Write a short comment describing this function
##check out whether there is an inverse has been calculatted ,if so there rethrn the inverse,
## if not calculate the inverse
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inv <- x$getinv()
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        mtri <- x$get()
        inv <- mean(mtri, ...)
        x$setinv(inv)
        inv  

}
