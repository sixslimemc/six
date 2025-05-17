# IMPL > six : decimal/min
# main AS [marker]

$execute positioned 0 $(a) 0 run tp @s ~ ~ ~ facing 0 $(b) 0
execute store result score *x _six run data get entity @s Rotation[1]
kill @s

execute if score *x _six matches -90 run return 1
execute if score *x _six matches 90 run return -1
return 0

