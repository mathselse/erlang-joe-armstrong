-module lib_oca.
-export [for/2, for/3].

% to generate list of nmber min to Max
for(Max, Max) ->
    [Max];
for(Min, Max) ->
    [Min|for(Min+1, Max)].

% to generate list of nmber min to max based on fun.
for(Max, Max, F) ->
    [F(Max)];
for(Min, Max, F) ->
    [F(Min)|for(Min+1, Max, F)].