# IMPL > six : set/distinct
# gen_entries/each
#--------------------
# ../main
#--------------------

data modify storage six:_ eval[-1].v.entries append value {}
data modify storage six:_ eval[-1].v.entries[-1].value set from storage six:_ eval[-1].in.items[-1]

execute store success score *x _six if data storage six:_ eval[-1].in.by
execute if score *x _six matches 0 run data modify storage six:_ eval[-1].v.entries[-1].equality_key set from storage six:_ eval[-1].v.entries[-1].value
execute if score *x _six matches 1 run function six:_/impl/set/distinct/gen_entries/lambda with storage six:_ eval[-1].in

data remove storage six:_ eval[-1].in.items[-1]
execute if data storage six:_ eval[-1].in.items[0] run function six:_/impl/set/distinct/gen_entries/each