#> six:_/impl/set/compare/ordered/try_match
#--------------------
# ./each
#--------------------

# find matches:
data remove storage six:_ eval[-1].v.matches
$data modify storage six:_ eval[-1].v.matches append from storage six:_ eval[-1].v.b_comp[$(a_compare)]

# ensure equality:
execute if data storage six:_ eval[-1].v.matches[0] run function six:_/impl/set/compare/ordered/each_match

# add to out if equal found:
execute unless score *compare.equal _six matches 1 run data modify storage six:_ eval[-1].out.a append from storage six:_ eval[-1].in.a[0]
execute if score *compare.equal _six matches 1 run function six:_/impl/set/compare/remove_b with storage six:_ eval[-1].v.matches[0]

scoreboard players reset *compare.equal _six