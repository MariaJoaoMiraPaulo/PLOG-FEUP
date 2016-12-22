:-use_module(library(clpfd)).
:-use_module(library(lists)).
:-use_module(library(sets)).
:- ensure_loaded('utilities.pl').
:- ensure_loaded('randomBoard.pl').

newPuzzle(Puzzle):-
Puzzle = [
    [4,8,1,6,3,2,5,7],
    [3,6,7,2,1,6,5,4],
    [2,3,4,8,2,8,6,1],
    [4,1,6,5,7,7,3,5],
    [7,2,3,1,8,5,1,2],
    [3,5,6,7,3,1,8,4],
    [6,4,2,3,5,4,7,8],
    [8,7,1,4,2,3,5,6]].

initializeBoard([],[],_).
initializeBoard([Line|PuzzleSolution],[LinePuzzle|Puzzle],Size):-
  initializeLine(Line,LinePuzzle,Size),
  initializeBoard(PuzzleSolution,Puzzle,Size).

initializeLine([],[],_).
initializeLine([S1|LineSolution],[P1|LinePuzzle],Size):-
  MaxValue #= Size * Size,
  N #= Size+1,
  S1 in (P1..P1) \/ (N..MaxValue),
  initializeLine(LineSolution,LinePuzzle,Size).

checkAdjacentPositions(_,[_]).
checkAdjacentPositions(Size,[E1,E2|Line]):-
  #\ (E1 #> Size #/\ E2 #> Size),
  checkAdjacentPositions(Size,[E2|Line]).

solvePuzzle(Puzzle,Size,PuzzleSolution):-
  initializeBoard(PuzzleSolution,Puzzle,Size),
  transpose(PuzzleSolution,TransposePuzzleSolution),
  maplist(all_distinct,PuzzleSolution),
  maplist(all_distinct,TransposePuzzleSolution),
  maplist(checkAdjacentPositions(Size),PuzzleSolution),
  maplist(checkAdjacentPositions(Size),TransposePuzzleSolution),
  maplist(labeling([ffc]),PuzzleSolution).

randomSolver:-
  reset_timer,
  randomSize(Size),
  randomBoard(Puzzle2,Size),
  randomBoardRestrictions(Puzzle,Size),
  fillBoard(Puzzle,Size,Puzzle2),
  SizePlusOne is Size+1,
  display_board(Puzzle2,SizePlusOne),nl,nl,nl,nl,
  solvePuzzle(Puzzle2,Size,Solution),
  display_board(Solution,SizePlusOne),
  print_time,
  fd_statistics.

generateRandomBoard:-
  reset_timer,
  randomSize(Size),
  randomBoard(Puzzle2,Size),
  randomBoardRestrictions(Puzzle,Size),
  fillBoard(Puzzle,Size,Puzzle2),
  SizePlusOne is Size+1,
  display_board(Puzzle2,SizePlusOne),
  print_time,
  fd_statistics.

hitori(Puzzle, PuzzleSolution):-
  reset_timer,
  newPuzzle(Puzzle),
  length(Puzzle,Size),
  SecondSize is Size+1,
  display_board(Puzzle,SecondSize),nl,nl,nl,nl,
  solvePuzzle(Puzzle,8,PuzzleSolution),
  display_board(PuzzleSolution,SecondSize),
  print_time,
  fd_statistics.
