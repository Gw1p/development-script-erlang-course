-module(macros).

-export([start/0]).
%-define(названиеМакроса, Значение).
-define(a, 1).
-define(macro1(X, Y), {X + Y}).
-define(VAT, 22.5).

-ifndef(macro1).
is_defined() ->
  io:fwrite("macro1 is defined").
-endif.

start() ->
  io:fwrite("~w~n",[?a]),

  io:fwrite("~w", [?macro1(1, 2)]),

  is_defined(),

  ok.
