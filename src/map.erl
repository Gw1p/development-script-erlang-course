-module(map).

-export([start/0]).

start() ->
  M1 = #{name => john, age => 25},
  io:fwrite("Map: ~p~n", [M1]),
  io:fwrite("~w~n",[map_size(M1)]),

  % Пример from_list
  Lst1 = [{"a",1},{"b",2},{"c",3}],
  M2 = maps:from_list(Lst1),
  io:fwrite("~p~n",[M2]),

  % Пример find
  Find = maps:find("a", M2),
  io:fwrite("~p~n", [Find]),

  % Пример get
  Get = maps:get("a", M2),
  io:fwrite("~p~n", [Get]),

  % Пример is_key
  IsKey = maps:is_key("a", M2),
  io:fwrite("~p~n", [IsKey]),

  % Пример keys
  Keys = maps:keys(M2),
  io:fwrite("~p~n", [Keys]),

  % Пример merge
  M3 = #{"d" => 4, "e" => 5, "f" => 6},
  Merge = maps:merge(M3, M2),
  io:fwrite("~p~n", [Merge]),

  % Пример put
  M4 = maps:put("g", 7, M3),
  io:fwrite("~p~n", [M4]),

  % Пример values
  Values = maps:values(M4),
  io:fwrite("~p~n", [Values]),

  % Пример remove
  M5 = maps:remove("a", M2),
  io:fwrite("~p~n", [M5]),

  ok.
