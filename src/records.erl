-module(records).

-export([start/0]).
-record(person, {name = "ABCD", id, address = "Default address"}).
-record(employee, {person, id}).

start() ->
  P = #person{name = "John", id = 1},
  io:fwrite("~p~n", [P]),

  io:fwrite("~p~n", [P#person.id]),
  io:fwrite("~p~n~n", [P#person.name]),

  P1 = P#person{name = "Dan"},
  io:fwrite("~p~n",[P1#person.id]),
  io:fwrite("~p~n",[P1#person.name]),

  EP = #employee{person = #person{name = "John", address = "A"}, id = 1},
  io:fwrite("~p~n", [EP#employee.id]),

  % -record(названиеЗаписи, {аттрибут1 = "abcd", аттрибут2... аттрибутN}).
  % #названиеЗаписи{аттрибут1 = 1234, аттрибут2 = XYZ}
  % Переменная#названиеЗаписи.аттрибут1
  % НоваяПеременная = Переменная#названиеЗаписи{аттрибут1 = новое_значение}

  P2 = #person{id = 1},
  io:fwrite("~p~n", [P2]),

  ok.

