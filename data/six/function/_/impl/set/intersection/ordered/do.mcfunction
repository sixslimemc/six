#> six:_/impl/set/intersection/ordered/do
#--------------------
# ../main
#--------------------

# <ordered> == true, <by> specified branch :

# {..b_buffer}
execute store result storage six:in initialize.length int 1 if data storage six:in intersection.b[]
function six:list/initialize
data modify storage six:_ v.intersection.b_buffer set from storage six:out initialize.result

# resolve {..b_compgen} lambda:
data merge storage lambda:in {resolve:{direct:{in:'six:in intersection.b[0]', out:'six:_ v.intersection.b_comp[-1].compare'}}}
data modify storage lambda:in resolve.lambda set from storage six:in intersection.by
function lambda:1/resolve
data modify storage six:_ v.intersection.b_compgen set from storage lambda:out resolve.result

# generate {..b_comp}
scoreboard players set *intersection.b_index _six 0
execute if data storage six:in intersection.b[0] run function six:_/impl/set/intersection/ordered/gen_b_comp
scoreboard players reset *intersection.b_index

# resolve {..a_comparegen} lambda:
data merge storage lambda:in {resolve:{direct:{in:'six:in intersection.a[0]', out:'six:_ v.intersection.a_compare.compare'}}}
data modify storage lambda:in resolve.lambda set from storage six:in intersection.by
function lambda:1/resolve
data modify storage six:_ v.intersection.a_comparegen set from storage lambda:out resolve.result

# each a:
execute if data storage six:in intersection.a[0] run function six:_/impl/set/intersection/ordered/each

# set {@out b} from {..b_buffer}
execute if data storage six:_ v.intersection.b_buffer[0] run function six:_/impl/set/intersection/ordered/each_b
