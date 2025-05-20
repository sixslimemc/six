# IMPL > six : vector/magnitude
# proxy
#--------------------
# ./main AS [item_display]
#--------------------

function six:_/impl/vector/magnitude/set with storage six:_ v.magnitude
data modify storage six:out magnitude.result set from entity @s transformation.scale[0]
kill @s