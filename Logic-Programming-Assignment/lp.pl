Kymberlee Hill
@02752656
Structures of Programming 

Logic Programming Assignment

%Question 1

%Functions that are being used as helper function declarations
sum-up-numbers-simple([],0). %Base Case when the list is empty

%base casefor numberic numbers
sum-up-numbers-simple(L,N);- %the sum of numples in simple list is N if & only if 
[X|Y] = L, %X is the head of L list & Y is the tail of L list
number(X), %and X is a number 
sum-up-numbers-simple(Y, N1),
N is X + N1.