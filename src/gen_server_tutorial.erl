-module(gen_server_tutorial).
-behaviour(gen_server).

-export([
  start_link/1,

  purchase_ticket/1,
  rename_event/1,
  print/0,

  init/1,
  handle_call/3,
  handle_cast/2
]).

-record(state, {
  event_name = "",
  total_bookings = 0,
  people_attending = [],
  earnings = 0.0
}).

-define(TICKET_PRICE, 25).

start_link(EventName) ->
  gen_server:start_link({local, gen_server_tutorial}, ?MODULE, [EventName], []).

init([EventName]) ->
  {ok, #state{event_name = EventName}}.

purchase_ticket(PersonName) ->
  gen_server:call(gen_server_tutorial, {purchase_ticket, PersonName}).

rename_event(NewEventName) ->
  gen_server:cast(gen_server_tutorial, {rename_event, NewEventName}).

print() ->
  gen_server:cast(gen_server_tutorial, {print}).

handle_call({purchase_ticket, PersonName}, _From, State) ->
  {
    reply,
    ok,
    State#state{
      total_bookings = State#state.total_bookings + 1,
      people_attending = [PersonName | State#state.people_attending],
      earnings = State#state.earnings + ?TICKET_PRICE
    }
  }.

handle_cast({rename_event, NewEventName}, State) ->
  {noreply, State#state{event_name = NewEventName}};
handle_cast({print}, State = #state{event_name = EventName, total_bookings = TotalBookings, people_attending = PeopleAttending, earnings = Earnings}) ->
  io:fwrite(
    "State: ~n event name ~p~n total bookings ~p~n people attending: ~p~n earnings $~p~n",
    [EventName, TotalBookings, PeopleAttending, Earnings]
  ),
  {noreply, State}.
