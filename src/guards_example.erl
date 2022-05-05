-module(guards_example).

-export([list_max/1, start/0]).

list_max([Head | Rest]) ->
  list_max(Rest, Head).

list_max([], Res) ->
  Res;
list_max([Head | Rest], Result_so_far) when Head > Result_so_far ->
  list_max(Rest, Head);
list_max([_ | Rest], Result_so_far) ->
  list_max(Rest, Result_so_far).

start() ->
  Max = list_max([23, 15, 1000, 1, -1, -25]),
  io:fwrite("max: ~p", [Max]),

  % Операторы для guards:
  % • < меньше чем
  % • > больше чем
  % • == равно
  % • >= больше или равно
  % • =< меньше или равно
  % • /= не равно
  ok.
