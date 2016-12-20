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
