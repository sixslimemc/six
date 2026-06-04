#> six : player/get_true_xp

data remove storage six:out get_true_xp

execute store result score *x _six run function six:_/impl/player/get_true_xp/main

execute store result storage six:out get_true_xp.result int 1 run scoreboard players get *x _six

data remove storage six:_ v.get_true_xp
data remove storage six:in get_true_xp
scoreboard players reset *get_true_xp.level _six
scoreboard players reset *get_true_xp.points _six
scoreboard players reset *get_true_xp.level_half _six
scoreboard players reset *get_true_xp.level_sqhalf _six

execute if score *x _six matches -1 run data modify storage six:out get_true_xp.result set from storage six:data const.int_limit.max

return run scoreboard players get *x _six