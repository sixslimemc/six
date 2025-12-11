#> six:_/impl/set/difference/direct/ordered/gen_b_comp
#--------------------
# ./do
#--------------------

data modify storage six:_ v.difference.b_comp append value {}
data modify storage six:_ v.difference.b_comp[-1].value set from storage six:in difference.b[0]
execute store result storage six:_ v.difference.b_comp[-1].index int 1 run scoreboard players get *difference.b_index _six

scoreboard players add *difference.b_index _six 1
data remove storage six:in difference.b[0]
execute if data storage six:in difference.b[0] run function six:_/impl/set/difference/direct/ordered/gen_b_comp