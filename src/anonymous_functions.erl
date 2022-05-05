-module(anonymous_functions).

-export([start/0]).

start() ->
  % fun(Arg1, Arg2, Arg3...ArgN) -> ... end

  A = fun() -> io:fwrite("Hello") end,
  A(),

  io:fwrite("~p~n", [A]),

  B = fun(X) -> io:fwrite("~p~n", [X]) end,
  B(5),
  B(abc),

  Adder = fun(X) ->
    fun(Y) -> io:fwrite("~p~n", [X + Y]) end
          end,
  % C = fun(Y) -> io:fwrite("~p~n", [6 + Y]) end,
  C = Adder(6),
  C(10),

  ok.
