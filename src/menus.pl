%Font Style : Doom
mainMenu:-
	printMainMenu,
  read(Input),
  readInput(Input).

readInput(1):-
  emptyBoard(T),
  gameLoop(T, 21, 27).

readInput(2):-
  printHowToPlayMenu,
  read(InputHowToPlay),
  readHowToPlayInput(InputHowToPlay).

readInput(3):-
  write('Exiting...').

readInput(_Input):-
  write('Error: invalid input.').

readHowToPlayInput(1):-
    mainMenu.

readHowToPlayInput(_InputHowToPlay):-
    write('Error: invalid input.').

printMainMenu:-
  nl,nl,nl,nl,nl,nl,nl,
  write('        |-------------------------------------------------------------------------|'),nl,
  write('        |                                                                         |'),nl,
  write('        |                                                                         |'),nl,
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
  write('        |                                                                         |'),nl,
  write('        |                                                                         |'),nl,
  write('        |                           Choose an option...                           |'),nl,
  write('        |-------------------------------------------------------------------------| '),nl,nl,nl,nl.


printHowToPlayMenu:-
  nl,nl,nl,nl,nl,nl,nl,
  write('        |-------------------------------------------------------------------------|'),nl,
  write('        |                                                                         |'),nl,
  write('        |                                                                         |'),nl,
  write('        |                                                                         |'),nl,
  write('        |           _   _                 _         ______ _                      |'),nl,
  write('        |          | | | |               | |        | ___ | |                     |'),nl,
  write('        |          | |_| | _____      __ | |_ ___   | |_/ / | __ _ _   _          |'),nl,
  write('        |          |  _  |/ _  |  /| / / | __/ _  |  |  __/| |/ _` | | | |        |'),nl,
  write('        |          | | | | (_) | V  V /  | || (_) | | |   | | (_| | |_| |         |'),nl,
  write('        |          |_| |_/|___/ |_/|_/   | __|___/  |_|   |_||__,_||__, |         |'),nl,
  write('        |                                                           __/ |         |'),nl,
  write('        |                                                           |___/         |'),nl,
  write('        |                                                                         |'),nl,
  write('        |                                                                         |'),nl,
  write('        |   Players each have 2 pawns, 9 walls (which are placed vertically),and  |'),nl,
  write('        |   9 walls (placed horizontally). Pawns start on the symbols matching    |'),nl,
  write('        |   them, which are 4x4 squares in on each of the four corners of the     |'),nl,
  write('        |   board. The objective is simple: to get one of your pawns to a         |'),nl,
  write('        |   starting spot of your opponent.                                       |'),nl,
  write('        |    Each turn players can move one pawn up to two spaces, and also place |'),nl,
  write('        |   one wall, useful for blocking off their opponent s move.              |'),nl,
  write('        |    Walls always cover two squares worth of area, and must be place      |'),nl,
  write('        |    according to their type (vertically or horizontally).                |'),nl,
  write('        |                                                                         |'),nl,
  write('        |   Once players are out of walls, they keep moving pawns until one wins. |'),nl,
  write('        |                                                                         |'),nl,
  write('        |                                                                         |'),nl,
  write('        |                                                                         |'),nl,
  write('        |                                                                         |'),nl,
  write('        |                                                                         |'),nl,
  write('        |                                                                         |'),nl,
  write('        |                             1. Main Menu                                |'),nl,
  write('        |-------------------------------------------------------------------------|'),nl,nl,nl,nl.
