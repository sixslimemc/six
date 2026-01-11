#> six:_/impl/set/intersection/direct/gen_b_comp
#--------------------
# ./do
#--------------------

data modify storage six:_ v.intersection.b_comp append value {}
data modify storage six:_ v.intersection.b_comp[-1].value set from storage six:in intersection.b[-1]

data remove storage six:in intersection.b[-1]
execute if data storage six:in intersection.b[0] run function six:_/impl/set/intersection/direct/gen_b_comp