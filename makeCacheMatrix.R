makeCacheMatrix <- function(x = matrix(diag(,2,2),2,2)){
  inv.mat <- NULL
  setmat <- function(mat){
    x <<- mat
  }
  
  getmat <- function() x
  
  setinv <- function(inv) inv.mat <<- inv
  getinv <- function() inv.mat
  list(setmat = setmat,
       getmat = getmat,
       setinv = setinv,
       getinv = getinv)
}