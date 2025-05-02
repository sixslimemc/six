#> six:_/impl/set/difference/direct/ordered/do
#--------------------
# ../do
#--------------------

# <ordered> == true, <by> unspecified branch :

# generate {..b_comp}
scoreboard players set *difference.b_index _six 0
execute if data storage six:in difference.b[0] run function six:_/impl/set/difference/direct/ordered/gen_b_comp
scoreboard players reset *difference.b_index

# each a:
execute if data storage six:in difference.a[0] run function six:_/impl/set/difference/direct/ordered/each

# set {@out b}:
execute if data storage six:_ v.difference.b_comp[0] run function six:_/impl/set/difference/ordered/each_b
