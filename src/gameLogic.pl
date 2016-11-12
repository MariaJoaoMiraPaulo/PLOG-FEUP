gameLoop([L1|LS], Xlimit, Ylimit):-
  nl,nl,player1,nl,nl,
  play([L1|LS],1,Xlimit,Ylimit,[N1|NS]),
  nl,nl,player2,nl,nl,
  play([N1|NS],2,Xlimit,Ylimit,[M1|MS]),
%  (OverPlayer1 =:= 1- !);
%  (OverPlayer2 =:= 1, !);
  gameLoop([M1|MS],Xlimit,Ylimit).

gameLoopPlayerPc([L1|LS], Xlimit, Ylimit):-
  nl,nl,player1,nl,nl,
  play([L1|LS],1,Xlimit,Ylimit,[N1|NS]),
  write('Type something to continue ...'),nl,
  read(_Lixo),
  nl,nl,pc,nl,nl,
  playBot([N1|NS],2 ,Xlimit,Ylimit,[M1|MS]),
  gameLoopPlayerPc([M1|MS],Xlimit,Ylimit).

gameLoopPcPc([L1|LS], Xlimit, Ylimit):-
  nl,nl,pc,nl,nl,
  playBot([L1|LS],1,Xlimit,Ylimit,[N1|NS]),
  write('Type something to continue ...'),nl,
  read(_Lixo),
  nl,nl,pc,nl,nl,
  playBot([N1|NS],2,Xlimit,Ylimit,[M1|MS]),
  write('Type something to continue ...'),nl,
  read(_Lixo2),
  gameLoopPcPc([M1|MS],Xlimit,Ylimit).

playBot([L1|LS], Player, Xlimit, Ylimit,[M1|MS]):-
  board_display([L1|LS]),
  randomPawn(NewPawn),
  randomDirection(NewDirection),
  transformToCoordinates([L1|LS],Player, NewPawn, NewDirection,Xi, Yi, Xf, Yf, PawnName),
  (
  isAvalidMove([L1|LS],Xi,Yi,Xf,Yf,NewDirection, Xlimit, Ylimit)->
  %verifyGameState([L1|LS],Player,Xf,Yf),
  setListElement([L1|LS],Xf,Yf,1,1,PawnName,[N1|NS]),
  isAStartHouse(Xi,Yi, OldPawnName),
  setListElement([N1|NS],Xi,Yi,1,1,OldPawnName,[M1|MS]);
  write('Invalid play, try again'),nl,
  play([L1|LS], Player, Xlimit, Ylimit, _T)
  ).

play([L1|LS], Player, Xlimit, Ylimit,[M1|MS]):-
  board_display([L1|LS]),
  readingInput(_Pawn, _Direction,NewPawn,NewDirection),
  transformToCoordinates([L1|LS],Player, NewPawn, NewDirection,Xi, Yi, Xf, Yf, PawnName),
  (
  isAvalidMove([L1|LS],Xi,Yi,Xf,Yf,NewDirection, Xlimit, Ylimit)->
  %verifyGameState([L1|LS],Player,Xf,Yf),
  setListElement([L1|LS],Xf,Yf,1,1,PawnName,[N1|NS]),
  isAStartHouse(Xi,Yi, OldPawnName),
  setListElement([N1|NS],Xi,Yi,1,1,OldPawnName,[M1|MS]);
  write('Invalid play, try again'),nl,
  play([L1|LS], Player, Xlimit, Ylimit, _T)
  ).

isAStartHouse(X,Y,Name):-
  (X = 7, Y = 7)-> Name = startPlayer1;
  (X = 15, Y = 7)-> Name = startPlayer1;
  (X = 7, Y = 21)-> Name = startPlayer2;
  (X = 15, Y = 21)-> Name = startPlayer2;
  Name = empty.


verifyGameState([L1|LS],PlayerNumber,Xf,Yf,Over):-
  isAwinner([L1|LS],PlayerNumber,Xf,Yf,Over),
  winner(PlayerNumber).

winner(1):-
  write('PLAYER 1, YOU WIN!!!').

winner(2):-
  write('PLAYER 2, YOU WIN!!!').

isAwinner([L1|LS],PlayerNumber,Xf,Yf):-
  getWinnerPosition(PlayerNumber,FinalPosition),
  write(FinalPosition).
  getListElement([L1|LS],Xf,Yf,1,1,Element),
  Element=:=FinalPosition.

getWinnerPosition(1,FinalPosition):-
  FinalPosition=startPlayer2.

getWinnerPosition(2,FinalPosition):-
  FinalPosition=startPlayer1.

isAvalidMove([L1|LS],Xi,Yi,Xf,Yf,Direction, Xlimit, Ylimit):-
  hasNoWall([L1|LS],Direction,Xi,Yi),
  \+checkBorders(Xf,Yf, Xlimit, Ylimit),
  \+isApawnPosition([L1|LS],Xf,Yf).

isApawnPosition([L1|LS],Xf,Yf):-
  getListElement([L1|LS],Xf,Yf,1,1,Element),
  Element\=empty,
  Element\=startPlayer1,
  Element\=startPlayer2.

checkBorders(Xf,Yf, Xlimit, Ylimit):-
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

transformToCoordinates([L1|LS], Player, Pawn, Direction, Xi, Yi, Xf, Yf,PawnName):-
  input(Player, Pawn, PawnName),
  returnPosition(PawnName, [L1|LS], 1, 1, Xi, Yi),
  direction(Direction, Xi, Yi, Xf, Yf).

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

direction(dtl, X, Y, Xf, Yf):-
  Xf is X - 2,
  Yf is Y - 2.

direction(dbl, X, Y, Xf, Yf):-
  Xf is X - 2,
  Yf is Y + 2.

direction(dbr, X, Y, Xf, Yf):-
  Xf is X + 2,
  Yf is Y + 2.
