#> six:_/impl/set/intersection/main
#--------------------
# -> a[]: any
# -> b[]: any
#--------------------
# <- result[]: any
#--------------------
# # TODO: description
#--------------------
# 1.
#--------------------

# TODO: make variable stack to protect from lambda interference :(

data merge storage six:out {intersection:{a:[], b:[]}}

# goto direct branch:
execute unless data storage six:in intersection.by run return run function six:_/impl/set/intersection/direct/do

# goto preserved branch:
execute if data storage six:in intersection{ordered:true} run return run function six:_/impl/set/intersection/ordered/do

# <ordered> == false, <by> specified branch :

# resolve {..b_comp} lambda:
data merge storage lambda:in {resolve:{direct:{in:'six:in intersection.b[-1]', out:'six:_ v.intersection.b_comp[-1].compare'}}}
data modify storage lambda:in resolve.lambda set from storage six:in intersection.by
function lambda:a/resolve
data modify storage six:_ v.intersection.b_compgen set from storage lambda:out resolve.result

# generate {..b_comp}
execute if data storage six:in intersection.b[0] run function six:_/impl/set/intersection/gen_b_comp

# resolve {..a_compare} lambda:
data merge storage lambda:in {resolve:{direct:{in:'six:in intersection.a[-1]', out:'six:_ v.intersection.a_compare.compare'}}}
data modify storage lambda:in resolve.lambda set from storage six:in intersection.by
function lambda:a/resolve
data modify storage six:_ v.intersection.a_comparegen set from storage lambda:out resolve.result

# each a:
execute if data storage six:in intersection.a[0] run function six:_/impl/set/intersection/each