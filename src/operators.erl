-module(operators).

-export([start/0]).

start() ->
  A = 25,
  B = 15,

  % Арифметические операторы:
  % +
  % -
  % *
  % /
  % rem
  % div
  io:fwrite("+: ~p~n", [A + B]),
  io:fwrite("-: ~p~n", [A - B]),
  io:fwrite("*: ~p~n", [A * B]),
  io:fwrite("/: ~p~n", [A / B]),
  io:fwrite("rem: ~p~n", [A rem B]),
  io:fwrite("div: ~p~n~n", [A div B]),

  % Операторы сравнения
  % ==
  % /=
  % <
  % =<
  % >
  % >=
  io:fwrite("==: ~p~n", [A == B]),
  io:fwrite("/=: ~p~n", [A /= B]),
  io:fwrite("<: ~p~n", [A < B]),
  io:fwrite("=<: ~p~n", [A =< B]),
  io:fwrite(">: ~p~n", [A > B]),
  io:fwrite(">=: ~p~n~n", [A >= B]),

  % Логические операторы
  % or
  % and
  % not
  % xor
  io:fwrite("or~n", []),
  io:fwrite("~p~n", [true or true]),
  io:fwrite("~p~n", [true or false]),
  io:fwrite("~p~n~n", [false or false]),
  io:fwrite("and~n", []),
  io:fwrite("~p~n", [true and true]),
  io:fwrite("~p~n", [true and false]),
  io:fwrite("~p~n~n", [false and false]),
  io:fwrite("not~n", []),
  io:fwrite("~p~n", [not true]),
  io:fwrite("~p~n~n", [not false]),
  io:fwrite("xor~n", []),
  io:fwrite("~p~n", [true xor true]),
  io:fwrite("~p~n", [true xor false]),
  io:fwrite("~p~n~n", [false xor false]),
  ok.
