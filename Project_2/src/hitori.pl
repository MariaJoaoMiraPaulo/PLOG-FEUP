:-use_module(library(clpfd)).
:-use_module(library(lists)).
:-use_module(library(sets)).
:- ensure_loaded('utilities.pl').

newPuzzle(Puzzle):-
Puzzle = [[4,8,1,6,3,2,5,7],
          [3,6,7,2,1,6,5,4],
          [2,3,4,8,2,8,6,1],
          [2,3,4,8,2,8,6,1],
          [4,1,6,5,7,7,3,5],
          [3,5,6,7,3,1,8,4],
          [6,4,2,3,5,4,7,8],
          [8,7,1,4,2,3,5,6]].


%Dominio vai ser de 1 ao numero de Colunas
%Inicializar tabuleiro com a soluação
initializeBoard([Line|PuzzleSolution],[LinePuzzle|Puzzle],Size):-
  length(Line,Size),
  initializeLine(Line,LinePuzzle,Size),
  initializeBoard(PuzzleSolution,Puzzle,Size).

initializeBoard([],[],_).

initializeLine([S1|LineSolution],[P1|LinePuzzle],Size):-
  MaxValue #= Size * Size,
  N #= Size+1,
  S1 in (P1..P1) \/ (N..MaxValue),
  initializeLine(LineSolution,LinePuzzle,Size).

initializeLine([],[],_).

checkAdjacentPositions(Size,[E1,E2|Line]):-
  #\ (E1 #> Size #/\ E2 #> Size),
  checkAdjacentPositions(Size,[E2|Line]).

checkAdjacentPositions(_,[_]).

  %restrições.*/
hitori(Puzzle, PuzzleSolution):-
  length(Puzzle,Size),
  solvePuzzle(Puzzle,Size,PuzzleSolution),
  SecondSize is Size+1,
  display_board(PuzzleSolution,SecondSize).


solvePuzzle(Puzzle,Size,PuzzleSolution):-
  /*length(Puzzle,Size),
  length(PuzzleSolution,Size),!,*/
  initializeBoard(PuzzleSolution,Puzzle,Size),
  transpose(PuzzleSolution,TransposePuzzleSolution),

  % não permitir elementos diferentes
  maplist(all_distinct,PuzzleSolution),
  maplist(all_distinct,TransposePuzzleSolution),

  maplist(checkAdjacentPositions(Size),PuzzleSolution),
  maplist(checkAdjacentPositions(Size),TransposePuzzleSolution),

  maplist(labeling([]),PuzzleSolution).
