-module(iofwrite).

-export([start/0]).

%
% https://www.erlang.org/doc/man/io.html#type-format
% ~ - форматировать код
% ~f - дробные числа
% ~n - вывод на новую строку
% ~e - дробное числа (научная нотация)
% ~g - объединяет ~f и ~e
% ~s - печатает текст
% ~w - выводит переменные в стандартном формате Erlang
% ~p - тоже самое, что ~w, но выводит многострочные переменные на разных строках
%

start() ->
  X = 40.0,
  Y = 50.0,
  io:fwrite("~f~n", [X]),
  io:fwrite("~e~n~n", [Y]),

  A = 0.01,
  B = 5.0,
  io:fwrite("~g~n", [A]),
  io:fwrite("~g~n~n", [B]),

  C = "Some Text",
  io:fwrite("~s~n~n", [C]),

  io:fwrite("~w ~w ~w ~w", [X, A, B, C]).
