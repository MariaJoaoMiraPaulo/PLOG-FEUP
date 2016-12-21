:- use_module(library(random)).

randomBoard(Board,Size):-
  %random(6,10,Size),
  length(Board,Size),
  randomB(Board,Size).

randomB([],_).
randomB([B1|Board],Size):-
  randomB(Board,Size),
  length(B1,Size).
  %randomLines(B1,Size).

randomLines([],_).
randomLines([L1|Line],Size):-
  randomLines(Line,Size),
  random(1,Size,L1).

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








% putBlacksOnPuzzle(_,_,[]).
% putBlacksOnPuzzle(PlusOneSize,BlackPerLine,[P1|PS]):-
%   putBlacks(PlusOneSize,BlackPerLine,P1,0),
%   putBlacksOnPuzzle(PlusOneSize,BlackPerLine,PS).
%
% putBlacks(_PlusOneSize,BlackPerLine,_LinePuzzle,NewBlacksPuted):-
%   BlackPerLine = NewBlacksPuted.
% putBlacks(PlusOneSize,BlackPerLine,LinePuzzle,BlacksPuted):-
%   putBlacksOnLine(PlusOneSize,BlackPerLine,LinePuzzle),
%   NewBlacksPuted is BlacksPuted + 1,
%   putBlacks(PlusOneSize,BlackPerLine,LinePuzzle,NewBlacksPuted).
%
% putBlacks(PlusOneSize,BlackPerLine,LinePuzzle,BlacksPuted):-
%   putBlacks(PlusOneSize,BlackPerLine,LinePuzzle,BlacksPuted).
%
% putBlacksOnLine(PlusOneSize,_BlackPerLine,LinePuzzle):-
%   random(1,PlusOneSize,Position),
%   Size is PlusOneSize - 1,
%   Limit is Size*Size,
%   random(PlusOneSize,Limit,Number),
%   nth1(Position,LinePuzzle,Number).
%   /*
%   Elem is Number,
%   nth1(Position,LinePuzzle,Elem).*/
