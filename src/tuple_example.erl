-module(tuple_example).

-export([start/0, convert/2, convert_length/1]).

convert(M, inch) ->
  M / 2.54;
convert(N, centimeter) ->
  N * 2.54.

convert_length({centimeter, X}) ->
  {inch, X / 2.54};
convert_length({inch, Y}) ->
  {centimeter, Y * 2.54}.

start() ->
  io:fwrite("~p~n", [convert(3, inch)]),

  io:fwrite("~p~n", [convert_length({inch, 5})]),
  io:fwrite("~p~n", [convert_length(convert_length({inch, 5}))]),

  % io:fwrite("~p~n", [convert_length({miles, 5})]),
  % io:fwrite("~p~n", [convert_length("not a tuple")]),
  ok.
