# IMPL > six:_/impl/set/difference
# main

# goto direct branch:
execute unless data storage six:_ eval[-1].in.by run return run function six:_/impl/set/difference/direct/do

# goto preserved branch:
execute if data storage six:_ eval[-1].in{ordered:true} run return run function six:_/impl/set/difference/ordered/do

# <ordered> == false, <by> specified branch :

# resolve {..b_comp} lambda:
data merge storage lambda:in {resolve:{direct:{in:'six:_ eval[-1].in.b[-1]', out:'six:_ eval[-1].v.b_comp[-1].compare'}}}
data modify storage lambda:in resolve.lambda set from storage six:_ eval[-1].in.by
function lambda:a/resolve
data modify storage six:_ eval[-1].v.b_compgen set from storage lambda:out resolve.result

# generate {..b_comp}
scoreboard players set *difference.b_index _six 0
execute if data storage six:_ eval[-1].in.b[0] run function six:_/impl/set/difference/gen_b_comp
scoreboard players reset *difference.b_index

# resolve {..a_compare} lambda:
data merge storage lambda:in {resolve:{direct:{in:'six:_ eval[-1].in.a[-1]', out:'six:_ eval[-1].v.a_compare.compare'}}}
data modify storage lambda:in resolve.lambda set from storage six:_ eval[-1].in.by
function lambda:a/resolve
data modify storage six:_ eval[-1].v.a_comparegen set from storage lambda:out resolve.result

# each a:
execute if data storage six:_ eval[-1].in.a[0] run function six:_/impl/set/difference/each

# gen {@out b}
execute if data storage six:_ eval[-1].v.b_comp[0] run function six:_/impl/set/difference/each_b