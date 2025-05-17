# IMPL > six : vector/sum
# proxy
#--------------------
# ./main AS [marker]
#--------------------

data modify storage six:_ v.sum.x set from storage six:in sum.vectors[-1][0]
data modify storage six:_ v.sum.y set from storage six:in sum.vectors[-1][1]
data modify storage six:_ v.sum.z set from storage six:in sum.vectors[-1][2]

function six:_/impl/vector/sum/tp with storage six:_ v.sum

data remove storage six:in sum.vectors[-1]
execute if data storage six:in sum.vectors[0] run function six:_/impl/vector/sum/each