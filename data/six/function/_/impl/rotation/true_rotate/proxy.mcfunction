# IMPL > six : rotation/true_rotate
# proxy
#--------------------
# ./main AS [marker]
#--------------------

$execute rotated $(xfrom) $(yfrom) run tp @s ~ ~ ~ facing ^$(x) ^$(y) ^$(z)
data modify storage six:out true_rotate.result set from entity @s Rotation
kill @s

