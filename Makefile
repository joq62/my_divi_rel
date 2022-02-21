all:
	rm -rf  *~;
	rebar3 release;
	echo Done
eunit:
	rm -rf  *~;
	rebar3 release;
	./_build/default/rel/my_divi_rel/bin/my_divi_rel console
tar:
	rm -rf  *~;
	rebar3 as prod tar
