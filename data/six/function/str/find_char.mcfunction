#> six : str/find_char

execute unless data storage six:in find_char.do_inner_escape run data modify storage six:in find_char.do_inner_escape set value false

data remove storage six:out find_char

execute store result score *x _six run function six:_/impl/str/find_char/main

data remove storage six:_ v.find_char
data remove storage six:in find_char
scoreboard players reset *find_char.i
scoreboard players reset *find_char.length
scoreboard players reset *find_char.do_escape
scoreboard players reset *find_char.escaped

return run scoreboard players get *x _six