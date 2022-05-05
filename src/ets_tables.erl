-module(ets_tables).

-export([start/0]).

start() ->
  ets:new(user_lookup, [set, named_table]),
  % Типы таблиц:
  % set {abc, 3}
  % ordered_set
  % bag {abc, 1} {abc, 2} {abc, 3}
  % duplicate_bag {abc, 1} {abc, 2} {abc, 3} {abc, 3} {abc, 3} {abc, 3} {abc, 3}

  % Контроль доступа к Ets:
  % public
  % protected
  % private

  ets:insert(user_lookup, {1, {"Anton", "Ivanov"}}),
  io:fwrite("Lookup id 1: ~p~n", [ets:lookup(user_lookup, 1)]),
  io:fwrite("Lookup id 2: ~p~n", [ets:lookup(user_lookup, 2)]),

  ets:insert(user_lookup, {1, {"Vova", "Vladimirov"}}),
  io:fwrite("Lookup id 1 after another insert: ~p~n", [ets:lookup(user_lookup, 1)]),

  ets:insert_new(user_lookup, {1, {"Petya", "Ivanov"}}),
  io:fwrite("Lookup id 1 after insert_new: ~p~n", [ets:lookup(user_lookup, 1)]),

  ets:insert(user_lookup, {2, {"Anton", "Kazimirov"}}),
  ets:insert(user_lookup, {3, {"Anton", "Smirnov"}}),
  Match = ets:match(user_lookup, {'$1', {"Anton", '_'}}),
  io:fwrite("Match ids where first name 'Anton': ~p~n", [Match]),

  MatchObject = ets:match_object(user_lookup, {'_', {"Anton", '_'}}),
  io:fwrite("Match Objects where first name 'Anton': ~p~n", [MatchObject]),

  EtsList = ets:tab2list(user_lookup),
  io:fwrite("tab2list: ~p~n", [EtsList]),

  ets:delete(user_lookup, 3),

  EtsList2 = ets:tab2list(user_lookup),
  io:fwrite("tab2list: ~p~n", [EtsList2]),

  LookupAfterDelete = ets:lookup(user_lookup, 3),
  io:fwrite("Lookup after delete: ~p~n", [LookupAfterDelete]),

  ok.
