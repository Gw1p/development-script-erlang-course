-module(processeses).

-export([start/0, call/2]).

call(Arg1, Arg2) ->
  io:format("~p ~p~n", [Arg1, Arg2]).

start() ->
  Pid = spawn(?MODULE, call, ["hello", "process"]),
  io:fwrite("Pid: ~p", [Pid]),

  % io:fwrite("is_pid: ~p~n", [is_pid(Pid)]),

  % io:fwrite("pid_to_list: ~p~n", [pid_to_list(Pid)]),

  % io:fwrite("is_pid_alive: ~p~n", [is_pid(Pid)]),

  % io:fwrite("registered: ~p~n", [registered()]),

  % io:fwrite("Self: ~p~n", [self()]),

  % register(myprocess, Pid),
  % io:fwrite("registered after register: ~p~n", [registered()]),

  % io:fwrite("whereis myprocess: ~p~n", [whereis(myprocess)]),

  % unregisterd(myprocess),
  % io:fwrite("whereis myprocess after unregistering: ~p~n", [whereis(myprocess)]),

  ok.
