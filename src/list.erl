-module(list).

-export([start/0]).

start() ->
  Lst1 = [1, 2, 3],
  io:fwrite("~p~n", [Lst1]),

  All = lists:all(fun(X) -> X rem 2 == 0 end, Lst1),
  io:fwrite("~p~n", [All]),

  Lst2 = lists:append(Lst1, [4, 5]),
  io:fwrite("~p~n", [Lst2]),

  Lst3 = lists:delete(2, Lst2),
  io:fwrite("~p~n", [Lst3]),

  Lst4 = lists:droplast(Lst3),
  io:fwrite("~p~n", [Lst4]),

  Lst5 = lists:duplicate(5, 1),
  io:fwrite("~p~n", [Lst5]),

  Lst6 = lists:max(Lst4),
  io:fwrite("~p~n", [Lst6]),

  Lst7 = lists:member(3, Lst4),
  io:fwrite("~p~n", [Lst7]),

  Lst9 = lists:merge([[4], [3, 2], [1]]),
  io:fwrite("~p~n", [Lst9]),

  Lst10 = lists:nth(3, Lst4),
  io:fwrite("~p~n", [Lst10]),

  Lst11 = lists:nthtail(1, Lst4),
  io:fwrite("~p~n", [Lst11]),

  Lst12 = lists:reverse(Lst4),
  io:fwrite("~p~n", [Lst12]),

  Lst13 = lists:sort(Lst4),
  io:fwrite("~p~n", [Lst13]),

  Lst14 = lists:sublist(Lst4, 2),
  io:fwrite("~p~n", [Lst14]),

  Lst15 = lists:sum(Lst4),
  io:fwrite("~p~n", [Lst15]),

  ok.
