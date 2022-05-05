-module(strings).

-export([start/0]).

start() ->
  Str1 = "This is a string",
  io:fwrite("~p~n", [Str1]),

  Len = string:len(Str1),
  io:fwrite("~w~n", [Len]),

  Str2 = "This is a string2",
  Equal = string:equal(Str1, Str2),
  io:fwrite("~p~n", [Equal]),

  Str3 = "This is ",
  Str4 = "a string.",
  Concat = string:concat(Str3, Str4),
  io:fwrite("~p~n", [Concat]),

  Left = string:left(Str1, 2),
  io:fwrite("~p~n", [Left]),

  Right = string:right(Str1, 2),
  io:fwrite("~p~n", [Right]),

  ToLower = string:to_lower(Str1),
  io:fwrite("~p~n", [ToLower]),

  ToUpper = string:to_upper(Str1),
  io:fwrite("~p~n", [ToUpper]),

  SubString = string:sub_string(Str1, 6, 8),
  io:fwrite("~p~n", [SubString]),

  ok.
