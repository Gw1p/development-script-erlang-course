-module(processes).
-export([start/0, call/2]).

call(Arg1, Arg2) ->
  io:format("~p ~p~n", [Arg1, Arg2]).

start() ->
  % spawn(Модуль, Функция, Аргументы)
  Pid = spawn(?MODULE, call, ["hello", "process"]),
  io:fwrite("Pid: ~p~n", [Pid]),

  io:fwrite("Pid: ~p. is_pid: ~p~n", [Pid, is_pid(Pid)]),

  io:fwrite("Pid: ~p. is_process_alive: ~p~n", [Pid, is_process_alive(Pid)]),

  io:fwrite("Pid: ~p. pid_to_list: ~p~n", [Pid, pid_to_list(Pid)]),

  io:fwrite("Self: ~p~n.", [self()]),

  io:fwrite("Registered: ~p~n.", [registered()]),

  Pid2 = spawn(?MODULE, call, ["hello", "process"]),
  register(myprocess, Pid2),
  io:fwrite("Registered after register: ~p~n",[registered()]),

  io:fwrite("Whereis: ~p~n", [whereis(myprocess)]),

  unregister(myprocess),
  io:fwrite("Whereis after unregister: ~p~n", [whereis(myprocess)]),

  ok.
