# IMPL > six : vector/sum
# main

execute unless data storage six:in sum.vectors[0] run return 0

execute if score *statics _six matches 1 as 358a978f-e286-48d3-bcde-81106c020d2f at @s run function six:_/impl/vector/sum/proxy_static
execute unless score *statics _six matches 1 summon marker run function six:_/impl/vector/sum/proxy

return 1