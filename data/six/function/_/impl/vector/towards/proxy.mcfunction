# IMPL > six : vector/towards
# proxy
#--------------------
# ./main AS [marker]
#--------------------

$execute positioned 0 0 0 align xyz rotated $(xrot) $(yrot) run tp @s ^ ^ ^$(magnitude)
data modify storage six:out towards.result set from entity @s Pos
kill @s

