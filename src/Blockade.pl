 emptyBoard(Board):-
  Board = [[empty,noVerticalWall,startPlayer1WithPawn,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty],
            [noWall,empty, noWall,empty, noWall, empty, noWall,empty,  noWall, empty,  noWall,empty,  noWall, empty, noWall, empty, noWall, empty, noWall,empty, noWall],
            [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall,empty,noVerticalWall, empty,noVerticalWall, empty],
            [noWall,empty, noWall,empty, noWall, empty, noWall,empty,  noWall, empty,  noWall,empty,  noWall, empty, noWall, empty, noWall, empty, noWall,empty, noWall],
            [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty],
            [noWall,empty, noWall,empty, noWall, empty, noWall,empty,  noWall, empty,  noWall,empty,  noWall, empty, noWall, empty, noWall, empty, noWall,empty, noWall],
            [empty, noVerticalWall,empty, noVerticalWall,empty, noVerticalWall,startPlayer1WithPawn, noVerticalWall,empty,noVerticalWall, empty, noVerticalWall,empty,noVerticalWall, startPlayer1WithPawn,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall,empty],
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
            [empty, noVerticalWall,empty, noVerticalWall,empty, noVerticalWall,startPlayer2WithPawn, noVerticalWall,empty,noVerticalWall, empty, noVerticalWall,empty,noVerticalWall, startPlayer2WithPawn,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall,empty],
            [noWall,empty, noWall,empty, noWall, empty, noWall,empty,  noWall, empty,  noWall,empty,  noWall, empty, noWall, empty, noWall, empty, noWall,empty, noWall],
            [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty],
            [noWall,empty, noWall,empty, noWall, empty, noWall,empty,  noWall, empty,  noWall,empty,  noWall, empty, noWall, empty, noWall, empty, noWall,empty, noWall],
            [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty],
            [noWall,empty, noWall,empty, noWall, empty, noWall,empty,  noWall, empty,  noWall,empty,  noWall, empty, noWall, empty, noWall, empty, noWall,empty, noWall],
            [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty]].

  normalBoard(Board):-
    Board = [[empty,noVerticalWall,empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty],
            [noWall,empty, noWall,empty, noWall, empty, noWall,empty,  noWall, empty,  noWall,empty,  noWall, empty, noWall, empty, noWall, empty, noWall,empty, noWall],
            [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, player11,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall,empty,noVerticalWall, empty,noVerticalWall, empty],
            [noWall,empty, noWall,empty, noWall, empty, noWall,empty,  noWall, empty,  noWall,empty,  noWall, empty, noWall, empty, noWall, empty, noWall,empty, noWall],
            [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty],
            [noWall,empty, noWall,empty, noWall, empty, noWall,empty,  noWall, empty,  noWall,empty,  noWall, empty, noWall, empty, noWall, empty, noWall,empty, noWall],
            [empty, noVerticalWall,empty, noVerticalWall,empty, noVerticalWall,startPlayer1, verticalwall,empty,noVerticalWall, empty, noVerticalWall,empty,noVerticalWall, startPlayer1,noVerticalWall, empty,noVerticalWall, player22, noVerticalWall,empty],
            [noWall,empty, noWall,empty, noWall, empty, noWall,empty,  noWall, empty,  noWall,empty,  noWall, empty, noWall, empty, noWall, empty, noWall,empty, noWall],
            [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,verticalwall, player12,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty],
            [noWall,empty, noWall,empty, wall, empty, wall,empty,  noWall, empty,  noWall,empty,  noWall, empty, noWall, empty, noWall, empty, noWall,empty, noWall],
            [empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, player21,noVerticalWall, empty,noVerticalWall, empty,noVerticalWall, empty, noVerticalWall, empty,noVerticalWall, empty],
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

returnPosition(Name,[L1|LS],X, Y, Xf, Yf):-
  checkLine(Name,L1,X,Y,Xf,Yf),!;
  (Y1 is Y+1,
  returnPosition(Name,LS,X,Y1,Xf,Yf)).

checkLine(Name,[L1|LS],X,Y,Xf,Yf):-
  compareName(Name,L1,X,Y,Xf,Yf),!;
  (X1 is X+1,
  checkLine(Name,LS,X1,Y,Xf,Yf)).

checkLine(Name,[],X,Y,Xf,Yf).

compareName(Name,T1,X,Y,Xf,Yf):-
  Name=T1,
  Xf is X,
  Yf is Y.

  pos:-
    emptyBoard(T),
    returnPosition(startPlayer1WithPawn,T,1,1,Xf,Yf),
    write(Xf),
    write(Yf).

move([L1|LS], Player):-
  readingInput(Pawn, Direction),
  transformToCoordinates([L1|LS],Player, Pawn, Direction, X, Y).

readingInput(Pawn, Direction):-
  write('Pawn you want to move( 1 , 2 ):'),nl,
  read(Pawn),nl,
  write('Movement directions ( left->l , right->r, top->t, bottom->b, diagonalTopRight->dtr , diagonalTopLeft->dtl , diagonalBottomLeft->dbl , diagonalBottomRight->dbr)'),
  read(Direction),
  write(Pawn),write(': '),
  write(Direction).

transformToCoordinates([L1|LS], Player, Pawn, Direction, X, Y):-
  input(Player, Pawn, PawnName),
  returnPosition(PawnName, [L1|LS], 1, 1, X, Y),
  direction(Direction, X, Y).

direction(l, X, Y):-
  X is X - 2.

direction(r, X, Y):-
  X is X + 2.

direction(t, X, Y):-
  Y is Y - 2.

direction(b, X, Y):-
  Y is Y + 2.

direction(dtr, X, Y):-
  X is X + 1,
  Y is Y - 1.

direction(dtL, X, Y):-
  X is X - 1,
  Y is Y - 1.

direction(dbl, X, Y):-
  X is X - 1,
  Y is Y + 1.

direction(dbr, X, Y):-
  X is X + 1,
  Y is Y + 1.

input(1, 1, player11).
input(1, 2, player12).
input(2, 1, player21).
input(2, 2, player22).

traduz(empty, '    ').
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
