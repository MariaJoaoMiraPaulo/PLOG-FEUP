:- use_module(library(random)).

randomPawn(Pawn):-
	random(0,2,GeneratePawn),
	generatePawn(GeneratePawn,Pawn).

generatePawn(0,Pawn):-
	Pawn=1.

generatePawn(1,Pawn):-
	Pawn=2.

randomDirection(Direction):-
	random(0,12,GenerateDirection),
	generateDirection(GenerateDirection,Direction).

generateDirection(0,Direction):-
	Direction=l1.

generateDirection(1,Direction):-
	Direction=r1.

generateDirection(2,Direction):-
	Direction=t1.

generateDirection(3,Direction):-
	Direction=b1.

generateDirection(4,Direction):-
	Direction=l2.

generateDirection(5,Direction):-
	Direction=r2.

generateDirection(6,Direction):-
	Direction=t2.

generateDirection(7,Direction):-
	Direction=b2.

generateDirection(8,Direction):-
	Direction=dtr.

generateDirection(9,Direction):-
	Direction=dtl.

generateDirection(10,Direction):-
	Direction=dbr.

generateDirection(11,Direction):-
	Direction=dbl.
