-module(ports).
-export([start/0]).

start() ->
  {ok, Socket} = gen_udp:open(8789),
  io:fwrite("~p~n", [Socket]),

  % Отправить сообщение через сокет:
  % send(Socket, Address, Port, Packet)

  % Получить сообщение через сокет:
  % recv(Socket, length)

  % io:fwrite("~p~n", [gen_udp:send(Socket,"localhost",8789,"Hello")]),
  % io:fwrite("~p~n", [gen_udp:recv(Socket, 20)]),

  ok.
