-module geometry.
-export [area/1].

area({rectangle, Height, Width}) ->
    Height * Width;
area({sequare, Side}) ->
    Side * Side.