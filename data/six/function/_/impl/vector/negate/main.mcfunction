# IMPL > six : vector/negate
# main

data modify storage six:_ v.negate.x set from storage six:in negate.vector[0]
data modify storage six:_ v.negate.y set from storage six:in negate.vector[1]
data modify storage six:_ v.negate.z set from storage six:in negate.vector[2]

execute summon marker run function six:_/impl/vector/negate/proxy