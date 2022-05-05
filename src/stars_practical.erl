-module(stars_practical).

-export([start/0]).

%
% *ЗАДАНИЕ*
% Создать функцию stars/1, которая принимает число N и выводит на экран N строк.
% На каждой строке должно быть '*', соответствующее номеру строки.
%
% Например:
% вызвав stars(3), на экране мы ожидаем
% *
% **
% ***
%
% А вызвав stars(5) -
% *
% **
% ***
% ****
% *****
%

stars(N) ->
  stars(N, 1).

stars(0, _NumStars) ->
  ok;
stars(N, NumStars) ->
  output_stars(NumStars),
  io:fwrite("~n"),
  stars(N - 1, NumStars + 1).

output_stars(0) ->
  ok;
output_stars(N) ->
  io:fwrite("*"),
  output_stars(N - 1).

start() ->
  stars(3),

  io:fwrite("~n~n"),

  stars(5).