-module(lab31).
-export([z2/2]).
z2([X1,X2,_],[Y1,Y2,_])->
[lists:min([X1,Y1]),lists:min([X2,Y2])].