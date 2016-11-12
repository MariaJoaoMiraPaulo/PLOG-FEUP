readingInput(Pawn, Direction,NewPawn,NewDirection ):-
  readPawn(Pawn),
  validateInputPawn(Pawn, NewPawn),
  readDirection(Direction),
  validateInputDirection(Direction, NewDirection).

readPawn(Pawn):-
  write('Which Pawn do you want to move ( 1 , 2 ):'),nl,
  read(Pawn).

validateInputPawn(1, NewPawn):-
  NewPawn=1.

validateInputPawn(2, NewPawn):-
  NewPawn=2.

validateInputPawn(_Pawn, NewPawn):-
  write('Invalid pawn input'),nl,
  readPawn(AnotherTry),
  validateInputPawn(AnotherTry, NewPawn).

readDirection(Direction):-
  write('Which direction do you want to take ( left->(l1 or l2), right->(r1 or r2), top->(t1 or t2), bottom->(b1 or b2), diagonalTopRight->dtr , diagonalTopLeft->dtl , diagonalBottomLeft->dbl , diagonalBottomRight->dbr)'),
  read(Direction).

validateInputDirection(l1, NewDirection):-
  NewDirection=l1.

validateInputDirection(l2, NewDirection):-
  NewDirection=l2.

validateInputDirection(r1, NewDirection):-
  NewDirection=r1.

validateInputDirection(r2, NewDirection):-
  NewDirection=r2.

validateInputDirection(t1, NewDirection):-
  NewDirection=t1.

validateInputDirection(t2, NewDirection):-
  NewDirection=t2.

validateInputDirection(b1, NewDirection):-
  NewDirection=b1.

validateInputDirection(b2, NewDirection):-
  NewDirection=b2.

validateInputDirection(dtr, NewDirection):-
  NewDirection=dtr.

validateInputDirection(dtl, NewDirection):-
  NewDirection=dtl.

validateInputDirection(dbl, NewDirection):-
  NewDirection=dbl.

validateInputDirection(dbr, NewDirection):-
  NewDirection=dbr.

validateInputDirection(_Direction, NewDirection):-
  write(Direction),
  write('Invalid direction input'),nl,nl,nl,
  readDirection(AnotherTry),
  validateInputDirection(AnotherTry, NewDirection).

input(1, 1, player11).
input(1, 2, player12).
input(2, 1, player21).
input(2, 2, player22).
