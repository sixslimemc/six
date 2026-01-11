# IMPL > six : vector/true_rotate
# main

data modify storage six:in cast.rotation set from storage six:in true_rotate.rotate
data merge storage six:in {cast:{magnitude:1}}
function six:vector/cast

data modify storage six:_ v.true_rotate.x set from storage six:out cast.result[0]
data modify storage six:_ v.true_rotate.y set from storage six:out cast.result[1]
data modify storage six:_ v.true_rotate.z set from storage six:out cast.result[2]

data modify storage six:_ v.true_rotate.xfrom set from storage six:in true_rotate.origin[0]
data modify storage six:_ v.true_rotate.yfrom set from storage six:in true_rotate.origin[1]

execute summon marker run function six:_/impl/vector/true_rotate/proxy