# IMPL > six : vector/direction_of
# proxy
#--------------------
# ./main AS [marker]
#--------------------

$execute facing ~$(x) ~$(y) ~$(z) run tp @s ~ ~ ~ ~ ~
execute at @s run data modify storage six:out direction_of.result set from entity @s Rotation
kill @s