-module(lab5).
-export([sort/1,sm/2]).
sort([])->[];
sort(X)->sm(X,[])++sort(X--sm(X,[])).
sm([],X)->X;
sm([H|T],[])->sm(T,[H]);
sm([H|T],[X]) when H<X->
	sm(T,[H]);
sm([H|T],[X])->sm(T,[X]).