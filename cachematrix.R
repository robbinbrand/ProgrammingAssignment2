## Firtst put x as imput for the matrix
## Than put q to solve valuas as null
## Then every reference needs to solve for mean

makeCacheMatrix <- function(x = matrix(sample(1:100,9),3,3)) {
  q <- NULL
  set <- function(y) {
    x <<- y
    q <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) q <<- solve
  getsolve <- function() q
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}


## As before i changed/solved the mean, also the 'm' to 'q' 

cacheSolve <- function(x, ...) {
  s <- x$getsolve()
  if(!is.null(q)) {
    message("getting_inversed_matrix")
    return(q)
  }
  data <- x$get()
  q <- solve(data, ...)
  x$setsolve(q)
  q
}
        ## Return a matrix that is the inverse of 'x'


