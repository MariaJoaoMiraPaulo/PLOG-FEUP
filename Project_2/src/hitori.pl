:-use_module(library(clpfd)).
:-use_module(library(lists)).
:-use_module(library(sets)).
:- ensure_loaded('utilities.pl').
:- ensure_loaded('randomBoard.pl').

newPuzzle(Puzzle):-
  Puzzle = [
      [1,2,5,4,5],
      [2,1,4,5,3],
      [3,5,5,1,5],
      [4,5,2,3,1],
      [5,3,1,3,4]].


% Puzzle = [
%     [4,8,1,6,3,2,5,7],
%     [3,6,7,2,1,6,5,4],
%     [2,3,4,8,2,8,6,1],
%     [4,1,6,5,7,7,3,5],
%     [7,2,3,1,8,5,1,2],
%     [3,5,6,7,3,1,8,4],
%     [6,4,2,3,5,4,7,8],
%     [8,7,1,4,2,3,5,6]].


%Dominio vai ser de 1 ao numero de Colunas
%Inicializar tabuleiro com a soluação
initializeBoard([],[],_).
initializeBoard([Line|PuzzleSolution],[LinePuzzle|Puzzle],Size):-
  %length(Line,Size),
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

checkConnectivity(_,[_,_],[_,_]).
checkConnectivity(Size,[S1,S2,S3|Solution],[TS1,TS2,TS3|TransposeSolution]):-
  #\ (S1 #> Size #/\  S3 #> Size #/\ TS1 #> Size #/\ TS3 #> Size),
  checkConnectivity(Size,[S2,S3|Solution],[TS2,TS3|TransposeSolution]).

/*
checkConnectivityCorners(Size,[S1|Solution],[TS1|TransposeSolution]):-
%  Line = 1,
  BeforeLast #= Size - 1.
  element(2,S1,E1),
  element(2,TS1,TE1),
  #\ (E1 #> Size #/\ TE1 #> Size).
  element(2,S1,E1),
  element(2,TS1,TE1),
  #\ (E1 #> Size #/\ TE1#> Size)
  NextLine is Line+1,
  NextLine #=< Size.*/

checkBordersConnectivity(Size,[S1|Solution],[TS1|TransposeSolution]):-
  BeforeLast #= Size - 1,
  getLine(2,1,[S1|Solution],S2),
  compareLines(S1,S2,Size),
  getLine(Size,1,[S1|Solution],SN),
  getLine(BeforeLast,1,[S1|Solution],SBL),
  compareLines(SN,SBL,Size),
  getLine(2,1,[TS1|TransposeSolution],TS2),
  compareLines(TS1,TS2,Size),
  getLine(Size,1,[TS1|TransposeSolution],TSN),
  getLine(BeforeLast,1,[TS1|TransposeSolution],TBL),
  compareLines(TSN,TBL,Size).


getLine(PositionWanted,Index,[S1|_],SN):-
  PositionWanted = Index,
  S1 = SN.

getLine(PositionWanted,Index,[_|Solution],SN):-
  NextIndex is Index+1,
  getLine(PositionWanted,NextIndex,Solution,SN).

compareLines([_,_],[_,_],_Size).
compareLines([E1,E2,E3|ES],[_R1,R2,R3|RS],Size):-
  #\ ( E1 #> Size #/\ E2 #=< Size #/\ E3 #> Size #/\ R2 #> Size),
  compareLines([E2,E3|ES],[R2,R3|RS],Size).

flattenList([],[]).
flattenList([L1|Ls], Lf):- is_list(L1), flattenList(L1, L2), append(L2, Ld, Lf), flattenList(Ls, Ld).
flattenList([L1|Ls], [L1|Lf]):- \+is_list(L1), flattenList(Ls, Lf).

randomSolver:-
  randomSize(Size),
  randomBoard(Puzzle2,Size),
  randomBoardRestrictions(Puzzle,Size),
  fillBoard(Puzzle,Size,Puzzle2),
  PlusOneSize is Size+1,
  %display_board(Puzzle2,PlusOneSize).
  display_board(Puzzle2,PlusOneSize),nl,nl,nl,nl,
  solvePuzzle(Puzzle2,Size,S),% -> randomStuff;
  display_board(S,PlusOneSize).

%restrições
hitori(Puzzle, PuzzleSolution):-
  length(Puzzle,Size),
  solvePuzzle(Puzzle,8,PuzzleSolution),
  SecondSize is Size+1,
  display_board(PuzzleSolution,SecondSize).


solvePuzzle(Puzzle,Size,PuzzleSolution):-

  initializeBoard(PuzzleSolution,Puzzle,Size),

  transpose(PuzzleSolution,TransposePuzzleSolution),

  % não permitir elementos diferentes nas linhas e colunas
  maplist(all_distinct,PuzzleSolution),
  maplist(all_distinct,TransposePuzzleSolution),

  % não permitir posições adjacentes a preto
  maplist(checkAdjacentPositions(Size),PuzzleSolution),
  maplist(checkAdjacentPositions(Size),TransposePuzzleSolution),

  %maplist(checkConnectivity(Size),PuzzleSolution,TransposePuzzleSolution),
  %checkBordersConnectivity(Size,PuzzleSolution,TransposePuzzleSolution),

  maplist(labeling([]),PuzzleSolution).


  % initializeRandomLine(Size,LinePuzzle):-
  %   length(LinePuzzle,Size),
  %   domain(LinePuzzle,1,Size).
    /*E1 #> Size,
    initializeRandomLine(LinePuzzle,Size).


  initializeRandomLine([E1|LinePuzzle],Size):-
    domain(E1,1,Size),
    initializeRandomLine(LinePuzzle,Size).*/

    initializeRandomLine([],_NCol).

    %length(?List,?Length)
    initializeRandomLine([Line|Board],NCol):-
      initializeRandomLine(Board,NCol),
      length(Line,NCol),
      domain(Line,1,NCol).
      %NL is NLin-1,


randomBoardRestrictions(Puzzle,Size):-
    length(Puzzle,Size),
    initializeRandomLine(Puzzle,Size),
    maplist(all_distinct,Puzzle),
    transpose(Puzzle,TransposePuzzle),
    maplist(all_distinct,TransposePuzzle),
     maplist(labeling([]),Puzzle).
