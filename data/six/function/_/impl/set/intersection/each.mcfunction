#> six:_/impl/set/intersection/each
#--------------------
# ./main
#--------------------

# gen {..a_compare}:
function lambda:-/1/execute with storage six:_ v.intersection.a_comparegen

# find matches:
function six:_/impl/set/intersection/get_matches with storage six:_ v.intersection

# ensure equality:
execute if data storage six:_ v.intersection.matches[0] run function six:_/impl/set/intersection/each_match

# add to out if equal found:
execute if score *intersection.equal _six matches 1 run data modify storage six:out intersection.a append from storage six:in intersection.a[-1]
execute if score *intersection.equal _six matches 1 run data modify storage six:out intersection.b append from storage six:_ v.intersection.matches[-1].value

scoreboard players reset *intersection.equal _six

data remove storage six:in intersection.a[-1]
execute if data storage six:in intersection.a[0] run function six:_/impl/set/intersection/each