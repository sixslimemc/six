# IMPL > six : set/distinct
# main

# ~ double backward iteration so order automatically is preserverd

# gen {..entries}:
data modify storage six:_ eval[-1].v.entries set value []
execute if data storage six:_ eval[-1].in.items[0] run function six:_/impl/set/distinct/gen_entries/each

# iterate {..entries}:
data modify storage six:_ eval[-1].v.seen set value []
execute if data storage six:_ eval[-1].v.entries[0] run function six:_/impl/set/distinct/entries/each

return 1