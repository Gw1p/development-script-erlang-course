-module(files).

-export([start/0]).

start() ->
  %Txt = file:read_file("NewFile.txt"),
  %io:fwrite("~p~n", [Txt]), % \r\n -- \n

  %{ok, File} = file:open("NewFile.txt", [read]),
  % File = {ok, <file>}
  %Txt = file:read(File, 1024 * 1024),
  %io:fwrite("~p~n", [Txt]),

  %{ok, Fd} = file:open("NewFile.txt", [append]),
  %file:write(Fd, "New Line"),

  % file:copy("NewFile.txt", "Duplicate.txt"),

  % file:delete("Duplicate.txt"),

  % io:fwrite("~p~n", [file:list_dir(".")]),

  % io:fwrite("~p~n", [file:make_dir("newdir")]),

  % io:fwrite("~p~n",[filelib:is_dir("newdir")]),

  %io:fwrite("~p~n",[file:rename("NewFile.txt","Renamedfile.txt")]),

  % io:fwrite("~w~n", [filelib:file_size("Renamedfile.txt")]),

  io:fwrite("~p~n",[filelib:is_file("Renamedfile.txt")]),

  ok.
