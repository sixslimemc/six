#> six:_/impl/set/distinct/matches/each
#--------------------
# ../check_seen
#--------------------

data modify storage six:_ impl.distinct.this_match set from storage six:_ impl.distinct.matches[-1]

execute store result score *x _six run data modify storage six:_ impl.distinct.this_match set from storage six:_ impl.distinct.this_item

execute if score *x _six matches 0 run return run scoreboard players set *distinct.equal _six 1

data remove storage six:_ impl.distinct.matches[-1]
execute if data storage six:_ impl.distinct.matches[0] run function six:_/impl/set/distinct/matches/each