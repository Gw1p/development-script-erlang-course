-module(numbers).

-export([start/0]).

start() ->
  io:fwrite("~w~n", [1 + 1]),
  io:fwrite("~w~n", [1.1 + 2.2]),

  io:fwrite("~w~n", [math:exp(1)]),
  io:fwrite("~w ~w~n", [abs(1), abs(-1)]),

  io:fwrite("~w~n", [float(5)]),
  io:fwrite("~w~n", [is_float(5)]),
  io:fwrite("~w~n", [is_float(5.25)]),
  io:fwrite("~w~n", [is_integer(5)]),
  io:fwrite("~w~n", [is_integer(5.25)]).
