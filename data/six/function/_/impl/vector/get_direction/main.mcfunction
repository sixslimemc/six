# IMPL > six : vector/get_direction
# main

data modify storage six:_ v.get_direction.x set from storage six:in get_direction.vector[0]
data modify storage six:_ v.get_direction.y set from storage six:in get_direction.vector[1]
data modify storage six:_ v.get_direction.z set from storage six:in get_direction.vector[2]

execute summon marker run function six:_/impl/vector/get_direction/proxy