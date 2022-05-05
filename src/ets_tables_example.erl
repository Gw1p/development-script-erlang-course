-module(ets_tables_example).

-export([initialize/0, get/1]).
-define(CACHE_PERIOD, 10).

initialize() ->
  ets:new(cache_table, [set, named_table, public]).

get(Value) ->
  add(Value),
  ets:lookup(cache_table, Value).

add(Value) ->
  TimeNow = erlang:system_time(second),
  case ets:lookup(cache_table, Value) of
    [] ->
      % Нет этого ключа. Добавляем.
      ets:insert(cache_table, {Value, TimeNow + ?CACHE_PERIOD});
    [{Value, CachedTime}] when CachedTime >= TimeNow ->
      ok;
    _ ->
      ets:insert(cache_table, {Value, TimeNow + ?CACHE_PERIOD})
  end.
