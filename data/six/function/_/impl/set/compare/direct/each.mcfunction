#> six:_/impl/set/compare/direct/each
#--------------------
# ./do
#--------------------

data modify storage six:_ eval[-1].v.a_item.value set from storage six:_ eval[-1].in.a[-1]

# find matches:
function six:_/impl/set/compare/direct/get_matches with storage six:_ eval[-1].v

# ensure equality:
execute if data storage six:_ eval[-1].v.matches[0] run function six:_/impl/set/compare/each_match

# add to out if equal found:
execute unless score *compare.equal _six matches 1 run data modify storage six:_ eval[-1].out.a append from storage six:_ eval[-1].v.a_item.value
execute if score *compare.equal _six matches 1 run function six:_/impl/set/compare/mark_b with storage six:_ eval[-1].v.matches[-1]

scoreboard players reset *compare.equal _six

data remove storage six:_ eval[-1].in.a[-1]
execute if data storage six:_ eval[-1].in.a[0] run function six:_/impl/set/compare/direct/each