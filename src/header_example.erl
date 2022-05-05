-module(header_example).

-export([start/0]).
-include("header.hrl").

start() ->
  P = #person{name = "John", id = 1},
  io:fwrite("~p~n", [P#person.id]),
  io:fwrite("~p~n", [P#person.name]),

  io:fwrite("~p~n", [?macro1(1, 2)]).
