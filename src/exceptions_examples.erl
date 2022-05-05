-module(exceptions_examples).
-compile(export_all).

generate_exception(1) -> a;
generate_exception(2) -> throw(abc);
generate_exception(3) -> exit(a);
generate_exception(4) -> {'EXIT', a};
generate_exception(5) -> erlang:error(abc).

demo1() ->
  io:fwrite("Demo1: ~p", [[catcher(I) || I <- [1, 2, 3, 4, 5]]]).

catcher(N) ->
  try generate_exception(N) of
    Val -> {N, normal, Val}
  catch
    throw:X -> {N, caught, thrown, X};
    exit:X -> {N, caught, exited, X};
    error:X -> {N, caught, error, X}
  end.

demo2() ->
  io:fwrite("Demo2: ~p", [[{I, (catch generate_exception(I))} || I <- [1, 2, 3, 4, 5]]]).

demo3() ->
  Result =
    try
      generate_exception(1)
    catch
      error:X:Z ->
        {X, Z}
    end,
  io:fwrite("Demo3: ~p", [Result]).

lookup(N) ->
  case(N) of
    1 -> {'EXIT', a};
    2 -> exit(a)
  end.
