#> six:_/impl/set/intersection/direct/ordered/do
#--------------------
# ../do
#--------------------

# <ordered> == true, <by> unspecified branch :

# {..b_buffer}
execute store result storage six:in initialize.length int 1 if data storage six:in intersection.b[]
function six:list/initialize
data modify storage six:_ v.intersection.b_buffer set from storage six:out initialize.result


# generate {..b_comp}
scoreboard players set *intersection.b_index _six 0
execute if data storage six:in intersection.b[0] run function six:_/impl/set/intersection/direct/ordered/gen_b_comp
scoreboard players reset *intersection.b_index

# each a:
execute if data storage six:in intersection.a[0] run function six:_/impl/set/intersection/direct/ordered/each

# set {@out b} from {..b_buffer}
execute if data storage six:_ v.intersection.b_buffer[0] run function six:_/impl/set/intersection/ordered/each_b
