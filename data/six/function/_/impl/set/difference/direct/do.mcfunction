#> six:_/impl/set/difference/direct/do
#--------------------
# ../main
#--------------------


# goto preserved branch:
execute if data storage six:in difference{ordered:true} run return run function six:_/impl/set/difference/direct/ordered/do
# <ordered> == false, <by> unspecified branch :


# generate {..b_comp}:
scoreboard players set *difference.b_index _six 0
execute if data storage six:in difference.b[0] run function six:_/impl/set/difference/direct/gen_b_comp
scoreboard players reset *difference.b_index

# each a:
execute if data storage six:in difference.a[0] run function six:_/impl/set/difference/direct/each

# set {@out b}:
execute if data storage six:_ v.difference.b_comp[0] run function six:_/impl/set/difference/each_b