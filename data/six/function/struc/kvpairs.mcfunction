#> six : struc/kvpairs

data remove storage six:out kvpairs

execute summon text_display store result score *x _six run function six:_/impl/struc/kvpairs/main

data remove storage six:_ v.kvpairs
data remove storage six:in kvpairs
scoreboard players reset *kvpairs.brace_scope _six
scoreboard players reset *kvpairs.bracket_scope _six

return run scoreboard players get *x _six

