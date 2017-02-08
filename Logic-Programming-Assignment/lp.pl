Kymberlee Hill
@02752656
Structures of Programming 

Logic Programming Assignment


/* Question1 */
sum-up-numbers-simple([],0). %Base Case: Check if list is empty then 0

sum-up-numbers-simple([X|Y], N);- 	%predicate that takes a list and gives result 
number(X), 					 		%if head is a number 
sum-up-numbers-simple(Y, N1), 		%recursive call to continue through list
N is X + N1.						%assign sum to result