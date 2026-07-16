#> six:_/impl/set/compare/direct/ordered/gen_b_comp
#--------------------
# ./do
#--------------------

data modify storage six:_ eval[-1].v.b_comp append value {matched:false}
data modify storage six:_ eval[-1].v.b_comp[-1].value set from storage six:_ eval[-1].in.b[0]
execute store result storage six:_ eval[-1].v.b_comp[-1].index int 1 run scoreboard players get *compare.b_index _six

scoreboard players add *compare.b_index _six 1
data remove storage six:_ eval[-1].in.b[0]
execute if data storage six:_ eval[-1].in.b[0] run function six:_/impl/set/compare/direct/ordered/gen_b_comp