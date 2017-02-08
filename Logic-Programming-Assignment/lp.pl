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


sum-up-numbers-simple([X|Y], N):-   %Base Case: Checks for non-numeric numbers
\+number(X),                        %if its not a number recursive call next element.
sum-up-numbers-simple(Y, N).


/* Question2 */

sum-up-numbers-general([],0).	%Base Case: Check if list is empty then 0

sum-up-numbers-general([X|Y], N):-	    %Predicate for the sum
number(X),                             %check to see if head(first element) is a number
sum-up-numbers-general(Y,N1),           %recursive call to get the rest of element
N is X + N1.                            %Assign sum to the result


sum-up-numbers-general([X|Y], N):-
atom(X),                                %Base Case: Check to see if a single element
sum-up-numbers-general(Y, N).


sum-up-numbers-general([X|Y], N):-
sum-up-numbers-general(Y, N1),            %iterate through the elements in the list
N is X + N1.                              % assign the added elements to result.


/* Question4 */
common-unique-elements([],_,[]).            % Base Case: Check if list 1 is empty then result is empty
common-unique-elements([X|L1], L2, [Y|L3]):-    %Recursively get the first element in the list
member(L2,X),!.                                 %Check to see if 1st element of list one is common to that in list 2
