# IMPL > six : vector/add
# proxy
#--------------------
# ./main AS [marker]
#--------------------

data modify entity @s Pos set from storage six:in add.a
$execute at @s run tp @s ~$(xb) ~$(yb) ~$(zb)
data modify storage six:out add.result set from entity @s Pos
kill @s