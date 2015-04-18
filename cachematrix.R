## This function creates and caches the matrix values and its inverse
## It returns a list of 4 functions: 
##1. Sets the value of the matrix caches matrix.
## 2. Get returns the value of the cached matrix 
## 3. Sets and caches the inverse 
##4 . Returns the inverse matrix 




makeCacheMatrix <- function(x = matrix()) 
        {
        # Initiale I
        I<-NULL
        
        # a function to set the matrix to a value 
        set <- function(matrix) {
                x <<- matrix
                I <<- NULL
        }
        
        # a function to get the matrix that is cached
        get <- function() x
        
        # Caches the Inverse
        setinverse <- function(inverse) I <<- inverse
        
        getinverse <- function() I
        
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
        
        
        
        # a function to get the inverse
        
        
        # a function to set the inverse
        
        
        
}


## This function returns the inverse of the matrix which is cached
## The resulting inverse is also cached
## The input is the cached matrix created in MakeCacheMatrix()
## It returns the inverse matrix

cacheSolve <- function(x, ...) 
{
        i <- x$getinverse()
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        mat <- x$get()
        i <- solve(mat, ...)
        x$setinverse(i)
        i
        ## Return a matrix that is the inverse of 'x'
}
