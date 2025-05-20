# IMPL > six : vector/direction
# proxy
#--------------------
# ./main AS [marker]
#--------------------

function six:_/impl/vector/direction/proxy with storage six:_ v.direction
execute at @s run data modify storage six:out direction.result set from entity @s Rotation
kill @s