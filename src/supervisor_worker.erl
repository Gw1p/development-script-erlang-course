-module(supervisor_worker).
-behaviour(gen_server).

-export([
  start_link/1,
  handle_call/3,
  handle_cast/2,
  init/1,

  increment_counter/1,
  print/1
]).

-record(state, {
  name,
  counter = 0
}).

start_link(ChildName) ->
  gen_server:start_link({local, ChildName}, ?MODULE, [ChildName], []).

init(ChildName) ->
  {ok, #state{name = ChildName}}.

increment_counter(WorkerName) ->
  gen_server:call(WorkerName, increment_counter).

print(WorkerName) ->
  gen_server:cast(WorkerName, {print, WorkerName}).

handle_call(increment_counter, _From, State = #state{counter = Counter}) ->
  UpdatedCounter = Counter + 1,
  {reply, UpdatedCounter, State#state{counter = UpdatedCounter}}.

handle_cast({print, WorkerName}, State = #state{counter = Counter}) ->
  io:fwrite("Worker: ~p~n", [WorkerName]),
  io:fwrite("Counter: ~p~n~n", [Counter]),
  {noreply, State}.
