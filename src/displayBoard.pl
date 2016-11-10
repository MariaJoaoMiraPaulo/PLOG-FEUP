emptyBoard(Board):-
Board = [[empty,noVerticalWall,empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty],
        [noWall,null, noWall,null, noWall, null, noWall, null,  noWall, null,  noWall,null,  noWall, null, noWall, null, noWall, null, noWall,null, noWall],
        [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall,empty,noVerticalWall, empty,noVerticalWall, empty],
        [noWall,null, noWall,null, noWall, null, noWall,null,  noWall, null,  noWall, null,  noWall, null, noWall, null, noWall, null, noWall, null, noWall],
        [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty],
        [noWall,null, noWall, null, noWall, null, noWall, null,  noWall, null,  noWall, null,  noWall, null, noWall, null, noWall, null, noWall, null, noWall],
        [empty, noVerticalWall,empty, noVerticalWall,empty, noVerticalWall,startPlayer1WithPawn, noVerticalWall,empty,noVerticalWall, empty, noVerticalWall,empty,noVerticalWall, startPlayer1WithPawn,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall,empty],
        [noWall, null, noWall, null, noWall, null, noWall, null,  noWall, null,  noWall, null,  noWall, null, noWall, null, noWall, null, noWall, null, noWall],
        [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty],
        [noWall,null, noWall, null, noWall, null, noWall, null,  noWall, null,  noWall, null,  noWall, null, noWall, null, noWall, null, noWall, null, noWall],
        [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty],
        [noWall, null, noWall, null, noWall, null, noWall, null,  noWall, null,  noWall, null,  noWall, null, noWall, null, noWall, null, noWall, null, noWall],
        [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty],
        [noWall, null, noWall, null, noWall, null, noWall, null,  noWall, null,  noWall, null, noWall, null, noWall, null, noWall, null, noWall, null, noWall],
        [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty],
        [noWall, null, noWall, null, noWall, null, noWall, null,  noWall,  null,  noWall, null,  noWall, null, noWall, null, noWall, null, noWall, null, noWall],
        [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty],
        [noWall, null, noWall, null, noWall, null, noWall, null,  noWall, null,  noWall, null,  noWall, null, noWall, null, noWall, null, noWall, null, noWall],
        [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty],
        [noWall, null, noWall, null, noWall, null, noWall, null, noWall, null, noWall, null, noWall, null, noWall, null, noWall, null, noWall, null, noWall],
        [empty, noVerticalWall,empty, noVerticalWall,empty, noVerticalWall,startPlayer2WithPawn, noVerticalWall,empty,noVerticalWall, empty, noVerticalWall,empty,noVerticalWall, startPlayer2WithPawn,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall,empty],
        [noWall, null, noWall, null, noWall, null, noWall, null,  noWall, null,  noWall,empty,  noWall, null, noWall, null, noWall, null, noWall, null, noWall],
        [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty],
        [noWall, null, noWall, null, noWall, null, noWall, null,  noWall, null,  noWall, null,  noWall, null, noWall, null, noWall, null, noWall, null, noWall],
        [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty],
        [noWall, null, noWall, null, noWall, null, noWall, null, noWall, null,  noWall, null, noWall, null, noWall, null, noWall, null, noWall, null, noWall],
        [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty]].

 normalBoard(Board):-
   Board = [[empty,noVerticalWall,empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty],
           [noWall,null, noWall,null, noWall, null, noWall, null,  noWall, null,  noWall,null,  noWall, null, noWall, null, noWall, null, noWall,null, noWall],
           [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, player11,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall,empty,noVerticalWall, empty,noVerticalWall, empty],
           [noWall,null, noWall,null, noWall, null, noWall,null,  noWall, null,  noWall, null,  noWall, null, noWall, null, noWall, null, noWall, null, noWall],
           [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty],
           [wall,null, noWall, null, noWall, null, noWall, null,  noWall, null,  noWall, null,  noWall, null, noWall, null, noWall, null, noWall, null, noWall],
           [empty, noVerticalWall,empty, noVerticalWall,empty, noVerticalWall,startPlayer1, verticalwall,empty,noVerticalWall, empty, noVerticalWall,empty,noVerticalWall, startPlayer1,noVerticalWall, empty,noVerticalWall, player22, noVerticalWall,empty],
           [noWall, null, noWall, null, noWall, null, noWall, null,  noWall, null,  noWall, null,  noWall, null, noWall, null, noWall, null, noWall, null, noWall],
           [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,verticalwall, player12,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty],
           [noWall,null, noWall, null, wall, null, wall, null,  noWall, null,  noWall, null,  noWall, null, noWall, null, noWall, null, noWall, null, noWall],
           [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, player21,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty],
           [noWall, null, noWall, null, noWall, null, noWall, null,  noWall, null,  noWall, null,  noWall, null, noWall, null, noWall, null, noWall, null, noWall],
           [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty],
           [noWall, null, noWall, null, noWall, null, noWall, null,  noWall, null,  noWall, null, noWall, null, noWall, null, noWall, null, noWall, null, noWall],
           [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty],
           [noWall, null, noWall, null, noWall, null, noWall, null,  noWall,  null,  noWall, null,  noWall, null, noWall, null, noWall, null, noWall, null, noWall],
           [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty],
           [noWall, null, noWall, null, noWall, null, noWall, null,  noWall, null,  noWall, null,  noWall, null, noWall, null, noWall, null, noWall, null, noWall],
           [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty],
           [noWall, null, noWall, null, noWall, null, noWall, null, noWall, null, noWall, null, noWall, null, noWall, null, wall, null, wall, null, noWall],
           [empty, noVerticalWall,empty, noVerticalWall,empty, noVerticalWall,startPlayer2, noVerticalWall,empty,noVerticalWall, empty, noVerticalWall,empty,noVerticalWall, startPlayer2,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall,empty],
           [noWall, null, noWall, null, noWall, null, noWall, null,  noWall, null,  noWall,empty,  noWall, null, noWall, null, noWall, null, noWall, null, noWall],
           [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty],
           [noWall, null, noWall, null, noWall, null, noWall, null,  noWall, null,  noWall, null,  noWall, null, noWall, null, noWall, null, noWall, null, noWall],
           [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty],
           [noWall, null, noWall, null, noWall, null, noWall, null, noWall, null,  noWall, null, noWall, null, noWall, null, noWall, null, noWall, null, noWall],
           [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty]].

finalBoard(Board):-
   Board = [[empty,noVerticalWall,empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty],
           [noWall,empty, noWall,empty, noWall, empty, noWall,empty,  noWall, empty,  noWall,empty,  noWall, empty, noWall, empty, noWall, empty, noWall,empty, noWall],
           [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, player11,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall,empty,noVerticalWall, empty,noVerticalWall, empty],
           [noWall,empty, noWall,empty, noWall, empty, noWall,empty,  noWall, empty,  noWall,empty,  noWall, empty, noWall, empty, noWall, empty, noWall,empty, noWall],
           [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty],
           [noWall,empty, noWall,empty, noWall, empty, noWall,empty,  noWall, empty,  noWall,empty,  noWall, empty, noWall, empty, noWall, empty, noWall,empty, noWall],
           [empty, noVerticalWall,empty, noVerticalWall,empty, noVerticalWall,player21, verticalwall,empty,noVerticalWall, empty, noVerticalWall,empty,noVerticalWall, winnerplayer21,noVerticalWall, empty,noVerticalWall, player22, noVerticalWall,empty],
           [noWall,empty, noWall,empty, noWall, empty, noWall,empty,  noWall, empty,  noWall,empty,  noWall, empty, noWall, empty, noWall, empty, noWall,empty, noWall],
           [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,verticalwall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty],
           [noWall,empty, noWall,empty, wall, empty, wall,empty,  noWall, empty,  noWall,empty,  noWall, empty, noWall, empty, noWall, empty, noWall,empty, noWall],
           [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty],
           [noWall,empty, noWall,empty, noWall, empty, noWall,empty,  noWall, empty,  noWall,empty,  noWall, empty, noWall, empty, noWall, empty, noWall,empty, noWall],
           [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty],
           [noWall,empty, noWall,empty, noWall, empty, noWall,empty,  noWall, empty,  noWall,empty,  noWall, empty, noWall, empty, noWall, empty, noWall,empty, noWall],
           [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty],
           [noWall,empty, noWall,empty, noWall, empty, noWall,empty,  noWall, empty,  noWall,empty,  noWall, empty, noWall, empty, noWall, empty, noWall,empty, noWall],
           [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty],
           [noWall,empty, noWall,empty, noWall, empty, noWall,empty,  noWall, empty,  noWall,empty,  noWall, empty, noWall, empty, noWall, empty, noWall,empty, noWall],
           [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty],
           [noWall,empty, noWall,empty, noWall, empty, noWall,empty,  noWall, empty,  noWall,empty,  noWall, empty, noWall, empty, wall, empty, wall,empty, noWall],
           [empty, noVerticalWall,empty, noVerticalWall,empty, noVerticalWall,startPlayer2, noVerticalWall,empty,noVerticalWall, empty, noVerticalWall,empty,noVerticalWall, startPlayer2,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall,empty],
           [noWall,empty, noWall,empty, noWall, empty, noWall,empty,  noWall, empty,  noWall,empty,  noWall, empty, noWall, empty, noWall, empty, noWall,empty, noWall],
           [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty],
           [noWall,empty, noWall,empty, noWall, empty, noWall,empty,  noWall, empty,  noWall,empty,  noWall, empty, noWall, empty, noWall, empty, noWall,empty, noWall],
           [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty],
           [noWall,empty, noWall,empty, noWall, empty, noWall,empty,  noWall, empty,  noWall,empty,  noWall, empty, noWall, empty, noWall, empty, noWall,empty, noWall],
           [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty]].

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
 write('    a        b       c       d       e       f       g       h       i       j      k ').

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
 traduz(null, '    ').
 traduz(startPlayer1, ' Oi ').
 traduz(startPlayer2, ' Xi ').
 traduz(startPlayer1WithPawn, ' Oi ').
 traduz(startPlayer2WithPawn, ' Xi ').
 traduz(verticalwall, ' *  ').
 traduz(wall, '****').
 traduz(noWall, '----').
 traduz(noVerticalWall, ' |  ').
 traduz(player21,' X  ').
 traduz(player22,' X  ').
 traduz(player12,' O  ').
 traduz(player11,' O  ').
 traduz(winnerplayer21,' Xw ').
 traduz(winnerplayer12,' Yw ').