-module(factorial).
-export([fact/1, start/0]).

fact(N) when N == 0 -> 1;
fact(N) when N > 0 -> N * fact(N - 1).

start() ->
  X = fact(4),
  io:fwrite("~w", [X]).
