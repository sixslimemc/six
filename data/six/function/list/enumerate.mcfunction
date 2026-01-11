#> six : list/enumerate

data remove storage six:out enumerate

function six:_/impl/list/enumerate/main

data remove storage six:_ v.enumerate
data remove storage six:in enumerate
scoreboard players reset *enumerate.index _six

return 1