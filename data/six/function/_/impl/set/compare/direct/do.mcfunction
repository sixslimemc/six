#> six:_/impl/set/compare/direct/do
#--------------------
# ../main
#--------------------


# goto preserved branch:
execute if data storage six:_ eval[-1].in{ordered:true} run return run function six:_/impl/set/compare/direct/ordered/do
# <ordered> == false, <by> unspecified branch :


# generate {..b_comp}:
scoreboard players set *compare.b_index _six 0
execute if data storage six:_ eval[-1].in.b[0] run function six:_/impl/set/compare/direct/gen_b_comp
scoreboard players reset *compare.b_index

# each a:
execute if data storage six:_ eval[-1].in.a[0] run function six:_/impl/set/compare/direct/each

# set {@out b}:
execute if data storage six:_ eval[-1].v.b_comp[0] run function six:_/impl/set/compare/each_b