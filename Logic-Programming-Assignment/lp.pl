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




/* Question3 */
min-above-min(L1, L2, N):-
listlength(L2, Length),
Length < 1,
min_in_list(L1, N).

min-above-min(L1, _, N):-
listlength(L1, Length),
Length < 1,
N is -1.

min-above-min(L1, L2, N):-
min_in_list(L2, Min_of_L2),
list_above_min(Min_of_L2, L1, New_list),
min_in_list(New_list, N).


/* Question4 */
common-unique-elements([],_,[]).            % Base Case: Check if list 1 is empty then result is empty
common-unique-elements([X|L1], L2, [Y|L3]):-    %Recursively get the first element in the list
member(L2,X),!,common-unique-elements(L1,L2,L3).     %Check to see if 1st element of list one is common to that in list 2

common-unique-elements([_|L1], L2, L3):-
common-unique-elements(L1,L2,L3).               %Recursively get the rest of the ele in the list

member([X|_],X).                               %Check if head of each are equal.
member([_|Y], X):- member(Y,X).
