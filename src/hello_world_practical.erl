-module(hello_world_practical).

-export([run/0, print/1]).
-import(io, [fwrite/2]).

%
% *ЗАДАНИЕ*
% Написать код в этом модуле так, чтобы из него экспортировались две функция run/0 и print/1.
% При вызове функции run, вывод на консоль должен быть:
% hello
% "world"
% <<"!">>
%
% При этом, функция run не должна напрямую использовать io:fwrite.
% Вместо этого, она должна использовать функцию print/1.
%
% БОНУС: напишите функции так, чтобы все необходимые внешние функции были импортированы заранее.
%

print(Arg) ->
  fwrite("~p~n", [Arg]).

run() ->
  print(hello),
  print("world"),
  print(<<"!">>).