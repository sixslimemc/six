# IMPL > six : vector/direction
# main

data modify storage six:_ v.direction.x set from storage six:in direction.vector[0]
data modify storage six:_ v.direction.y set from storage six:in direction.vector[1]
data modify storage six:_ v.direction.z set from storage six:in direction.vector[2]

execute summon marker run function six:_/impl/vector/direction/proxy with storage six:_ v.direction