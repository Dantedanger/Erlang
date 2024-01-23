-module(lab4).
-export([sum3/1]).
sum3([])->0;
sum3([[H|_]|T])-> H+sum3(T).