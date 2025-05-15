# IMPL > six : rotation/true_rotate
# main

data modify storage six:in toward.rotation set from storage six:in true_rotate.rotation
data merge storage six:in {toward:{magnitude:1}}
function six:vector/toward

data modify storage six:_ v.true_rotate.x set from storage six:out toward.result[0]
data modify storage six:_ v.true_rotate.y set from storage six:out toward.result[1]
data modify storage six:_ v.true_rotate.z set from storage six:out toward.result[2]

data modify storage six:_ v.true_rotate.xfrom set from storage six:in true_rotate.from[0]
data modify storage six:_ v.true_rotate.yfrom set from storage six:in true_rotate.from[1]

execute summon marker run function six:_/impl/rotation/true_rotate/proxy with storage six:_ v.true_rotate