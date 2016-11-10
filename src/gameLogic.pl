move([L1|LS], Player, Xlimit, Ylimit):-
  readingInput(Pawn, Direction),
  transformToCoordinates([L1|LS],Player, Pawn, Direction,Xi, Yi, Xf, Yf),
  isAvalidMove([L1|LS],Xi,Yi,Xf,Yf,Direction, Xlimit, Ylimit),!;
  move([L1|LS], Player, Xlimit, Ylimit).

isAvalidMove([L1|LS],Xi,Yi,Xf,Yf,Direction, Xlimit, Ylimit):-
  hasNoWall([L1|LS],Direction,Xi,Yi),
  \+checkBorders([L1|LS],Xf,Yf, Xlimit, Ylimit),
  \+isApawnPosition([L1|LS],Xf,Yf).

isApawnPosition([L1|LS],Xf,Yf):-
  getListElement([L1|LS],Xf,Yf,1,1,Element),
  Element\=empty,
  Element\=startPlayer1,
  Element\=startPlayer2.

checkBorders([L1|LS],Xf,Yf, Xlimit, Ylimit):-
  Xf < 1;
  Xf > Xlimit;
  Yf < 1;
  Yf > Ylimit.

hasNoWall([L1|LS],l1,Xi,Yi):-
  FirstX is Xi-1,
  getListElement([L1|LS],FirstX,Yi,1,1,Element),
  Element == noVerticalWall.

hasNoWall([L1|LS],l2,Xi,Yi):-
  hasNoWall([L1|LS],l1,Xi,Yi),
  SecondX is Xi-3,
  getListElement([L1|LS],SecondX,Yi,1,1,SecondElement),
  SecondElement == noVerticalWall.

hasNoWall([L1|LS],r1,Xi,Yi):-
  FirstX is Xi+1,
  getListElement([L1|LS],FirstX,Yi,1,1,Element),
  Element == noVerticalWall.

hasNoWall([L1|LS],r2,Xi,Yi):-
  hasNoWall([L1|LS],r1,Xi,Yi),
  SecondX is Xi+3,
  getListElement([L1|LS],SecondX,Yi,1,1,SecondElement),
  SecondElement == noVerticalWall.

hasNoWall([L1|LS],t1,Xi,Yi):-
  FirstY is Yi-1,
  getListElement([L1|LS],Xi,FirstY,1,1,Element),
  Element == noWall.

hasNoWall([L1|LS],t2,Xi,Yi):-
  hasNoWall([L1|LS],t1,Xi,Yi),
  SecondY is Yi-3,
  getListElement([L1|LS],Xi,SecondY,1,1,SecondElement),
  SecondElement == noWall.

hasNoWall([L1|LS],b1,Xi,Yi):-
  FirstY is Yi+1,
  getListElement([L1|LS],Xi,FirstY,1,1,Element),
  Element == noWall.

hasNoWall([L1|LS],b2,Xi,Yi):-
  hasNoWall([L1|LS],b1,Xi,Yi),
  SecondY is Yi+3,
  getListElement([L1|LS],Xi,SecondY,1,1,SecondElement),
  SecondElement == noWall.

hasNoWall([L1|LS],dtr,Xi,Yi):-
  FirstX is Xi+1,
  getListElement([L1|LS],FirstX,Yi,1,1,Element),
  Element == noVerticalWall,
  FirstY is Yi-2,
  getListElement([L1|LS],FirstX,FirstY,1,1,SecondElement),
  SecondElement == noVerticalWall,
  SecondY is Yi-1,
  getListElement([L1|LS],Xi,SecondY,1,1,ThirdElement),
  ThirdElement == noWall,
  SecondX is Xi+2,
  getListElement([L1|LS],SecondX,SecondY,1,1,FourthElement),
  FourthElement == noWall.

hasNoWall([L1|LS],dtl,Xi,Yi):-
  FirstX is Xi-1,
  getListElement([L1|LS],FirstX,Yi,1,1,Element),
  Element == noVerticalWall,
  FirstY is Yi-2,
  getListElement([L1|LS],FirstX,FirstY,1,1,SecondElement),
  SecondElement == noVerticalWall,
  SecondY is Yi-1,
  getListElement([L1|LS],Xi,SecondY,1,1,ThirdElement),
  ThirdElement == noWall,
  SecondX is Xi-2,
  getListElement([L1|LS],SecondX,SecondY,1,1,FourthElement),
  FourthElement == noWall.

hasNoWall([L1|LS],dbr,Xi,Yi):-
  FirstX is Xi+1,
  getListElement([L1|LS],FirstX,Yi,1,1,Element),
  Element == noVerticalWall,
  FirstY is Yi+2,
  getListElement([L1|LS],FirstX,FirstY,1,1,SecondElement),
  SecondElement == noVerticalWall,
  SecondY is Yi+1,
  getListElement([L1|LS],Xi,SecondY,1,1,ThirdElement),
  ThirdElement == noWall,
  SecondX is Xi+2,
  getListElement([L1|LS],SecondX,SecondY,1,1,FourthElement),
  FourthElement == noWall.

hasNoWall([L1|LS],dbl,Xi,Yi):-
  FirstX is Xi-1,
  getListElement([L1|LS],FirstX,Yi,1,1,Element),
  Element == noVerticalWall,
  FirstY is Yi+2,
  getListElement([L1|LS],FirstX,FirstY,1,1,SecondElement),
  SecondElement == noVerticalWall,
  SecondY is Yi+1,
  getListElement([L1|LS],Xi,SecondY,1,1,ThirdElement),
  ThirdElement == noWall,
  SecondX is Xi-2,
  getListElement([L1|LS],SecondX,SecondY,1,1,FourthElement),
  FourthElement == noWall.

transformToCoordinates([L1|LS], Player, Pawn, Direction, Xi, Yi, Xf, Yf):-
  input(Player, Pawn, PawnName),
  returnPosition(PawnName, [L1|LS], 1, 1, Xi, Yi),
  direction(Direction, Xi, Yi, Xf, Yf),write(Xf),nl,write(Yf).

direction(l2, X, Y, Xf, Yf):-
  Xf is X - 4,
  Yf is Y.

direction(l1, X, Y, Xf, Yf):-
  Xf is X - 2,
  Yf is Y.

direction(r2, X, Y, Xf, Yf):-
  Xf is X + 4,
  Yf is Y.

direction(r1, X, Y, Xf, Yf):-
  Xf is X + 2,
  Yf is Y.

direction(t2, X, Y, Xf, Yf):-
  Yf is Y - 4,
  Xf is X.

direction(t1, X, Y, Xf, Yf):-
  Yf is Y - 2,
  Xf is X.

direction(b2, X, Y, Xf, Yf):-
  Yf is Y + 4,
  Xf is X.

direction(b1, X, Y, Xf, Yf):-
  Yf is Y + 2,
  Xf is X.

direction(dtr, X, Y, Xf, Yf):-
  Xf is X + 2,
  Yf is Y - 2.

direction(dtL, X, Y, Xf, Yf):-
  Xf is X - 2,
  Yf is Y - 2.

direction(dbl, X, Y, Xf, Yf):-
  Xf is X - 2,
  Yf is Y + 2.

direction(dbr, X, Y, Xf, Yf):-
  Xf is X + 2,
  Yf is Y + 2.
