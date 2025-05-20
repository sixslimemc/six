# IMPL > six : vector/cast
# main

data modify storage six:in cast.xrot set from storage six:in cast.rotation[0]
data modify storage six:in cast.yrot set from storage six:in cast.rotation[1]

execute summon marker run function six:_/impl/vector/cast/proxy