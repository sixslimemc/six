#> six:_/impl/set/difference/direct/each
#--------------------
# ./do
#--------------------

data modify storage six:_ v.difference.a_item.value set from storage six:in difference.a[-1]

# find matches:
function six:_/impl/set/difference/direct/get_matches with storage six:_ v.difference

# ensure equality:
execute if data storage six:_ v.difference.matches[0] run function six:_/impl/set/difference/each_match

# add to out if equal found:
execute unless score *difference.equal _six matches 1 run data modify storage six:out difference.a append from storage six:_ v.difference.a_item.value
execute if score *difference.equal _six matches 1 run function six:_/impl/set/difference/remove_b with storage six:_ v.difference.matches[-1]

scoreboard players reset *difference.equal _six

data remove storage six:in difference.a[-1]
execute if data storage six:in difference.a[0] run function six:_/impl/set/difference/direct/each