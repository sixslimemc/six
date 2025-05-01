#> six:_/impl/set/intersection/direct/ordered/each_match
#--------------------
# ./each
#--------------------

execute store success score *x _six run data modify storage six:_ v.intersection.matches[0].value set from storage six:_ v.intersection.a_item.value

execute if score *x _six matches 0 run return run scoreboard players set *intersection.equal _six 1

data remove storage six:_ v.intersection.matches[0]
execute if data storage six:_ v.intersection.matches[0] run function six:_/impl/set/intersection/direct/ordered/each_match