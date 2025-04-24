#> six:_/impl/set/intersection/main
#--------------------
# -> a[]: any
# -> b[]: any
#--------------------
# <- result[]: any
#--------------------
# # TODO: description
#--------------------
# 0..: count of items in >result<
#--------------------

scoreboard players set *intersection.count _six 0

# goto preserved branch:
execute if data storage six:in intersection{preserve_order:true} run return run function six:_/impl/set/intersection/ordered/do

# goto direct branch:
execute unless data storage six:in intersection.by run return run function six:_/impl/set/intersection/direct/do

# <preserve_order> == false, <by> specified branch :

# resolve lambda:
data merge storage lambda:in {resolve:{direct:{in:'six:in intersection.b[-1]', out:'six:_ impl.intersection.b_comp[-1].compare'}}}
data modify storage lambda:in resolve.lambda set from storage six:in intersection.by
function lambda:1/resolve
data modify storage six:_ impl.intersection.b_compgen set from storage lambda:out resolve.result

# generate {..b_comp}
execute if data storage six:in intersection.b[0] run function six:_/impl/set/intersection/gen_b_comp
