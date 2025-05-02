#> six:_/impl/set/difference/direct/gen_b_comp
#--------------------
# ./do
#--------------------

data modify storage six:_ v.difference.b_comp append value {}
data modify storage six:_ v.difference.b_comp[-1].value set from storage six:in difference.b[-1]

data remove storage six:in difference.b[-1]
execute if data storage six:in difference.b[0] run function six:_/impl/set/difference/direct/gen_b_comp