-module(lab7).
-export([param/2]).

param(X,Y)->rev([],p(X,Y)).

p([] ,_) -> [];
p([H|T],Y) -> [spawn(lab7,sender,[H(Y),self()])]++p(T,Y).

sender(F,Pid) -> Pid!{self(),F}.

rev(R,[]) -> R;
rev(R,Pids) ->
	receive{Pid,Res} -> 
		rev(R++[Res],Pids--[Pid]);
			_ -> error
	end.