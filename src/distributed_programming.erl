-module(distributed_programming).

-export([start/0]).

start() ->
  spawn(fun() -> server("Hello from server") end),

  io:fwrite("Node: ~p~n", [node()]),

  io:fwrite("is_alive: ~p~n", [is_alive()]),

  spawn_link(node(), fun() -> server_with_link("Hello from server with link") end),

  ok.

server(Message) ->
  io:fwrite("~p~n", [Message]).

server_with_link(Message) ->
  io:fwrite("~p~n", [Message]).
