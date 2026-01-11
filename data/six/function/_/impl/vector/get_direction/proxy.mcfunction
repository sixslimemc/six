# IMPL > six : vector/get_direction
# proxy
#--------------------
# ./main AS [marker]
#--------------------

function six:_/impl/vector/get_direction/tp with storage six:_ v.get_direction
execute at @s run data modify storage six:out get_direction.result set from entity @s Rotation
kill @s