/** board(Board):-
  Board = [[vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio],
            [vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio],
            [vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio],
            [vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio],
            [vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio],
            [vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio],
            [vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio],
            [vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio],
            [vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio],
            [vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio],
            [vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio],
            [vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio],
            [vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio],
            [vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio]]. **/

board(Board):-
  Board = [[vazio, vazio, vazio],
        [vazio, vazio, vazio],
        [vazio, vazio, vazio]].


display_board([L1|LS]):-
  display_line(L1), nl,
  display_board(LS).

display_board([]):-
    nl.

display_line([E1|ES]):-
  traduz(E1,V),
  write(V), write('|'),
  display_line(ES).

display_line([]).

traduz(vazio, ' ').
