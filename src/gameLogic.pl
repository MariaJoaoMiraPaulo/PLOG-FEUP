gameLoop([L1|LS], Xlimit, Ylimit, WallsPlayer1, WallsPlayer2):-
  nl,nl,player1,nl,nl,
  play([L1|LS],1,Xlimit,Ylimit,[N1|NS],Over1,WallsPlayer1,NewWallsPlayer1),
  Over1=0->
    (
      nl,nl,player2,nl,nl,
      play([N1|NS],2,Xlimit,Ylimit,[M1|MS],Over2,WallsPlayer2,NewWallsPlayer2),
      Over2=0->
        gameLoop([M1|MS],Xlimit,Ylimit,NewWallsPlayer1,NewWallsPlayer2);
        write('PLAYER 2 WINS!!!')
    );
    write('PLAYER 1 WINS!!!').

gameLoopPlayerPc([L1|LS], Xlimit, Ylimit, WallsPlayer, WallsBot):-
  nl,nl,player1,nl,nl,
  play([L1|LS],1,Xlimit,Ylimit,[N1|NS],Over1,WallsPlayer,NewWallsPlayer),
  Over1=0->
    (
      write('Type something to continue ...'),nl,
      read(_Lixo),
      nl,nl,pc,nl,nl,
      playBot([N1|NS],2 ,Xlimit,Ylimit,[M1|MS],Over2,WallsBot,NewWallsBot),
      Over2=0->
        gameLoopPlayerPc([M1|MS],Xlimit,Ylimit,NewWallsPlayer,NewWallsBot);
        write('BOT WINS!!!')
    );
    write('PLAYER WINS!!!!').

gameLoopPcPc([L1|LS], Xlimit, Ylimit,WallsBot1, WallsBot2):-
  nl,nl,pc1,nl,nl,
  playBot([L1|LS],1,Xlimit,Ylimit,[N1|NS],Over1,WallsBot1,NewWallsBot1),
  Over1=0->
    (
      write('Type something to continue ...'),nl,
      read(_Lixo),
      nl,nl,pc2,nl,nl,
      playBot([N1|NS],2,Xlimit,Ylimit,[M1|MS],Over2,WallsBot2,NewWallsBot2),
      Over2=0->
        (
          write('Type something to continue ...'),nl,
          read(_Lixo2),
          gameLoopPcPc([M1|MS],Xlimit,Ylimit,NewWallsBot1,NewWallsBot2)
        );
        write('BOT 2 WINS!!!!')
    );
    write('BOT 1 WINS!!!!').

playBot([L1|LS], Player, Xlimit, Ylimit,[T1|TS],Over,WallsBot,NewWallsBot):-
  board_display([L1|LS]),
  randomPawn(NewPawn),
  randomDirection(NewDirection),
  transformToCoordinates([L1|LS],Player, NewPawn, NewDirection,Xi, Yi, Xf, Yf, PawnName),

  isAvalidMove([L1|LS],Xi,Yi,Xf,Yf,NewDirection, Xlimit, Ylimit)->
  (
    (\+isAwinner([L1|LS],Player,Xf,Yf)->
      (
        Over=0,
        setListElement([L1|LS],Xf,Yf,1,1,PawnName,[N1|NS])
      );
      (
        Over=1,
        winnerName(1,WinnerName),
        setListElement([L1|LS],Xf,Yf,1,1,WinnerName,[N1|NS])
      )
    ),
    isAStartHouse(Xi,Yi, OldPawnName),
    setListElement([N1|NS],Xi,Yi,1,1,OldPawnName,[M1|MS]),
    (
      Over=0->
        (
          WallsBot<9->
          (wallBot([M1|MS],Xlimit,Ylimit,[T1|TS],WallsBot,NewWallsBot));
          (
          write('Already reached the max number of walls'),nl,
          NewWallsBot is WallsBot,
          T1=M1,
          TS=MS
          )
        )
    )
  );
  (
    write('Invalid play, try again'),nl,
    playBot([L1|LS], Player, Xlimit, Ylimit, _T,WallsBot,NewWallsBot)
  ).

play([L1|LS], Player, Xlimit, Ylimit,[T1|TS],Over,WallsPlayer,NewWallsPlayer):-
  board_display([L1|LS]),
  readingInput(_Pawn, _Direction,NewPawn,NewDirection),
  transformToCoordinates([L1|LS],Player, NewPawn, NewDirection,Xi, Yi, Xf, Yf, PawnName),

  isAvalidMove([L1|LS],Xi,Yi,Xf,Yf,NewDirection, Xlimit, Ylimit)->
  (
    (isAwinner([L1|LS],Player,Xf,Yf)->
      (
        Over=1,
        winnerName(1,WinnerName),
        setListElement([L1|LS],Xf,Yf,1,1,WinnerName,[N1|NS])
      );
      (
        Over=0,
        setListElement([L1|LS],Xf,Yf,1,1,PawnName,[N1|NS])
      )
    ),
    isAStartHouse(Xi,Yi, OldPawnName),
    setListElement([N1|NS],Xi,Yi,1,1,OldPawnName,[M1|MS]),
    (
      Over=0->
        (
          WallsPlayer<9->
            (wall([M1|MS],Xlimit,Ylimit,[T1|TS],WallsPlayer,NewWallsPlayer));
            (
              write('Already reached the max number of walls'),nl,
              NewWallsPlayer is WallsPlayer,
              T1=M1,
              TS=MS
            )
        )
    )
  );
  (
    write('Invalid play, try again'),nl,
    play([L1|LS], Player, Xlimit, Ylimit, _T,WallsPlayer,NewWallsPlayer)
  ).

isAStartHouse(X,Y,Name):-
  (X = 7, Y = 7)-> Name = startPlayer1;
  (X = 15, Y = 7)-> Name = startPlayer1;
  (X = 7, Y = 21)-> Name = startPlayer2;
  (X = 15, Y = 21)-> Name = startPlayer2;
  Name = empty.

isAwinner([L1|LS],PlayerNumber,Xf,Yf):-
  nl,nl,
  getWinnerPosition(PlayerNumber,FinalPosition),
  getListElement([L1|LS],Xf,Yf,1,1,NewElement),
  NewElement==FinalPosition,
  write('WINNER'),nl.
  %isAwinner([L1|LS],PlayerNumber,Xf,Yf,Over),
  %winner(PlayerNumber).

getWinnerPosition(1,FinalPosition):-
  FinalPosition=startPlayer2.

getWinnerPosition(2,FinalPosition):-
  FinalPosition=startPlayer1.

winnerName(1,winnerplayer1).
winnerName(2,winnerplayer2).

%isAwinner([L1|LS],PlayerNumber,Xf,Yf,Element):-
%  getListElement([L1|LS],Xf,Yf,1,1,NewElement),
%  NewElement=:=Element.

winner(1):-
  write('PLAYER 1, YOU WIN!!!').

winner(2):-
  write('PLAYER 2, YOU WIN!!!').

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

wall([L1|LS],Xlimit,Ylimit,[N1|NS],WallsPlayer,NewWallsPlayer):-
  write('Do you want to put a wall ( y or n ): '),nl,
  read(Answer),
  Answer=y->
    (
      askingPosition(WallX,WallY),
      wallOrientation(_Orientation,NewOrientation),
      wallPositionInside(NewOrientation,WallPositionInside),
      wallCoordinates(NewOrientation,WallPositionInside,WallX,WallY,FirstX,FirstY,SecondX,SecondY),
      validatePositions([L1|LS],NewOrientation,Xlimit,Ylimit,FirstX,FirstY,SecondX,SecondY)->
      (
        writeWallOnBoard([L1|LS],NewOrientation,FirstX,FirstY,SecondX,SecondY,[N1|NS]),
        NewWallsPlayer is WallsPlayer+1
      );
      (
        write('Invalid wall position, try again'),nl,
        wall([L1|LS],Xlimit,Ylimit,[N1|NS],WallsPlayer,NewWallsPlayer)
      )
    );
    (
      N1=L1,
      LS=NS,
      NewWallsPlayer=WallsPlayer
    ).

wallBot([L1|LS],Xlimit,Ylimit,[N1|NS],WallsBot,NewWallsBot):-
  randomWallAnswer(Answer),
  Answer=y->
    (
      randomWallPosition(Xlimit,Ylimit,WallX,WallY),
      randomOrientation(Orientation),
      randomPositionInside(Orientation,WallPositionInside),
      wallCoordinates(Orientation,WallPositionInside,WallX,WallY,FirstX,FirstY,SecondX,SecondY),
      validatePositions([L1|LS],NewOrientation,Xlimit,Ylimit,FirstX,FirstY,SecondX,SecondY)->
      (
        writeWallOnBoard([L1|LS],NewOrientation,FirstX,FirstY,SecondX,SecondY,[N1|NS]),
        NewWallsBot is WallsBot+1
      );
      (
        write('Invalid wall position, try again'),nl,
        wallBot([L1|LS],Xlimit,Ylimit,[N1|NS],WallsBot,NewWallsBot)
      )
    );
    (
      N1=L1,
      LS=NS,
      NewWallsBot=WallsBot
    ).

validatePositions([L1|LS],v,Xlimit,Ylimit,FirstX,FirstY,SecondX,SecondY):-
    \+checkBorders(FirstX,FirstY,Xlimit,Ylimit),
    \+checkBorders(SecondX,SecondY,Xlimit,Ylimit),
    getListElement([L1|LS],FirstX,FirstY,1,1,Element1),
    Element1=noVerticalWall,
    getListElement([L1|LS],SecondX,SecondY,1,1,Element2),
    Element2=noVerticalWall.

  validatePositions([L1|LS],h,Xlimit,Ylimit,FirstX,FirstY,SecondX,SecondY):-
    \+checkBorders(FirstX,FirstY,Xlimit,Ylimit),
    \+checkBorders(SecondX,SecondY,Xlimit,Ylimit),
    getListElement([L1|LS],FirstX,FirstY,1,1,Element1),
    Element1=noWall,
    getListElement([L1|LS],SecondX,SecondY,1,1,Element2),
    Element2=noWall.


writeWallOnBoard([L1|LS],v,FirstX,FirstY,SecondX,SecondY,[M1|MS]):-
    setListElement([L1|LS],FirstX,FirstY,1,1,verticalwall,[N1|NS]),
    setListElement([N1|NS],SecondX,SecondY,1,1,verticalwall,[M1|MS]).

writeWallOnBoard([L1|LS],h,FirstX,FirstY,SecondX,SecondY,[M1|MS]):-
    setListElement([L1|LS],FirstX,FirstY,1,1,wall,[N1|NS]),
    setListElement([N1|NS],SecondX,SecondY,1,1,wall,[M1|MS]).

wallCoordinates(v,lt,WallX,WallY,FirstX,FirstY,SecondX,SecondY):-
  FirstX is WallX-1,
  FirstY is WallY,
  SecondX is WallX-1,
  SecondY is WallY-2.

wallCoordinates(v,rt,WallX,WallY,FirstX,FirstY,SecondX,SecondY):-
  FirstX is WallX+1,
  FirstY is WallY,
  SecondX is WallX+1,
  SecondY is WallY-2.

wallCoordinates(v,lb,WallX,WallY,FirstX,FirstY,SecondX,SecondY):-
  FirstX is WallX-1,
  FirstY is WallY,
  SecondX is WallX-1,
  SecondY is WallY+2.

wallCoordinates(v,rb,WallX,WallY,FirstX,FirstY,SecondX,SecondY):-
  FirstX is WallX+1,
  FirstY is WallY,
  SecondX is WallX+1,
  SecondY is WallY+2.

wallCoordinates(h,tl,WallX,WallY,FirstX,FirstY,SecondX,SecondY):-
  FirstX is WallX,
  FirstY is WallY-1,
  SecondX is WallX-2,
  SecondY is WallY-1.

wallCoordinates(h,tr,WallX,WallY,FirstX,FirstY,SecondX,SecondY):-
  FirstX is WallX,
  FirstY is WallY-1,
  SecondX is WallX+2,
  SecondY is WallY-1.

wallCoordinates(h,bl,WallX,WallY,FirstX,FirstY,SecondX,SecondY):-
  FirstX is WallX,
  FirstY is WallY+1,
  SecondX is WallX-2,
  SecondY is WallY+1.

wallCoordinates(h,br,WallX,WallY,FirstX,FirstY,SecondX,SecondY):-
  FirstX is WallX,
  FirstY is WallY+1,
  SecondX is WallX+2,
  SecondY is WallY+1.

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
