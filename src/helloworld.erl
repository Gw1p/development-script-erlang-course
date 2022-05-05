% hello world program
-module(helloworld).
% Эта строка импортирует функцию fwrite из модуля io
-import(io,[fwrite/1]).
-export([start/0]).

start() ->
  fwrite("Erlang is cool!\n").
