-module lib_oca.
-export [for/2].

% to generate list of nmber min to Max
for(Max, Max) ->
    [Max];
for(Min, Max) ->
    [Min|for(Min+1, Max)].