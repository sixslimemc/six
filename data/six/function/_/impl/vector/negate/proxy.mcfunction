# IMPL > six : vector/negate
# proxy
#--------------------
# ./main AS [marker]
#--------------------

$execute positioned 0 0 0 align xyz rotated 180 0 run tp @s ^$(x) ^ ^$(z)
$execute at @s rotated 0 90 run tp ^ ^ ^$(y)
execute at @s run data modify storage six:out negate.result set from entity @s Pos
kill @s