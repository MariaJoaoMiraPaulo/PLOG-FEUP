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

%Dominio vai ser de 1 ao numero de Colunas
%Inicializar tabuleiro com a soluação
initializeBoard([_Line|_Board],_NCol,0).

%length(?List,?Length)
initializeBoard([Line|Board],NCol,NLin):-
  length(Line,NCol),
  domain(Line,1,NCol),
  NL is NLin-1,
  initializeBoard(Board,NCol,NL).

  %Predicado que vê se os valores de uma linha sao todos iguais, retirando os valores de apoio à resolução do problema: 0.
allDiferent([E1|E2]):-
  subtract([E1|E2],[0],Difference),
  allDiferent(Difference).


hitori(Puzzle, PuzzleSolution):-
  initializeBoard(PuzzleSolution,8,8),
  allDiferent(PuzzleSolution),
  transpose(PuzzleSolution,InvertedPuzzleSolution),
  allDiferent(InvertedPuzzleSolution).
  %restrições.
