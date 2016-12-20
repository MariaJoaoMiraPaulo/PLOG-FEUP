:-use_module(library(clpfd)).
:-use_module(library(lists)).
:-use_module(library(sets)).

newPuzzle(Puzzle):-
Puzzle = [[4,8,1,6,3,2,5,7],
          [3,6,7,2,1,6,5,4],
          [2,3,4,8,2,8,6,1],
          [2,3,4,8,2,8,6,1],
          [4,1,6,5,7,7,3,5],
          [3,5,6,7,3,1,8,4],
          [6,4,2,3,5,4,7,8],
          [8,7,1,4,2,3,5,6]].
/*
%Dominio vai ser de 1 ao numero de Colunas
%Inicializar tabuleiro com a soluação
initializeBoard([_Line|_Board],_NCol,0).

%length(?List,?Length)
initializeBoard([Line|Board],NCol,NLin):-
  length(Line,NCol),
  domain(Line,1,NCol),
  NL is NLin-1,
  initializeBoard(Board,NCol,NL).*/

%Dominio vai ser de 1 ao numero de Colunas
%Inicializar tabuleiro com a soluação
initializeBoard([],[],_NCol).

%length(?List,?Length)
initializeBoard([Line|Board],[LinePuzzle|Puzzle],NCol):-
  initializeBoard(Board,Puzzle,NCol),
  length(Line,NCol),
  initializeLine(Line,LinePuzzle,NCol).

initializeLine([],[],_NCol).

initializeLine([Line|Board],[LinePuzzle|Puzzle],NCol):-
  initializeLine(Board,Puzzle,NCol),
  MaxValue is NCol * NCol,
  Line in (LinePuzzle \/ 1..MaxValue).

testDifferentLines([_Line|_Column],0).

testDifferentLines([Line|_Column],_NLin):-
  NewLine is _NLin-1,
  allDiferent(Line,NewLine).

%Predicado que vê se os valores de uma linha sao todos iguais, retirando os valores de apoio à resolução do problema: 0.
allDiferent([E1|E2]):-
  subtract([E1|E2],[0],Difference),
  allDiferent(Difference).


checkAdjacentPositions(LineIndex,ColumnIndex,[Line|Board]):-
  element(LineIndex-1,[Line|Board],LineElem),
  element(ColumnIndex,LineElem,LineElem),
  LineElem #\= 0, %Cima
  element(LineIndex+1,[Line|Board],LineElem),
  element(ColumnIndex,LineElem,LineElem),
  LineElem #\= 0, %Baixo
  element(LineIndex,[Line|Board],LineElem),
  element(ColumnIndex-1,LineElem,LineElem),
  LineElem #\= 0, %Esquerda
  element(LineIndex,[Line|Board],LineElem),
  element(ColumnIndex+1,LineElem,LineElem),
  LineElem #\= 0. %Direita

/*
checkAdjacentPositions([]).

checkAdjacentPositions([Line|Board]):- validate(Line,Board),checkAdjacentPositions(Board).

validate([Elem|Line],Board):-
*/
/*
hitori(Puzzle, PuzzleSolution):-
  initializeBoard(PuzzleSolution,8,8),
  testDifferentLines(PuzzleSolution),
  transpose(PuzzleSolution,InvertedPuzzleSolution),
  testDifferentLines(InvertedPuzzleSolution).
  %restrições.*/
hitori(Puzzle, PuzzleSolution):-
  solver(Puzzle, PuzzleSolution),
  display_board(PuzzleSolution,9).


solver(Puzzle, PuzzleSolution):-
  length(Puzzle,Size),
  length(PuzzleSolution,Size),
  initializeBoard(PuzzleSolution,Puzzle,Size),
  transpose(PuzzleSolution,TransposePuzzleSolution),
  % não permitir elementos diferentes

  maplist(all_distinct,PuzzleSolution),
  maplist(all_distinct,TransposePuzzleSolution),

  maplist(labeling([ff]),PuzzleSolution).



  display_board([L1|LS], MaxValue):-
   write('|'),
   display_line(L1,MaxValue), nl,
   display_board(LS,MaxValue).

  display_board([],_MaxValue).

  display_line([E1|ES],MaxValue):-
   E1 < MaxValue,
   write(E1),
   write('|'),
   display_line(ES,MaxValue).

  display_line([_E1|ES],MaxValue):-
    write(' '),
    write('|'),
    display_line(ES,MaxValue).

  display_line([],_MaxValue).
