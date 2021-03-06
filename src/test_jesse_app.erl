%%%-------------------------------------------------------------------
%% @doc test_jesse public API
%% @end
%%%-------------------------------------------------------------------

-module(test_jesse_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    test_jesse_sup:start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================
