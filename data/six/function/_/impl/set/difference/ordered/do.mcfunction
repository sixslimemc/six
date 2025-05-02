#> six:_/impl/set/difference/ordered/do
#--------------------
# ../main
#--------------------

# <ordered> == true, <by> specified branch :

# {..b_buffer}
execute store result storage six:in initialize.length int 1 if data storage six:in difference.b[]
function six:list/initialize
data modify storage six:_ v.difference.b_buffer set from storage six:out initialize.result

# resolve {..b_compgen} lambda:
data merge storage lambda:in {resolve:{direct:{in:'six:in difference.b[0]', out:'six:_ v.difference.b_comp[-1].compare'}}}
data modify storage lambda:in resolve.lambda set from storage six:in difference.by
function lambda:1/resolve
data modify storage six:_ v.difference.b_compgen set from storage lambda:out resolve.result

# generate {..b_comp}
scoreboard players set *difference.b_index _six 0
execute if data storage six:in difference.b[0] run function six:_/impl/set/difference/ordered/gen_b_comp
scoreboard players reset *difference.b_index

# resolve {..a_comparegen} lambda:
data merge storage lambda:in {resolve:{direct:{in:'six:in difference.a[0]', out:'six:_ v.difference.a_compare.compare'}}}
data modify storage lambda:in resolve.lambda set from storage six:in difference.by
function lambda:1/resolve
data modify storage six:_ v.difference.a_comparegen set from storage lambda:out resolve.result

# each a:
execute if data storage six:in difference.a[0] run function six:_/impl/set/difference/ordered/each

# set {@out b}:
execute if data storage six:_ v.difference.b_comp[0] run function six:_/impl/set/difference/ordered/each_b
