#> six:_/impl/set/difference/direct/do
#--------------------
# ../main
#--------------------


# goto preserved branch:
execute if data storage six:_ eval[-1].in{ordered:true} run return run function six:_/impl/set/difference/direct/ordered/do
# <ordered> == false, <by> unspecified branch :


# generate {..b_comp}:
scoreboard players set *difference.b_index _six 0
execute if data storage six:_ eval[-1].in.b[0] run function six:_/impl/set/difference/direct/gen_b_comp
scoreboard players reset *difference.b_index

# each a:
execute if data storage six:_ eval[-1].in.a[0] run function six:_/impl/set/difference/direct/each

# set {@out b}:
execute if data storage six:_ eval[-1].v.b_comp[0] run function six:_/impl/set/difference/each_b