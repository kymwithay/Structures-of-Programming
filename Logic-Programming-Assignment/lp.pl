Kymberlee Hill
@02752656
Structures of Programming 

Logic Programming Assignment

%Question 1

%Functions that are being used as helper function declarations
sum-up-numbers-simple([],0). %Base Case when the list is empty

sum-up-numbers-simple(L,N);- 
[X|Y] = L,
number(X),
N is X + Y.