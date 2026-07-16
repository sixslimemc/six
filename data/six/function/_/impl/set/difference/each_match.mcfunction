#> six:_/impl/set/difference/each_match
#--------------------
# ./each
#--------------------

execute store success score *x _six run data modify storage six:_ eval[-1].v.matches[-1].compare set from storage six:_ eval[-1].v.a_compare.compare

execute if score *x _six matches 0 run return run scoreboard players set *difference.equal _six 1

data remove storage six:_ eval[-1].v.matches[-1]
execute if data storage six:_ eval[-1].v.matches[0] run function six:_/impl/set/difference/each_match