# IMPL > six : vector/cast
# proxy
#--------------------
# ./main AS [marker]
#--------------------

function six:_/impl/vector/cast/tp with storage six:in cast
data modify storage six:out cast.result set from entity @s Pos
kill @s

