-module(otp_client).
-export([init/0, add/2, whereis/1, handle/2]).
-import(otp_server, [rpc/2]).

add(Name, Place) -> rpc(otp_client, {add, Name, Place}).
whereis(Name) -> rpc(otp_client, {whereis, Name}).

init() -> dict:new().
handle({add, Name, Place}, Dict) -> {ok, dict:store(Name, Place, Dict)};
handle({whereis, Name}, Dict) -> {dict:find(Name, Dict), Dict}.
