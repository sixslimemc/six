#> six:_/impl/set/intersection/ordered/do
#--------------------
# ./main
#--------------------

# <ordered> == true, <by> specified branch :

# resolve {..b_comp} lambda:
data merge storage lambda:in {resolve:{direct:{in:'six:in intersection.b[-1]', out:'six:_ v.intersection.b_comp[-1].compare'}}}
data modify storage lambda:in resolve.lambda set from storage six:in intersection.by
function lambda:1/resolve
data modify storage six:_ v.intersection.b_compgen set from storage lambda:out resolve.result

# generate {..b_comp}
scoreboard players set *intersection.b_index _six 0
execute if data storage six:in intersection.b[0] run function six:_/impl/set/intersection/gen_b_comp
scoreboard players reset *intersection.b_index

# resolve {..a_compare} lambda:
data merge storage lambda:in {resolve:{direct:{in:'six:in intersection.a[0]', out:'six:_ v.intersection.a_compare'}}}
data modify storage lambda:in resolve.lambda set from storage six:in intersection.by
function lambda:1/resolve
data modify storage six:_ v.intersection.a_comparegen set from storage lambda:out resolve.result

# each a:
execute if data storage six:in intersection.a[0] run function six:_/impl/set/intersection/each