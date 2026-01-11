# IMPL > six : vector/negate
# tp
#--------------------
# ./proxy AS [marker]
#--------------------

$execute positioned 0 0 0 align xyz rotated 180 0 positioned ^$(x) ^ ^$(z) run tp @s ~ ~ ~
$execute at @s rotated 0 90 positioned ^ ^ ^$(y) run tp @s ~ ~ ~