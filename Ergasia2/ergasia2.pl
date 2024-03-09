precede_list([X], [X|_]).
precede_list([X],[Y|T]):-
 X=:=Y,
 precede_list([X],T).
precede_list([X,Y|T1], [X|T2]) :-
    precede_list([Y|T1], T2).
precede_list([X,Y|T1], [Z|T2]) :-
    X =:= Z,
    precede_list([X,Y|T1], T2).