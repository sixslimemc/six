# IMPL > six : set/distinct
# entries/each
#--------------------
# ../main
#--------------------

data modify storage six:_ eval[-1].v.this_entry set from storage six:_ eval[-1].v.entries[-1]

# get partial equalities:
data modify storage six:_ eval[-1].v.matches set value []
data modify storage six:_ x.macro set value {match:{}}
data modify storage six:_ x.macro.match.equality_key set from storage six:_ eval[-1].v.entries[-1].equality_key
function six:_/impl/set/distinct/entries/get_matches with storage six:_ x.macro

# check exact equality:
scoreboard players set *distinct.found_equal _six 0
execute if data storage six:_ eval[-1].v.matches[0] run function six:_/impl/set/distinct/entries/matches/check

execute if score *distinct.found_equal _six matches 0 run function six:_/impl/set/distinct/entries/add_out

data remove storage six:_ eval[-1].v.entries[-1]
execute if data storage six:_ eval[-1].v.entries[0] run function six:_/impl/set/distinct/entries/each