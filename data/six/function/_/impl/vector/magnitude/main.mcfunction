# IMPL > six : vector/magnitude
# main

data modify storage six:_ v.magnitude.x set from storage six:in magnitude.vector[0]
data modify storage six:_ v.magnitude.y set from storage six:in magnitude.vector[1]
data modify storage six:_ v.magnitude.z set from storage six:in magnitude.vector[2]

execute summon item_display run function six:_/impl/vector/magnitude/proxy with storage six:_ v.magnitude