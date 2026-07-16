# IMPL > six:_/impl/set/difference
# main

# goto direct branch:
execute unless data storage six:_ eval[-1].in.by run return run function six:_/impl/set/difference/direct/do

# goto preserved branch:
execute if data storage six:_ eval[-1].in{ordered:true} run return run function six:_/impl/set/difference/ordered/do

# <ordered> == false, <by> specified branch :

# generate {..b_comp}
data modify storage six:_ eval[-1].v.b_index set value 0
execute if data storage six:_ eval[-1].in.b[0] run function six:_/impl/set/difference/gen_b_comp

# each a:
execute if data storage six:_ eval[-1].in.a[0] run function six:_/impl/set/difference/each

# gen {@out b}
execute if data storage six:_ eval[-1].v.b_comp[0] run function six:_/impl/set/difference/each_b