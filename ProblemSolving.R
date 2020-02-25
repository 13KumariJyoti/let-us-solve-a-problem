# Problem 1: You will be given an array of integers and a target value. Determine the number of pairs of array elements that have a
# difference equal to a target value.

# arr: is an array of integers.
# arr <- c(5,6,7,8,9,10,11,12,14)
# k: an integer, the target value
# k <- 1

# function to return an integer representing the number of element pairs having the required difference.
CountReturn <- 0
ArrTargetDiff <- function(arr,k){
  # constraints
  if(any(duplicated(arr))){
    stop("Please provide array with unique values")
  }
  for(num in 1:(length(arr)-1)){
    # num <- 1
    i <- num
    while(i >0 && i != length(arr)){
      if(abs((arr[num] - arr[i+1])) == k){
        if(CountReturn ==0){
          CountReturn <- 1
        }else{
          CountReturn <- (CountReturn + 1)
        }
      }
     i <- i+1
    }
  }
  return(CountReturn)
}

# ArrTargetDiff(arr,k)
# Result 
[1] 7
