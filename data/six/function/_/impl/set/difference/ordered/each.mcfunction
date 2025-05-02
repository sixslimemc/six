#> six:_/impl/set/difference/ordered/each
#--------------------
# ./do
#--------------------

# gen {..a_compare}:
function lambda:-/1/execute with storage six:_ v.difference.a_comparegen

# find matches:
function six:_/impl/set/difference/get_matches with storage six:_ v.difference

# ensure equality:
execute if data storage six:_ v.difference.matches[0] run function six:_/impl/set/difference/each_match

# add to out if equal found:
execute unless score *difference.equal _six matches 1 run data modify storage six:out difference.a append from storage six:in difference.a[0]
execute if score *difference.equal _six matches 1 run function six:_/impl/set/difference/remove_b with storage six:_ v.difference.matches[0]

scoreboard players reset *difference.equal _six

data remove storage six:in difference.a[0]
execute if data storage six:in difference.a[0] run function six:_/impl/set/difference/ordered/each