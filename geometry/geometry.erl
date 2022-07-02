-module geometry.
-export [area/1, test/0].

test() ->
    12 = area({rectangle, 3, 4}),
    4 = area({sequare, 2}),
    "Test success".

area({rectangle, Height, Width}) ->
    Height * Width;
area({sequare, Side}) ->
    Side * Side.