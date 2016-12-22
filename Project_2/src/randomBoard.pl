:- use_module(library(random)).

randomBoard(Board,Size):-
  length(Board,Size),
  randomB(Board,Size).

randomB([],_).
randomB([B1|Board],Size):-
  randomB(Board,Size),
  length(B1,Size).

randomSize(Size):-
  random(6,10,Size).

fillBoard([L1|Puzzle],Size,[L2|NewBoard]):-
  fillLine(L1,Size,L2),
  fillBoard(Puzzle,Size,NewBoard).

fillBoard([],_Size,[]).

fillLine([E1|Line],Size,[E2|NewLine]):-
  random(1,5,IsBlack),
  fillElement(E1,E2,Size,IsBlack),
  fillLine(Line,Size,NewLine).

fillLine([],_Size,[]).

fillElement(E1,E2,Size,1):-
  PlusOneSize is Size+1,
  random(1,PlusOneSize,Elem),
  Elem \= E1,
  E2 = Elem.

fillElement(E1,E2,Size,1):-
    fillElement(E1,E2,Size,1).

fillElement(E1,E2,Size,Index):-
  E2 = E1.
