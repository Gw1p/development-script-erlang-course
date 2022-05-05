-module(variables).

-export([start/0]).

start() ->
  X = 40,
  Y = 50,
  Result = X + Y,
  io:fwrite("~w", [Result]).
