# IMPL > six : vector/get_magnitude
# main

data modify storage six:_ v.get_magnitude.x set from storage six:in get_magnitude.vector[0]
data modify storage six:_ v.get_magnitude.y set from storage six:in get_magnitude.vector[1]
data modify storage six:_ v.get_magnitude.z set from storage six:in get_magnitude.vector[2]

execute summon item_display run function six:_/impl/vector/get_magnitude/proxy