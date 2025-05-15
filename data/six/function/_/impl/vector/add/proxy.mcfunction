# IMPL > six : vector/add
# proxy
#--------------------
# ./main AS [marker]
#--------------------

$execute positioned $(xa) $(ya) $(za) run tp @s ~$(xb) ~$(yb) ~$(yz)
execute at @s run data modify storage six:out add.result set from entity @s Pos
kill @s