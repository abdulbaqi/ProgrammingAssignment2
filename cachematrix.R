## By Abdul-Baqi M. sharaf
## on 20-Oct-2014

## This function places the inverse of a matrix into cache

makeCacheMatrix <- function(x = matrix()) {
  inverse<-NULL
  set <- function(y){
    x<<- y
    inverse<<- NULL
  }
  
  get<- function() x
  setinv <- function(inv) inverse <<- inv
  getinv <- funciton() inverse
  list(set=set, get=get, setinv=setinv, getinv=getinv)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverse <-x$getinv()
  if(!is.null(inverse)){
    message("getting cached data")
    return(inverse)
  }
  
  data<-x$get()
  inverse <-solve(data)
  x$setinv(inverse)
  inverse
}
