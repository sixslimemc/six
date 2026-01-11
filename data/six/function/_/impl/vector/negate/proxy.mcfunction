# IMPL > six : vector/negate
# proxy
#--------------------
# ./main AS [marker]
#--------------------

function six:_/impl/vector/negate/tp with storage six:_ v.negate
data modify storage six:out negate.result set from entity @s Pos
kill @s