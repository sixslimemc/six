# IMPL > six : rotation/true_rotate
# main

data modify storage six:in cast.rotation set from storage six:in true_rotate.rotation
data merge storage six:in {cast:{magnitude:1}}
function six:vector/cast

data modify storage six:_ v.true_rotate.x set from storage six:out cast.result[0]
data modify storage six:_ v.true_rotate.y set from storage six:out cast.result[1]
data modify storage six:_ v.true_rotate.z set from storage six:out cast.result[2]

data modify storage six:_ v.true_rotate.xfrom set from storage six:in true_rotate.from[0]
data modify storage six:_ v.true_rotate.yfrom set from storage six:in true_rotate.from[1]

execute summon marker run function six:_/impl/rotation/true_rotate/proxy