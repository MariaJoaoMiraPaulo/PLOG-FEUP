:- use_module(library(random)).


test(B):-
  random(0,2,B).

randomBoard(Board):-
  random(6,10,Size),
  length(Board,Size),
  randomB(Board,Size).

randomB([],_).
randomB([B1|Board],Size):-
  randomB(Board,Size),
  length(B1,Size),
  randomLines(B1,Size).

randomLines([],_).
randomLines([L1|Line],Size):-
  randomLines(Line,Size),
  random(1,Size,L1).

randomSize(Size):-
  random(6,10,Size).
