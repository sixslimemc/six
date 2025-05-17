#> six : decimal/max
#--------------------
# -> a: number
# -> b: number
#--------------------
# <- result: number
#--------------------
# TODO: description
#--------------------
# 1: <a> is larger than <b>; >result< == <a>
# -1: <b> is larger than <a>; >result< == <b>
# 0: <a> and <b> are equal.
#--------------------

data remove storage six:out max

execute store result score *x _six summon marker run function six:_/impl/decimal/max/main with storage six:in max

execute if score *x _six matches 0..1 run data modify storage six:out max.result set from storage six:in max.a
execute if score *x _six matches -1 run data modify storage six:out max.result set from storage six:in max.b

data remove storage six:in max

return run scoreboard players get *x _six