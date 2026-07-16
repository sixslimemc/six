#> six:_/impl/set/compare/gen_b_comp
#--------------------
# ./main
#--------------------

# lambda:
data modify storage six:api compare append value {value:{}}
data modify storage six:api compare[-1].value set from storage six:_ eval[-1].in.b[-1]
function six:_/impl/set/compare/gen_b_comp.1 with storage six:_ eval[-1].in
data remove storage six:api compare[-1]

execute store result score *x _six run data get storage six:_ eval[-1].v.b_index
scoreboard players add *x _six 1
execute store result storage six:_ eval[-1].v.b_index int 1 run scoreboard players get *x _six

data remove storage six:_ eval[-1].in.b[-1]
execute if data storage six:_ eval[-1].in.b[0] run function six:_/impl/set/compare/gen_b_comp