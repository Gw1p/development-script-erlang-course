-module(supervisor_tutorial_sup).
-behaviour(supervisor).

-export([
  start_link/1,
  init/1,
  start_child/2,
  child_name/1
]).

start_link(ChildName) ->
  supervisor:start_link({local, ?MODULE}, ?MODULE, [ChildName]).

init([ChildName]) ->
  SupFlags = #{strategy => one_for_all, intensity => 1, period => 5},
  ChildSpecs = [child_spec(ChildName)],
  {ok, {SupFlags, ChildSpecs}}.

child_spec(ChildName) ->
  #{
    id => ChildName,
    start => {supervisor_worker, start_link, [child_name(ChildName)]},
    restart => permanent,
    shutdown => brutal_kill,
    type => worker,
    modules => [supervisor_worker]
  }.

child_name(Name) ->
  list_to_atom(Name ++ "_worker").

start_child(SupervisorPid, ChildName) ->
  supervisor:start_child(SupervisorPid, child_spec(ChildName)).
