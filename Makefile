all:
	rm -rf  *~;
	rebar3 compile;
	rebar3 as prod tar;
	echo Done
eunit:
	rm -rf  *~;
	rebar3 release;
	./_build/default/rel/my_divi_rel/bin/my_divi_rel console
tar:
	rm -rf  *~;
	rebar3 as prod tar
