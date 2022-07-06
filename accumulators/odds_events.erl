-module odds_events.
-export [split_1/1, split_2/1].

% Performance issue the list is long since traversing the list twice
split_1(L) ->
    Odds = [X || X <- L, (X rem 2) =:= 1],
    Evens = [X || X <- L, (X rem 2) =:= 0],
    {Odds, Evens}.

% Using accumulator for better performance
split_2(L) ->
    split_acc(L, [], []).

split_acc([H|T], Odds, Evens) ->
    case (H rem 2) of
        1 -> split_acc(T, [H|Odds], Evens);
        0 -> split_acc(T, Odds, [H|Evens])
    end;
split_acc([], Odds, Evens) ->
    % Just this if don't want to keep the original order of the list
    %{Odds, Evens}.
    {lists:reverse(Odds), lists:reverse(Evens)}.