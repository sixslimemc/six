#> six:_/impl/set/intersection/ordered/gen_b_comp
#--------------------
# ./do
#--------------------

data modify storage six:_ v.intersection.b_comp append value {}
data modify storage six:_ v.intersection.b_comp[-1].value set from storage six:in intersection.b[0]
execute store result storage six:_ v.intersection.b_comp[-1].index int 1 run scoreboard players get *intersection.b_index _six
function lambda:-/1/execute with storage six:_ v.intersection.b_compgen

scoreboard players add *intersection.b_index _six 1
data remove storage six:in intersection.b[0]
execute if data storage six:in intersection.b[0] run function six:_/impl/set/intersection/ordered/gen_b_comp