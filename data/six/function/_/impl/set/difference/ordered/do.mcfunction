#> six:_/impl/set/difference/ordered/do
#--------------------
# ../main
#--------------------

# <ordered> == true, <by> specified branch :

# generate {..b_comp}
data modify storage six:_ eval[-1].v.b_index set value 0
execute if data storage six:_ eval[-1].in.b[0] run function six:_/impl/set/difference/ordered/gen_b_comp

# each a:
execute if data storage six:_ eval[-1].in.a[0] run function six:_/impl/set/difference/ordered/each

# set {@out b}:
execute if data storage six:_ eval[-1].v.b_comp[0] run function six:_/impl/set/difference/ordered/each_b
