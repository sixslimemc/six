# IMPL > six : vector/direction_of
# main

data modify storage six:_ v.direction_of.x set from storage six:in direction_of.vector[0]
data modify storage six:_ v.direction_of.y set from storage six:in direction_of.vector[1]
data modify storage six:_ v.direction_of.z set from storage six:in direction_of.vector[2]

execute summon marker run function six:_/impl/vector/direction_of/proxy with storage six:_ v.direction_of