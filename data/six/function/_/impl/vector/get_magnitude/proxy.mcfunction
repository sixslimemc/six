# IMPL > six : vector/get_magnitude
# proxy
#--------------------
# ./main AS [item_display]
#--------------------

function six:_/impl/vector/get_magnitude/set with storage six:_ v.get_magnitude
data modify storage six:out get_magnitude.result set from entity @s transformation.scale[0]
kill @s