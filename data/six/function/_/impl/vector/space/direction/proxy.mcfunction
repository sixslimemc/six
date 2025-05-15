# IMPL > six : vector/space/direction
# proxy
#--------------------
# ./main AS [marker]
#--------------------

$execute facing ~$(x) ~$(y) ~$(z) run tp @s ~ ~ ~ ~ ~
execute at @s run data modify storage six:out direction.result set from entity @s Rotation
kill @s