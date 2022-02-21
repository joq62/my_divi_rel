%%%-------------------------------------------------------------------
%% @doc my_divi_rel public API
%% @end
%%%-------------------------------------------------------------------

-module(my_divi_rel_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    my_divi_rel_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
