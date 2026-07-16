#> six:_/impl/set/difference/ordered/do
#--------------------
# ../main
#--------------------

# <ordered> == true, <by> specified branch :

# {..b_buffer}
execute store result storage six:in initialize.length int 1 if data storage six:_ eval[-1].in.b[]
function six:list/initialize
data modify storage six:_ eval[-1].v.b_buffer set from storage six:out initialize.result

# generate {..b_comp}
data modify storage six:_ eval[-1].v.b_index set value 0
execute if data storage six:_ eval[-1].in.b[0] run function six:_/impl/set/difference/ordered/gen_b_comp

# each a:
execute if data storage six:_ eval[-1].in.a[0] run function six:_/impl/set/difference/ordered/each

# set {@out b}:
execute if data storage six:_ eval[-1].v.b_comp[0] run function six:_/impl/set/difference/ordered/each_b
