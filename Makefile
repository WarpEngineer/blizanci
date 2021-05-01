
release:
	rebar3 release

compile:
	rebar3 compile

shell:
	rebar3 shell

clean:
	rebar3 clean

prod:
	rebar3 as prod release
	rebar3 as prod tar

