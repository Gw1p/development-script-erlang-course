-module(functions).

-export([add/2, add/3, start/0]).

%
% Общий синтакс:
% FunctionName(Pattern1...PatternN) ->
% Body;
%

add(X, Y) when X < 0 ->
  Z = X + Y,
  io:fwrite("X is less than 0~n", []),
  io:fwrite("~w~n", [Z]).

add(X, Y, Z) ->
  A = X + Y + Z,
  io:fwrite("~w~n", [A]).

start() ->
  add(5, 6),
  add(5, 6, 6),
  io:fwrite("~n"),
  Fn = fun() -> io:fwrite("Anonymous functions are fun") end,
  Fn().
