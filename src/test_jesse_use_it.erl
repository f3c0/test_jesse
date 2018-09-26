-module(test_jesse_use_it).

-export([use_it/0]).

use_it() ->
  case jesse:validate_with_schema(<<"x1">>, <<"x2">>,
    [{parser_fun, fun
                    (<<"x1">>) -> #{};
                    (_) -> throw(xxx)
                  end}]) of
    {error, [{schema_error, {parse_error, xxx}}]} -> error1;
    {error, [{data_error, {parse_error, xxx}}]} -> error2;
    Any -> io:format("O: ~p~n", [Any])
  end.
