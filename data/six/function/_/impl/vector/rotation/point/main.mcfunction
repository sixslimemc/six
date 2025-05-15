# IMPL > six : vector/rotation/point
# main

data modify storage six:in point.xrot set from storage six:in point.vector[0]
data modify storage six:in point.yrot set from storage six:in point.vector[1]

execute summon marker run function six:_/impl/vector/rotation/point/proxy with storage six:in point