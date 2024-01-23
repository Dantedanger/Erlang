-module(lab6).
-export([shod/4,shod2/5]).

shod(F,X,N,E) -> shod2(F,X,N,E,0).

shod2(_,_,70,_,_) -> io:format("Не сходима ~n");
shod2(F,X,N,E,0) -> shod2(F,X,N,E,abs(F(X,N+1)-F(X,N)));
shod2(_,_,N,E,K) when K<E ->
	 N;
shod2(F,X,N,E,_) -> shod2(F,X,N+1,E,0).