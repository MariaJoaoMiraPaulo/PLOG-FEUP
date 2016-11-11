mainMenu:-
	printMainMenu,
  read(Input),
  readInput(Input).

readInput(1):-
  normalBoard(T),
  gameLoop(T, 21, 27).

readInput(3):-
  write('Exiting...').

readInput(Input):-
  write('Error: invalid input.').

printMainMenu:-
  nl,nl,nl,
  write('        |-------------------------------------------------------------------------|'),nl,
  write('        |                                                                         |'),nl,
  write('        |                                                                         |'),nl,
  write('        |                                                                         |'),nl,
  write('        |                _____ _            _             _                       |'),nl,
  write('        |                | ___ | |          | |           | |                     |'),nl,
  write('        |                | |_/ / | ___   ___| | ____ _  __| | ___                 |'),nl,
  write('        |                | ___ | |/ _ | / __| |/ / _` |/ _` |/ _ |                |'),nl,
  write('        |                | |_/ | | (_) | (__|   < (_| | (_| |  __/                |'),nl,
  write('        |                |____/|_||___/ |___|_||_|__,_||__,_||___|                |'),nl,
  write('        |                                                                         |'),nl,
  write('        |                           Maria Joao Mira Paulo                         |'),nl,
  write('        |                                Nuno Ramos                               |'),nl,
  write('        |                -----------------------------------------                |'),nl,
  write('        |                                                                         |'),nl,
  write('        |                                                                         |'),nl,
  write('        |                                1.Start                                  |'),nl,
  write('        |                                                                         |'),nl,
  write('        |                             2.How to Play                               |'),nl,
  write('        |                                                                         |'),nl,
  write('        |                                 3.Exit                                  |'),nl,
  write('        |                                                                         |'),nl,
  write('        |                                                                         |'),nl,
  write('        |                           Choose an option...                           |'),nl,
  write('        |-------------------------------------------------------------------------| '),nl,nl,nl,nl.
