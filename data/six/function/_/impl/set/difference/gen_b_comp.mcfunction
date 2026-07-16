#> six:_/impl/set/difference/gen_b_comp
#--------------------
# ./main
#--------------------

data modify storage six:_ eval[-1].v.b_comp append value {}
data modify storage six:_ eval[-1].v.b_comp[-1].value set from storage six:_ eval[-1].in.b[-1]
execute store result storage six:_ eval[-1].v.b_comp[-1].index int 1 run scoreboard players get *difference.b_index _six
function lambda:-/1/execute with storage six:_ eval[-1].v.b_compgen

scoreboard players add *difference.b_index _six 1
data remove storage six:_ eval[-1].in.b[-1]
execute if data storage six:_ eval[-1].in.b[0] run function six:_/impl/set/difference/gen_b_comp