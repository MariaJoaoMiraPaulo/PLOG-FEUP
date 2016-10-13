 board(Board):-
  Board = [[empty,noVerticalWall,empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty],
            [noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall],
            [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall,empty,noVerticalWall, empty,noVerticalWall, empty],
            [noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall],
            [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty],
            [noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall],
            [empty, noVerticalWall,empty, noVerticalWall,empty, noVerticalWall,player1, noVerticalWall,empty,noVerticalWall, empty, noVerticalWall,empty,noVerticalWall, player1,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall,empty],
            [noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall],
            [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty],
            [noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall],
            [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty],
            [noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall],
            [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty],
            [noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall],
            [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty],
            [noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall],
            [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty],
            [noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall],
            [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty],
            [noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall],
            [empty, noVerticalWall,empty, noVerticalWall,empty, noVerticalWall,player2, noVerticalWall,empty,noVerticalWall, empty, noVerticalWall,empty,noVerticalWall, player2,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall,empty],
            [noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall],
            [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty],
            [noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall],
            [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty],
            [noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall, noWall],
            [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty]].

%TODO: Make a list for --------

board_display:-
  display_x_coord,
  nl, write('   -------------------------------------------- '),nl,
  board(T),
  display_board(T,1,1).

display_board([L1|LS],N, X1):-
  display_y_coord(N, X1, X2),
  write('|'),
  display_line(L1,N), nl,
  N1 is N+1,
  display_board(LS,N1, X2).

display_board([], 28, 15):-
    write('   -------------------------------------------- '),nl.

display_line([E1|ES], N):-
  traduz(E1,V),
  write(V),
  display_line(ES, N).

display_line([], N):-
  0 is N mod 2,
  write('|').

display_line([], N):-
  1 is N mod 2,
  write(' |').

display_x_coord:-
  write('   1   2   3   4   5   6   7   8   9   10  11 ').

display_y_coord(N, X1, X2):-
  X1<10,
  1 is N mod 2,
  write(X1),
  write(' '),
  X2 is X1+1.

display_y_coord(N, X1, X2):-
  1 is N mod 2,
  write(X1),
  X2 is X1+1.

display_y_coord(N, X1, X2):-
  0 is N mod 2,
  X2 is X1,
  write('  ').

traduz(empty, '   ').
traduz(player1, ' O ').
traduz(player2, ' X ').
traduz(wall, ' *  ').
traduz(noWall, ' -  ').
traduz(noVerticalWall, '|').
