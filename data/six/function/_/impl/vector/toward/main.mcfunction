# IMPL > six : vector/toward
# main

data modify storage six:in toward.xrot set from storage six:in toward.rotation[0]
data modify storage six:in toward.yrot set from storage six:in toward.rotation[1]

execute summon marker run function six:_/impl/vector/toward/proxy with storage six:in toward