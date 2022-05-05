-module(guards).

-export([display/1, start/0]).

display(N) when N > 10 ->
  io:fwrite("greater than 10~n");
display(N) when N < 10 ->
  io:fwrite("Less than 10~n").

start() ->
  display(11),

  N = 9,
  if
    N > 10 ->
      io:fwrite("N is greater than 10");
    true ->
      io:fwrite("N is less than 10")
  end,

  A = 9,
  case A of
    {A} when A > 10 ->
      io:fwrite("The value of A is greater than 10");
    _ ->
      io:fwrite("The value of A is less than 10")
  end,

  ok.
