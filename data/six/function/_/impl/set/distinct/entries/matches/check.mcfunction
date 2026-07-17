# IMPL > six : set/distinct
# entries/matches/check
#--------------------
# ../each
#--------------------

execute store success score *x _six run data modify storage six:_ eval[-1].v.matches[-1].equality_key set from storage six:_ eval[-1].v.this_entry.equality_key

execute if score *x _six matches 0 run return run scoreboard players set *distinct.found_equal _six 1

data remove storage six:_ eval[-1].v.matches[-1]
execute if data storage six:_ eval[-1].v.matches[0] run function six:_/impl/set/distinct/entries/matches/check