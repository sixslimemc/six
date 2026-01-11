#> six:_/impl/set/intersection/direct/ordered/each
#--------------------
# ./do
#--------------------

data modify storage six:_ v.intersection.a_item.value set from storage six:in intersection.a[0]

# find matches:
function six:_/impl/set/intersection/direct/get_matches with storage six:_ v.intersection

# ensure equality:
execute if data storage six:_ v.intersection.matches[0] run function six:_/impl/set/intersection/direct/ordered/each_match

# add to out if equal found:
execute if score *intersection.equal _six matches 1 run data modify storage six:out intersection.a append from storage six:in intersection.a[0]
execute if score *intersection.equal _six matches 1 run function six:_/impl/set/intersection/ordered/insert_b_val with storage six:_ v.intersection.matches[0]

scoreboard players reset *intersection.equal _six

data remove storage six:in intersection.a[0]
execute if data storage six:in intersection.a[0] run function six:_/impl/set/intersection/direct/ordered/each