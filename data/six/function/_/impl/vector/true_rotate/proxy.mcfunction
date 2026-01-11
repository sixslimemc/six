# IMPL > six : vector/true_rotate
# proxy
#--------------------
# ./main AS [marker]
#--------------------

function six:_/impl/vector/true_rotate/tp with storage six:_ v.true_rotate
data modify storage six:out true_rotate.result set from entity @s Rotation
kill @s

