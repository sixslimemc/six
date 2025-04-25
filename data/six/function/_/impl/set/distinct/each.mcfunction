#> six:_/impl/set/distinct/each
#--------------------
# ./main
#--------------------

data modify storage six:_ v.distinct.this_item set from storage six:in distinct.items[-1]
data modify storage six:_ v.distinct.this_compare.value set from storage six:_ v.distinct.compares[-1]

execute store result score *x _six run function six:_/impl/set/distinct/check_seen with storage six:_ v.distinct

execute if score *x _six matches 0 run function six:_/impl/set/distinct/add_item
execute unless score *x _six matches 0 run scoreboard players add *distinct.removed _six 1

data remove storage six:_ v.distinct.compares[-1]
data remove storage six:in distinct.items[-1]
execute if data storage six:in distinct.items[0] run function six:_/impl/set/distinct/each