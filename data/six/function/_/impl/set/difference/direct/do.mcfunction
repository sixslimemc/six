#> six:_/impl/set/difference/direct/do
#--------------------
# ../main
#--------------------


# goto preserved branch:
execute if data storage six:in difference{ordered:true} run return run function six:_/impl/set/difference/direct/ordered/do
# <ordered> == false, <by> unspecified branch :
# generate {..b_comp}:
execute if data storage six:in difference.b[0] run function six:_/impl/set/difference/direct/gen_b_comp

# each a:
execute if data storage six:in difference.a[0] run function six:_/impl/set/difference/direct/each

# mirror {@out b}:
data modify storage six:out difference.b set from storage six:out difference.a