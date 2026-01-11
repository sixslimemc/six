#> six:_/impl/set/intersection/direct/do
#--------------------
# ../main
#--------------------


# goto preserved branch:
execute if data storage six:in intersection{ordered:true} run return run function six:_/impl/set/intersection/direct/ordered/do
# <ordered> == false, <by> unspecified branch :
# generate {..b_comp}:
execute if data storage six:in intersection.b[0] run function six:_/impl/set/intersection/direct/gen_b_comp

# each a:
execute if data storage six:in intersection.a[0] run function six:_/impl/set/intersection/direct/each

# mirror {@out b}:
data modify storage six:out intersection.b set from storage six:out intersection.a