# IMPL > six : vector/toward
# proxy
#--------------------
# ./main AS [marker]
#--------------------

$execute positioned 0 0 0 align xyz rotated $(xrot) $(yrot) run tp @s ^ ^ ^$(magnitude)
execute at @s run data modify storage six:out toward.result set from entity @s Pos
kill @s

