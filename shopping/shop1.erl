-module shop1.
-export [total/1, cost/1].

total([{ProductName, NumberOfProducts}|T]) -> 
    cost(ProductName) * NumberOfProducts + total(T);
total([]) -> 0.

cost(apple) -> 9;
cost(pear) -> 10;
cost(orange) -> 5.