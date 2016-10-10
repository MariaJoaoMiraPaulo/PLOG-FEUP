 board(Board):-
  Board = [[vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio],
            [vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio],
            [vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio],
            [vazio, vazio, vazio, equipa1, vazio, vazio, vazio, equipa2, vazio, vazio, vazio],
            [vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio],
            [vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio],
            [vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio],
            [vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio],
            [vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio],
            [vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio],
            [vazio, vazio, vazio, equipa1, vazio, vazio, vazio, equipa2, vazio, vazio, vazio],
            [vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio],
            [vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio],
            [vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio, vazio]].

%TODO: Make a list for --------

/**
board(Board):-
  Board = [[vazio, vazio, vazio],
        [vazio, vazio, vazio],
        [vazio, vazio, vazio]].
        **/

board_display:-
  nl, write(' ---------------------'),nl,
  board(T),display_board(T).

display_board([L1|LS]):-
  display_line(L1), nl,
  write(' ---------------------'),nl,
  display_board(LS).

display_board([]):-
    nl.

display_line([E1|ES]):-
  traduz(E1,V),
  write(V), write('|'),
  display_line(ES).

display_line([]).

traduz(vazio, ' ').
traduz(equipa1, 'O').
traduz(equipa2, 'X').
