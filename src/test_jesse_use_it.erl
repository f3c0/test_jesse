-module(test_jesse_use_it).

-export([use_it/0]).

use_it() ->
  case jesse:validate_with_schema(<<"x1">>, <<"x2">>,
    [{parser_fun, fun(_) -> throw(xxx) end}]) of
    {error,{schema_error,{parse_error,xxx}}} -> error1;
    Any -> io:format("O: ~p~n", [Any])
  end.
