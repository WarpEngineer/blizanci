
.PHONY: release compile shell clean prod

Erl := $(shell erl -s init stop 2>/dev/null)
iserlangactive:
	$(if ${Erl}, $(info Erlang...check), $(error Erlang is not active.))

release:
	rebar3 release

compile:
	rebar3 compile

shell: iserlangactive
	rebar3 shell

clean:
	rebar3 clean

prod:
	rebar3 as prod release
	rebar3 as prod tar

