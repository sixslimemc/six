# IMPL > six : decimal/sign
# main AS [marker]

data modify entity @s Pos[1] set from storage six:in sign.value
tp @s ~ ~ ~ facing ~ 0.0 ~

execute store result score *x _six run data get entity @s Rotation[1]
kill @s

execute if score *x _six matches 90 run return 1
execute if score *x _six matches -90 run return -1
return 0