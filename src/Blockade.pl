 board(Board):-
  Board = [[empty, empty, empty, empty, empty, empty, empty, empty, empty, empty, empty],
            [noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall],
            [empty, empty, empty, empty, empty, empty, empty, empty, empty, empty, empty],
            [noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall],
            [empty, empty, empty, empty, empty, empty, empty, empty, empty, empty, empty],
            [noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall],
            [empty, empty, empty, player1, empty, empty, empty, player1, empty, empty, empty],
            [noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall],
            [empty, empty, empty, empty, empty, empty, empty, empty, empty, empty, empty],
            [noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall],
            [empty, empty, empty, empty, empty, empty, empty, empty, empty, empty, empty],
            [noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall],
            [empty, empty, empty, empty, empty, empty, empty, empty, empty, empty, empty],
            [noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall],
            [empty, empty, empty, empty, empty, empty, empty, empty, empty, empty, empty],
            [noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall],
            [empty, empty, empty, empty, empty, empty, empty, empty, empty, empty, empty],
            [noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall],
            [empty, empty, empty, empty, empty, empty, empty, empty, empty, empty, empty],
            [noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall],
            [empty, empty, empty, player2, empty, empty, empty, player2, empty, empty, empty],
            [noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall],
            [empty, empty, empty, empty, empty, empty, empty, empty, empty, empty, empty],
            [noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall],
            [empty, empty, empty, empty, empty, empty, empty, empty, empty, empty, empty],
            [noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall],
            [empty, empty, empty, empty, empty, empty, empty, empty, empty, empty, empty]].

%TODO: Make a list for --------

board_display:-
  nl, write(' ----------------------'),nl,
  board(T),display_board(T).

display_board([L1|LS]):-
  write('|'),
  display_line(L1), nl,
  display_board(LS).

display_board([]):-
    write(' ----------------------'),nl.

display_line([E1|ES]):-
  traduz(E1,V),
  write(V), write('|'),
  display_line(ES).

display_line([]).

traduz(empty, ' ').
traduz(player1, 'O').
traduz(player2, 'X').
traduz(wall, '+').
traduz(noWall, '*').
