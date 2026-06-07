# IMPL > six : vector/get_magnitude
# main

data modify storage six:_ v.get_magnitude.x set from storage six:in get_magnitude.vector[0]
data modify storage six:_ v.get_magnitude.y set from storage six:in get_magnitude.vector[1]
data modify storage six:_ v.get_magnitude.z set from storage six:in get_magnitude.vector[2]

execute if score *statics _six matches 1 as d583f079-1442-462d-978e-08d4f9783c40 run function six:_/impl/vector/get_magnitude/proxy_static
execute unless score *statics _six matches 1 summon item_display run function six:_/impl/vector/get_magnitude/proxy