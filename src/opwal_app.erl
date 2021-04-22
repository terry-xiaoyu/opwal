%%%-------------------------------------------------------------------
%% @doc opwal public API
%% @end
%%%-------------------------------------------------------------------

-module(opwal_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    opwal_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
