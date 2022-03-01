all:
	rm -rf  *~ erl_crash* ;
	rm -rf  ebin;
	mkdir ebin;
	rebar3 compile;
	rebar3 release;
	cp -r _build/default/lib/*/ebin/* ebin;
	erlc -o test_ebin test/*.erl;
	erl -pa test_ebin -pa ebin -sname test -run mydivi_eunit test
	echo Done
eunit:
	rm -rf  *~ lib;
	rm -rf ebin;
	mkdir ebin;
	rebar3 compile;
	rebar3 release;
	cp -r _build/default/lib/*/ebin/* ebin;
	erlc -o test_ebin test/*.erl;
	erl -pa test_ebin -pa ebin -sname test -run mydivi_eunit test
tar:
	rm -rf  *~;
	rebar3 compile;
	rebar3 as prod tar
run_tar:
	./my_divi_rel-0.1.0/bin/my_divi_rel console
