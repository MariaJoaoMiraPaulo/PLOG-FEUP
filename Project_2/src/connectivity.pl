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
