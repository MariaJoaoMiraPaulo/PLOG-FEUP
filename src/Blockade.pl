 emptyBoard(Board):-
  Board = [[empty,noVerticalWall,empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty],
            [noWall,empty, noWall,empty, noWall, empty, noWall,empty,  noWall, empty,  noWall,empty,  noWall, empty, noWall, empty, noWall, empty, noWall,empty, noWall],
            [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall,empty,noVerticalWall, empty,noVerticalWall, empty],
            [noWall,empty, noWall,empty, noWall, empty, noWall,empty,  noWall, empty,  noWall,empty,  noWall, empty, noWall, empty, noWall, empty, noWall,empty, noWall],
            [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty],
            [noWall,empty, noWall,empty, noWall, empty, noWall,empty,  noWall, empty,  noWall,empty,  noWall, empty, noWall, empty, noWall, empty, noWall,empty, noWall],
            [empty, noVerticalWall,empty, noVerticalWall,empty, noVerticalWall,startPlayer1, noVerticalWall,empty,noVerticalWall, empty, noVerticalWall,empty,noVerticalWall, startPlayer1,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall,empty],
            [noWall,empty, noWall,empty, noWall, empty, noWall,empty,  noWall, empty,  noWall,empty,  noWall, empty, noWall, empty, noWall, empty, noWall,empty, noWall],
            [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty],
            [noWall,empty, noWall,empty, noWall, empty, noWall,empty,  noWall, empty,  noWall,empty,  noWall, empty, noWall, empty, noWall, empty, noWall,empty, noWall],
            [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty],
            [noWall,empty, noWall,empty, noWall, empty, noWall,empty,  noWall, empty,  noWall,empty,  noWall, empty, noWall, empty, noWall, empty, noWall,empty, noWall],
            [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty],
            [noWall,empty, noWall,empty, noWall, empty, noWall,empty,  noWall, empty,  noWall,empty,  noWall, empty, noWall, empty, noWall, empty, noWall,empty, noWall],
            [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty],
            [noWall,empty, noWall,empty, noWall, empty, noWall,empty,  noWall, empty,  noWall,empty,  noWall, empty, noWall, empty, noWall, empty, noWall,empty, noWall],
            [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty],
            [noWall,empty, noWall,empty, noWall, empty, noWall,empty,  noWall, empty,  noWall,empty,  noWall, empty, noWall, empty, noWall, empty, noWall,empty, noWall],
            [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty],
            [noWall,empty, noWall,empty, noWall, empty, noWall,empty,  noWall, empty,  noWall,empty,  noWall, empty, noWall, empty, noWall, empty, noWall,empty, noWall],
            [empty, noVerticalWall,empty, noVerticalWall,empty, noVerticalWall,startPlayer2, noVerticalWall,empty,noVerticalWall, empty, noVerticalWall,empty,noVerticalWall, startPlayer2,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall,empty],
            [noWall,empty, noWall,empty, noWall, empty, noWall,empty,  noWall, empty,  noWall,empty,  noWall, empty, noWall, empty, noWall, empty, noWall,empty, noWall],
            [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty],
            [noWall,empty, noWall,empty, noWall, empty, noWall,empty,  noWall, empty,  noWall,empty,  noWall, empty, noWall, empty, noWall, empty, noWall,empty, noWall],
            [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty],
            [noWall,empty, noWall,empty, noWall, empty, noWall,empty,  noWall, empty,  noWall,empty,  noWall, empty, noWall, empty, noWall, empty, noWall,empty, noWall],
            [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty]].


smallEmotyboard(Board):-
  Board=[[empty,noVerticalWall,empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty],
            [noWall,empty, noWall, empty, noWall, empty, noWall, empty,  noWall],
            [empty,noVerticalWall,startPlayer1,noVerticalWall, empty,noVerticalWall, startPlayer1,noVerticalWall, empty],
            [noWall,empty, noWall, empty, noWall, empty, noWall, empty,  noWall],
            [empty,noVerticalWall,empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty],
            [noWall,empty, noWall, empty, noWall, empty, noWall, empty,  noWall],
            [empty,noVerticalWall,startPlayer2,noVerticalWall, empty,noVerticalWall, startPlayer2,noVerticalWall, empty],
            [noWall,empty, noWall, empty, noWall, empty, noWall, empty,  noWall],
            [empty,noVerticalWall,empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty]].
smallboard(Board):-
              Board=[[empty,noVerticalWall,empty,noVerticalWall, player12,noVerticalWall, empty,noVerticalWall, empty],
                        [noWall, empty,noWall, empty,noWall, empty,noWall, empty,noWall],
                        [empty,noVerticalWall,startPlayer1,verticalwall, empty,noVerticalWall, startPlayer1,noVerticalWall, player21],
                        [noWall, empty,noWall, empty,noWall, empty,noWall, empty,noWall],
                        [empty,noVerticalWall,player11,verticalwall, player22,noVerticalWall, empty,noVerticalWall, empty],
                        [wall, empty,wall, empty,noWall, empty,wall, empty,wall],
                        [empty,noVerticalWall,startPlayer2,noVerticalWall, empty,noVerticalWall, startPlayer2,noVerticalWall, empty],
                        [noWall, empty,noWall, empty,noWall, empty,noWall, empty,noWall],
                        [empty,noVerticalWall,empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty]].

smallfinalboard(Board):-
              Board = [[empty,noVerticalWall,empty,noVerticalWall, player12,noVerticalWall, empty,noVerticalWall, empty],
                        [noWall, empty,noWall, empty,noWall, empty,noWall, empty,noWall],
                        [empty,noVerticalWall,startPlayer1,verticalwall, empty,noVerticalWall, winnerplayer21,noVerticalWall, empty],
                        [noWall, empty,noWall, empty,noWall, empty,noWall, empty,noWall],
                        [empty,noVerticalWall,player11,verticalwall, player22,noVerticalWall, empty,noVerticalWall, empty],
                        [wall, empty,wall, empty,noWall, empty,wall, empty,wall],
                        [empty,noVerticalWall,startPlayer2,noVerticalWall, empty,noVerticalWall, startPlayer2,noVerticalWall, empty],
                        [noWall, empty,noWall, empty,noWall, empty,noWall, empty,noWall],
                        [empty,noVerticalWall,empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty]].




%TODO: Make a list for --------

board_display:-
  display_x_coord,
  nl, write('    ------------------------------------------------------------------------------------  '),nl,
  emptyBoard(T),
  display_board(T,1,1).

display_board([L1|LS],Y, X1):-
  display_y_coord(Y, X1, X2),
  write('|'),
  display_line(L1), nl,
  Y1 is Y+1,
  display_board(LS,Y1, X2).

display_board([], Y, X):-
    Y>=X,
    write('    ------------------------------------------------------------------------------------ '),nl.

display_line([E1|ES]):-
  traduz(E1,V),
  write(V),
  display_line(ES).

display_line([]):-
  write(' |').

display_x_coord:-
  write('    1        2       3       4       5       6       7       8       9      10     11 ').

display_y_coord(Y, X1, X2):-
  X1<10,
  1 is Y mod 2,
  write(X1),
  write(' '),
  X2 is X1+1.

display_y_coord(Y, X1, X2):-
  1 is Y mod 2,
  write(X1),
  X2 is X1+1.

display_y_coord(Y, X1, X2):-
  0 is Y mod 2,
  X2 is X1,
  write('  ').

traduz(empty, '    ').
traduz(startPlayer1, ' O  ').
traduz(startPlayer2, ' X  ').
traduz(verticalwall, ' *  ').
traduz(wall, '****').
traduz(noWall, '----').
traduz(noVerticalWall, ' |  ').
traduz(player21,' P2 ').
traduz(player22,' P2 ').
traduz(player12,' P1 ').
traduz(player11,' P1 ').
traduz(winnerplayer21,' W2 ').
