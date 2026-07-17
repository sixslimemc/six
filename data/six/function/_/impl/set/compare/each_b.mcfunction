#> six:_/impl/set/compare/each_b
#--------------------
# ./main
# ./direct/do
#--------------------

execute store result score *x _six run data get storage six:_ eval[-1].v.b_comp[-1].matched
execute store result score *y _six run data get storage six:_ eval[-1].v.b_comp[-1].exclude
execute if score *y _six matches 0 if score *x _six matches 1 run data modify storage six:_ eval[-1].out.intersection.b append from storage six:_ eval[-1].v.b_comp[-1].value
execute if score *y _six matches 0 if score *x _six matches 0 run data modify storage six:_ eval[-1].out.difference.b append from storage six:_ eval[-1].v.b_comp[-1].value

data remove storage six:_ eval[-1].v.b_comp[-1]
execute if data storage six:_ eval[-1].v.b_comp[0] run function six:_/impl/set/compare/each_b