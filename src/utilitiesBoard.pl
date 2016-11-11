getListElement([L1|LS],Xelement,Yelement,X,Y,Element):-
  checkTabLine(L1,Xelement,Yelement,X,Y,Element),!;
  (Y1 is Y+1,
  getListElement(LS,Xelement,Yelement,X,Y1,Element)).

getListElement([],Xelement,Yelement,X,Y,Element):-
  write('Dont found the element').

checkTabLine([L1|LS],Xelement,Yelement,X,Y,Element):-
  compareCoordinates(L1,Xelement,Yelement,X,Y,Element),!;
  ( X1 is X+1,
  checkTabLine(LS,Xelement,Yelement,X1,Y,Element)).

compareCoordinates(L1,Xelement,Yelement,X,Y,Element):-
  Xelement=X,
  Yelement=Y,
  Element=L1.

returnPosition(Name,[],X, Y, Xf, Yf):-
  write('Dont found the element'),fail.

returnPosition(Name,[L1|LS],X, Y, Xf, Yf):-
  checkLine(Name,L1,X,Y,Xf,Yf),
  Yf == Y,!;
  (Y1 is Y+1,
  returnPosition(Name,LS,X,Y1,Xf,Yf)).

checkLine(Name,[L1|LS],X,Y,Xf,Yf):-
  compareName(Name,L1,X,Y,Xf,Yf),!;
  (X1 is X+1,
  checkLine(Name,LS,X1,Y,Xf,Yf)).

checkLine(Name,[],X,Y,Xf,Yf).

compareName(Name,T1,X,Y,Xf,Yf):-
  Name=T1,
  Xf is X,
  Yf is Y.

setListElement([],Xelement,Yelement,X,Y,Element,[]).

setListElement([L1|LS],Xelement,Yelement,X,Y,Element,[N1|NS]):-
  setTabLine(L1,Xelement,Yelement,X,Y,Element,N1),
  Y1 is Y+1,
  setListElement(LS,Xelement,Yelement,X,Y1,Element,NS).

setTabLine([],Xelement,Yelement,X,Y,Element,[]).

setTabLine([L1|LS],Xelement,Yelement,X,Y,Element,[N1|NS]):-
  (setElementValue(L1,Xelement,Yelement,X,Y,N1),
  N1=Element;
  N1=L1),
  X1 is X+1,
  setTabLine(LS,Xelement,Yelement,X1,Y,Element,NS).

setElementValue(L1,Xelement,Yelement,X,Y,N1):-
  Xelement=X,
  Yelement=Y.
