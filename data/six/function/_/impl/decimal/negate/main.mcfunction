# IMPL > six : decimal/negate
# main
#--------------------
# ./main AS [marker]
#--------------------

$execute positioned ~ 0 ~ align y rotated 0 90 run tp ^ ^ ^$(number)
data modify storage six:out negate.result set from entity @s Pos[1]
kill @s