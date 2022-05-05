-module(binaries).

-export([start/0]).

start() ->
  io:fwrite("~p~n", [<<5, 10, 20>>]),
  io:fwrite("~p~n", [<<"hello">>]),

  io:fwrite("~p~n", [list_to_binary([1, 2, 3])]),

  io:fwrite("~p~n", [split_binary(<<1, 2, 3, 4, 5>>, 3)]),

  io:fwrite("~p~n", [term_to_binary("hello")]),

  io:fwrite("~p~n", [is_binary(<<1, 2, 3>>)]),

  io:fwrite("~p~n", [binary_part(<<1, 2, 3, 4, 5>>, {0, 2})]),

  io:fwrite("~p~n", [binary_to_float(<<"2.2">>)]),

  io:fwrite("~p~n", [binary_to_integer(<<"2">>)]),

  io:fwrite("~p~n", [binary_to_list(<<2, 1>>)]),

  io:fwrite("~p~n", [binary_to_atom(<<"Erlang">>)]),

  ok.
