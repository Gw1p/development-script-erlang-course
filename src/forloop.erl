-module(forloop).

-export([for/2, start/0]).

for(0, _) ->
  [];

for(N, Term) when N > 0 ->
  io:fwrite("~p~n", [Term]),
  [Term | for(N - 1, Term)].

start() ->
  for(3, "Hello").
