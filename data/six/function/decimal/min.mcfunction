#> six : decimal/min
#--------------------
# -> a: number
# -> b: number
#--------------------
# <- result: number
#--------------------
# TODO: description
#--------------------
# 1: <a> is less than <b>; >result< == <a>
# -1: <b> is less than <a>; >result< == <b>
# 0: <a> and <b> are equal.
#--------------------

data remove storage six:out min

execute store result score *x _six summon marker run function six:_/impl/decimal/min/main

execute if score *x _six matches 0..1 run data modify storage six:out min.result set from storage six:in min.a
execute if score *x _six matches -1 run data modify storage six:out min.result set from storage six:in min.b

data remove storage six:in min

return run scoreboard players get *x _six