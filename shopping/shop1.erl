-module shop1.
-export [total/1, total2/1, cost/1].
-import (lists, [sum/1, map/2]).

% sampe product list: [{apple, 10}, {pear, 5}]

total([{ProductName, NumberOfProducts}|T]) -> 
    cost(ProductName) * NumberOfProducts + total(T);
total([]) -> 0.

% total using map and list
total2(ProductLists) ->
    sum(map(fun({ProductName, NumberOfProducts}) -> cost(ProductName) * NumberOfProducts end, 
        ProductLists)).

cost(apple) -> 9;
cost(pear) -> 10;
cost(orange) -> 5.