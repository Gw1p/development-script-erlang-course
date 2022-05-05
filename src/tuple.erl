-module(tuple).

-export([start/0]).

start() ->
  P = {john, 24, {june, 25} },
  io:fwrite("~w~n", [tuple_size(P)]),

  % Пример is_tuple
  io:fwrite("~p is_tuple: ~p~n", [P, is_tuple(P)]),

  % Пример list_to_tuple
  List = [1, 2, 3],
  TupleFromList = list_to_tuple(List),
  io:fwrite("~p is_tuple: ~p~n", [TupleFromList, is_tuple(TupleFromList)]),

  % Пример tuple_to_list
  ListFromTuple = tuple_to_list(TupleFromList),
  io:fwrite("~p is_list: ~p~n", [ListFromTuple, is_list(ListFromTuple)]),

  ok.

