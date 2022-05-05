-module(bif).

-export([start/0]).

start() ->
  io:fwrite("Tuple to list: ~p~n", [tuple_to_list({1, 2, 3})]),

  io:fwrite("Time: ~p~n", [time()]),

  io:fwrite("Date: ~p~n", [date()]),

  io:fwrite("Byte Size: ~p~n", [byte_size(<<1,2,3>>)]),

  io:fwrite("Element: ~p~n",[element(2, {a, b, c})]),

  io:fwrite("Float: ~p~n", [float(5)]),

  put(1, "One"),
  put(2, "Two"),
  io:fwrite("Get: ~p~n", [get()]),

  io:fwrite("Local Time: ~p~n",[calendar:local_time()]),

  % Время с 1970-01-01 00:00:00
  io:fwrite("Now: ~p~n", [now()]),

  io:fwrite("Ports: ~p~n", [erlang:ports()]),

  io:fwrite("Processes: ~p~n", [processes()]),

  io:fwrite("Universal Time: ~p~n", [calendar:universal_time()]),

  ok.
