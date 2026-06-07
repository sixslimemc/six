# IMPL > six : vector/cast
# main

data modify storage six:_ v.cast.xrot set from storage six:in cast.rotation[0]
data modify storage six:_ v.cast.yrot set from storage six:in cast.rotation[1]

execute if score *statics _six matches 1 as 358a978f-e286-48d3-bcde-81106c020d2f at @s run function six:_/impl/vector/cast/proxy
execute unless score *statics _six matches 1 summon marker run function six:_/impl/vector/cast/proxy