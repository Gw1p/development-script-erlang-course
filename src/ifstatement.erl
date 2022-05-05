-module(ifstatement).

-export([start/0]).

start() ->
  A = 5,
  B = 6,

  if
    A == B ->
      io:fwrite("True");
    A < B ->
      io:fwrite("A is less than B~n"),
      if
        A > 5 ->
          io:fwrite("A is bigger than 5");
        true ->
          io:fwrite("A is less than (or equal to) 5 ")
      end;
    true ->
      io:fwrite("False")
  end.
