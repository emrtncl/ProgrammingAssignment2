cacheSolve <- function(x,...){
  inv.mat <- x$getinv()
  
  if(!is.null(inv.mat)){
    message("getting cached inverse")
    return(inv.mat)
  }else{
    org_mat <- x$get()
    inv.mat <- solve(org_mat)
    x$setinv(inv.mat)
    return(inv.mat)
  }
}