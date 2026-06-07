# IMPL > six : vector/negate
# main

data modify storage six:_ v.negate.x set from storage six:in negate.vector[0]
data modify storage six:_ v.negate.y set from storage six:in negate.vector[1]
data modify storage six:_ v.negate.z set from storage six:in negate.vector[2]

execute if score *statics _six matches 1 as 358a978f-e286-48d3-bcde-81106c020d2f at @s run function six:_/impl/vector/negate/proxy_static
execute unless score *statics _six matches 1 summon marker run function six:_/impl/vector/negate/proxy