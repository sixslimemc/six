#> six:_/impl/set/difference/each
#--------------------
# ./main
#--------------------

# lambda:
data modify storage six:api difference append value {value:{}}
data modify storage six:api difference[-1].value set from storage six:_ eval[-1].in.a[-1]
function six:_/impl/set/difference/each.1 with storage six:_ eval[-1].in
data remove storage six:api difference[-1]

# find matches:
function six:_/impl/set/difference/get_matches with storage six:_ eval[-1].v

# ensure equality:
execute if data storage six:_ eval[-1].v.matches[0] run function six:_/impl/set/difference/each_match

# add to out if equal found:
execute unless score *difference.equal _six matches 1 run data modify storage six:_ eval[-1].out.a append from storage six:_ eval[-1].in.a[-1]
execute if score *difference.equal _six matches 1 run function six:_/impl/set/difference/remove_b with storage six:_ eval[-1].v.matches[-1]

scoreboard players reset *difference.equal _six

data remove storage six:_ eval[-1].in.a[-1]
execute if data storage six:_ eval[-1].in.a[0] run function six:_/impl/set/difference/each