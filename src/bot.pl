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

randomWallAnswer(Answer):-
	random(0,2,NumberGenerated),
	generateWallAnswer(NumberGenerated,Answer).

generateWallAnswer(0,Answer):-
	Answer=y.

generateWallAnswer(1,Answer):-
	Answer=n.

randomOrientation(Orientation):-
	random(0,2,NumberGenerated),
	generateOrientation(NumberGenerated,Orientation).

generateOrientation(0,Orientation):-
	Orientation=v.

generateOrientation(1,Orientation):-
	Orientation=h.

randomPositionInside(Orientation,WallPositionInside):-
	random(0,4,NumberGenerated),
	generatePositionInside(Orientation,NumberGenerated,WallPositionInside).

generatePositionInside(v,0,WallPositionInside):-
	WallPositionInside=lt.

generatePositionInside(v,1,WallPositionInside):-
	WallPositionInside=rt.

generatePositionInside(v,2,WallPositionInside):-
	WallPositionInside=lb.

generatePositionInside(v,3,WallPositionInside):-
	WallPositionInside=rb.

generatePositionInside(h,0,WallPositionInside):-
	WallPositionInside=tl.

generatePositionInside(h,1,WallPositionInside):-
	WallPositionInside=tr.

generatePositionInside(h,2,WallPositionInside):-
	WallPositionInside=bl.

generatePositionInside(h,3,WallPositionInside):-
	WallPositionInside=br.

randomWallPosition(Xlimit,Ylimit,WallX,WallY):-
	MaxX is (Xlimit+1)/2+1,
	random(1,MaxX,X),
	X2 is round(X),
	transformToRealCoordinates(X2,WallX),
	MaxY is (Ylimit+1)/2+1,
	random(1,MaxY,Y),
	Y2 is round(Y),
	transformToRealCoordinates(Y2,WallY).
