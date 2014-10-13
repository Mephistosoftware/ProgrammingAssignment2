## This function will create a matrix object that can 
## cache its inverse. To run use this example, use these commands:
##R> mat1 <- matrix(rnorm(9), 3)
##R> solved <- solve(mat1)
##R> mycache <-makeCacheMatrix()
##R> mycache$set(mat1)
##R> mycache2 <- cacheSolve(mycache)
##R> identical(solved, mycache2)
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) m <<- solve
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}



## This function will compute the inverse of the special
## matrix returned by the makeCacheMatrix function
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m  
}
