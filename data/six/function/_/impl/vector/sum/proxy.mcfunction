# IMPL > six : vector/sum
# proxy
#--------------------
# ./main AS [marker]
#--------------------

data modify entity @s Pos set from storage six:in sum.vectors[-1]
data remove storage six:in sum.vectors[-1]

execute at @s if data storage six:in sum.vectors[0] run function six:_/impl/vector/sum/each

data modify storage six:out sum.result set from entity @s Pos
kill @s