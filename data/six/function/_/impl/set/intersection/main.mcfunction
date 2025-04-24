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

execute if data storage six:in intersection{preserve_order:true} run return run function six:_/impl/set/intersection/ordered/main

scoreboard players set *intersection.count _six 0

data merge storage lambda:in {resolve:{direct:{in:'six:in intersection'}}}

execute if data storage six:in intersection.b[0] run function six:_/impl/set/intersection/gen_b_comp
