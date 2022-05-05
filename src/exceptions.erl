-module(exceptions).

-export([start/0, convert/2]).

convert(M, inch) ->
  M / 2.54;
convert(N, centimeter) ->
  N * 2.54.

start() ->
  % Пример badarith
  try 1 / 0 of
    1 ->
      io:fwrite("Result: ~p", [1]);
    X ->
      io:fwrite("Result: ~p", [X])
  catch error:Error1 ->
    io:fwrite("Got Error ~p", [Error1]),
    1 + 1
  end,

  io:fwrite("~n"),

  % Пример badmatch
  SomeList = [1, 2, 3],
  try
    {ok, ok} = SomeList
  catch _Class:Error2:_StackTrace ->
    io:fwrite("Got Error ~p", [Error2])
  end,

  io:fwrite("~n"),

  % Пример function_clause
  try
    convert(1, miles)
  catch _Class1:Error3:_StackTrace1 ->
    io:fwrite("Got Error ~p", [Error3])
  end,

  io:fwrite("~n"),

  % Пример case_clause
  try
    case [1, 2, 3] of
        1 -> 1
    end
  catch _Class2:Error4:_StackTrace2 ->
    io:fwrite("Got Error ~p", [Error4])
  end,

  ok.
