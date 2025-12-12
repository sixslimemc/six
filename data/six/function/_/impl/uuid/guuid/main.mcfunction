#> six:_/impl/uuid/guuid/main

data merge storage six:_ {v:{guuid:{0:0,1:0,2:0,3:0,4:0,5:0,6:0,7:0,8:0,9:0,a:0,b:0,c:0,d:0,e:0,f:0}}}

execute store result score *guuid.0 _six store result score *guuid.1 _six run data get storage six:in guuid.uuid[0]
execute store result storage six:_ v.guuid.0 int 1 run scoreboard players operation *guuid.0 _six %= *256 _six
execute store result score *guuid.2 _six run scoreboard players operation *guuid.1 _six /= *256 _six
execute store result storage six:_ v.guuid.1 int 1 run scoreboard players operation *guuid.1 _six %= *256 _six
execute store result score *guuid.3 _six run scoreboard players operation *guuid.2 _six /= *256 _six
execute store result storage six:_ v.guuid.2 int 1 run scoreboard players operation *guuid.2 _six %= *256 _six
execute store result storage six:_ v.guuid.3 int 1 run scoreboard players operation *guuid.3 _six /= *256 _six

execute store result score *guuid.0 _six store result score *guuid.1 _six run data get storage six:in guuid.uuid[1]
execute store result storage six:_ v.guuid.4 int 1 run scoreboard players operation *guuid.0 _six %= *256 _six
execute store result score *guuid.2 _six run scoreboard players operation *guuid.1 _six /= *256 _six
execute store result storage six:_ v.guuid.5 int 1 run scoreboard players operation *guuid.1 _six %= *256 _six
execute store result score *guuid.3 _six run scoreboard players operation *guuid.2 _six /= *256 _six
execute store result storage six:_ v.guuid.6 int 1 run scoreboard players operation *guuid.2 _six %= *256 _six
execute store result storage six:_ v.guuid.7 int 1 run scoreboard players operation *guuid.3 _six /= *256 _six

execute store result score *guuid.0 _six store result score *guuid.1 _six run data get storage six:in guuid.uuid[2]
execute store result storage six:_ v.guuid.8 int 1 run scoreboard players operation *guuid.0 _six %= *256 _six
execute store result score *guuid.2 _six run scoreboard players operation *guuid.1 _six /= *256 _six
execute store result storage six:_ v.guuid.9 int 1 run scoreboard players operation *guuid.1 _six %= *256 _six
execute store result score *guuid.3 _six run scoreboard players operation *guuid.2 _six /= *256 _six
execute store result storage six:_ v.guuid.a int 1 run scoreboard players operation *guuid.2 _six %= *256 _six
execute store result storage six:_ v.guuid.b int 1 run scoreboard players operation *guuid.3 _six /= *256 _six

execute store result score *guuid.0 _six store result score *guuid.1 _six run data get storage six:in guuid.uuid[3]
execute store result storage six:_ v.guuid.c int 1 run scoreboard players operation *guuid.0 _six %= *256 _six
execute store result score *guuid.2 _six run scoreboard players operation *guuid.1 _six /= *256 _six
execute store result storage six:_ v.guuid.d int 1 run scoreboard players operation *guuid.1 _six %= *256 _six
execute store result score *guuid.3 _six run scoreboard players operation *guuid.2 _six /= *256 _six
execute store result storage six:_ v.guuid.e int 1 run scoreboard players operation *guuid.2 _six %= *256 _six
execute store result storage six:_ v.guuid.f int 1 run scoreboard players operation *guuid.3 _six /= *256 _six

function six:_/impl/uuid/guuid/get_hexes with storage six:_ v.guuid
function six:_/impl/uuid/guuid/concat_uuid with storage six:_ v.guuid

scoreboard players reset *guuid.0 _six
scoreboard players reset *guuid.1 _six
scoreboard players reset *guuid.2 _six
scoreboard players reset *guuid.3 _six