# IMPL > six : decimal/sum
# main
kill @s

execute unless data storage six:in sum.values[0] run return 0

data modify entity @s Pos[1] set from storage six:in sum.values[-1]
data remove storage six:in sum.values[-1]

execute at @s if data storage six:in sum.values[0] run function six:_/impl/decimal/sum/each

data modify storage six:out sum.result set from entity @s Pos[1]

return 1