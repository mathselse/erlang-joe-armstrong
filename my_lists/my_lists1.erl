-module my_lists1.
-export [sum/1].

sum([H|T]) ->
    H + sum(T);
sum([]) -> 0.