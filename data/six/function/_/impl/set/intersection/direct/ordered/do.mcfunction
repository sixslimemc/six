#> six:_/impl/set/intersection/direct/ordered/do
#--------------------
# ../do
#--------------------

# <ordered> == true, <by> unspecified branch :

# generate {..b_comp}:
scoreboard players set *intersection.b_index _six 0
execute if data storage six:in intersection.b[0] run function six:_/impl/set/intersection/direct/ordered/gen_b_comp
scoreboard players reset *intersection.b_index

# each a:
execute if data storage six:in intersection.a[0] run function six:_/impl/set/intersection/direct/ordered/each

# set {@out b}:
execute if data storage six:_ v.intersection.b_comp[0] run function six:_/impl/set/intersection/ordered/each_b
