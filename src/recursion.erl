-module(recursion).

-export([len/1, tail_len/1, start/0]).

len([]) -> 0;
len([_ | T]) -> 1 + len(T).

tail_len(L) -> tail_len(L, 0).

tail_len([], Acc) -> Acc;
tail_len([_|T], Acc) -> tail_len(T, Acc + 1).

start() ->
  X = [1,2,3,4],
  Y = len(X),
  io:fwrite("~w~n",[Y]),

  Z = tail_len(X),
  io:fwrite("~w",[Z]).


