#> six:_/impl/set/difference/ordered/try_match
#--------------------
# ./each
#--------------------

# find matches:
data remove storage six:_ eval[-1].v.matches
$data modify storage six:_ eval[-1].v.matches append from storage six:_ eval[-1].v.b_comp[$(a_compare)]

# ensure equality:
execute if data storage six:_ eval[-1].v.matches[0] run function six:_/impl/set/difference/ordered/each_match

# add to out if equal found:
execute unless score *difference.equal _six matches 1 run data modify storage six:_ eval[-1].out.a append from storage six:_ eval[-1].in.a[0]
execute if score *difference.equal _six matches 1 run function six:_/impl/set/difference/remove_b with storage six:_ eval[-1].v.matches[0]

scoreboard players reset *difference.equal _six