### Introduction 
This repository holds the R code for two functions:
1. makeCacheMatrix
2. cacheSolve

The first function will create an inverse of a matrix and cache
the results.

The second function will compute the inverse of the special
matrix created by the first function. It first checks to see if the
inverse of the matrix has already been calculated. If so, it get`s
the inverted matrix from the cache and skips the computation. 
Otherwise, it calculates the inverse of the matrix and sets this matrix.
