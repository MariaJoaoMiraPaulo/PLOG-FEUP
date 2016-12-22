display_board([L1|LS], MaxValue):-
 write('|'),
 display_line(L1,MaxValue), nl,
 display_board(LS,MaxValue).

display_board([],_MaxValue).

display_line([E1|ES],MaxValue):-
 E1 < MaxValue,
 write(E1),
 write('|'),
 display_line(ES,MaxValue).

display_line([_E1|ES],MaxValue):-
  write(' '),
  write('|'),
  display_line(ES,MaxValue).

display_line([],_MaxValue).

reset_timer :- statistics(walltime,_).

print_time :-
	statistics(walltime,[_,T]),
	TS is ((T//10)*10)/1000,
	nl, write('Time: '), write(TS), write('s'), nl, nl.
