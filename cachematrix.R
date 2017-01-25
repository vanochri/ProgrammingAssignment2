## This function creates a special "matrix" object that can cache its inverse.


## The first function, makeCacheMatrix creates a 'special vector' , which is really a list containing a function to:
##	1	set the value of the matrix
## 	2	get the value of the matrix
##	3	set the value of the inverse matrix
##	4	get the value of the inverse matrix

makeCacheMatrix <- function(x = matrix()) 
	{
        inverse_Matrix <- NULL
        set <- function(y) 
		{
                x <<- y
                inverse_Matrix <<- NULL
        	}
        get <- function() x
        setmatrix <- function(solve) inverse_Matrix <<- solve
        getmatrix <- function() inverse_Matrix
        list(set = set, get = get,
             setmatrix = setmatrix,
             getmatrix = getmatrix)
	}

## Write a short comment describing this function
## This function computes the inverse of the special "matrix" returned 
## by makeCacheMatrix above. If the inverse has already been calculated 
##(and the matrix has not changed), then the cachesolve should retrieve 
##the inverse from the cache.

cacheSolve <- function(x, ...) 
	{
        ## Return a matrix that is the inverse of 'x'
        inverse_Matrix <- x$getmatrix()
        if(!is.null(inverse_Matrix)) 
		{
                message("getting cached data")
                return(inverse_Matrix)
		}
        data <- x$get()
        inverse_Matrix <- solve(data, ...)
        x$setmatrix(inverse_Matrix)
        inverse_Matrix
}

# Start

## This function creates a special "matrix" object that can cache its inverse.


## The first function, makeCacheMatrix creates a 'special vector' , which is a list containing a function to:
##	1	set the value of the matrix
## 	2	get the value of the matrix
##	3	set the value of the inverse matrix
##	4	get the value of the inverse matrix

makeCacheMatrix <- function(x = matrix()) 
	{
        inverse_Matrix <- NULL
        set <- function(y) 
		{
                x <<- y
                inverse_Matrix <<- NULL
        	}
        get <- function() x
        setmatrix <- function(solve) inverse_Matrix <<- solve
        getmatrix <- function() inverse_Matrix
        list(set = set, get = get,
             setmatrix = setmatrix,
             getmatrix = getmatrix)
	}

## ***A short comment describing this function***

## This function computes the inverse of the special "matrix" returned 
## by makeCacheMatrix above. If the inverse has already been calculated 
##(and the matrix has not changed), then the cachesolve should retrieve 
##the inverse from the cache.

cacheSolve <- function(x, ...) 
	{
        ## Return a matrix that is the inverse of 'x'
        inverse_Matrix <- x$getmatrix()
        if(!is.null(inverse_Matrix)) 
		{
                message("getting cached data")
                return(inverse_Matrix)
		}
        data <- x$get()
        inverse_Matrix <- solve(data, ...)
        x$setmatrix(inverse_Matrix)
        inverse_Matrix
}

##################################
## *******Test routine**********
##	a <- diag(6,2)
##	a
##	TestMatrix <- makeCacheMatrix(a)
##	cacheSolve(TestMatrix)