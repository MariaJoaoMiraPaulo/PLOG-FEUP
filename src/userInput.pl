readingInput(Pawn, Direction):-
  readPawn(Pawn),
  validateInputPawn(Pawn, NewPawn),
  write('Movement directions ( left->(l1 or l2), right->(r1 or r2), top->(t1 or t2), bottom->(b1 or b2), diagonalTopRight->dtr , diagonalTopLeft->dtl , diagonalBottomLeft->dbl , diagonalBottomRight->dbr)'),
  read(Direction),
  write(NewPawn),write(': '),
  write(Direction).

readPawn(Pawn):-
  write('Pawn you want to move( 1 , 2 ):'),nl,
  read(Pawn).

validateInputPawn(1, NewPawn):-
  NewPawn=1.

validateInputPawn(2, NewPawn):-
  NewPawn=2.

validateInputPawn(Pawn, NewPawn):-
  write('Invalid input'),nl,
  readPawn(AnotherTry),
  validateInputPawn(AnotherTry, NewPawn).

input(1, 1, player11).
input(1, 2, player12).
input(2, 1, player21).
input(2, 2, player22).
