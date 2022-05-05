-module(atoms).

-export([start/0]).

start() ->
  io:fwrite(atom1),
  io:fwrite("~n"),
  io:fwrite(atom_1),
  io:fwrite("~n"),
  io:fwrite('atom 1'),
  io:fwrite("~n"),

  % Пример is_atom
  io:fwrite("~p~n", [is_atom(test_atom)]),
  io:fwrite("~p~n", [is_atom("not an atom")]),

  % Пример конвертации в список
  AnAtom = some_atom,
  AList = atom_to_list(AnAtom),
  io:fwrite("~p is a list: ~p~n", [AList, is_list(AList)]),
  BackToAtom = list_to_atom(AList),
  io:fwrite("~p is an atom: ~p~n", [BackToAtom, is_atom(BackToAtom)]),

  % Пример конвертации в бинарную строку
  AnAtom2 = some_atom2,
  ABinary = atom_to_binary(AnAtom2),
  io:fwrite("~p is a binary: ~p~n", [ABinary, is_binary(ABinary)]),
  BackToAtom2 = binary_to_atom(ABinary),
  io:fwrite("~p is an atom: ~p~n", [BackToAtom2, is_atom(BackToAtom2)]),

  ok.
