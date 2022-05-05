-module(atoms_example).

-export([start/0, convert/2]).

convert(M, inch) ->
  M / 2.54;
convert(N, centimeter) ->
  N * 2.54.

start() ->
  io:fwrite("~p~n", [convert(3, inch)]),
  io:fwrite("~p~n", [convert(7, centimeter)]),
  io:fwrite("~p~n", [convert(3, miles)]),

  ok.
