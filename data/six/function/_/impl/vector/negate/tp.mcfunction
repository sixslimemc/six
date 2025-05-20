# IMPL > six : vector/negate
# tp
#--------------------
# ./proxy AS [marker]
#--------------------

$execute positioned 0 0 0 align xyz rotated 180 0 run tp @s ^$(x) ^ ^$(z)
$execute at @s rotated 0 90 run tp ^ ^ ^$(y)