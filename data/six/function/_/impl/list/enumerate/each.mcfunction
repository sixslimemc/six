#> six:_/impl/list/enumerate/each
#--------------------
# ./main
#--------------------

data modify storage six:out enumerate.result prepend value {index:0, value:0}
data modify storage six:out enumerate.result[0].value set from storage six:in enumerate.list[-1]
execute store result storage six:out enumerate.result[0].index int 1 run scoreboard players get *enumerate.index _six

scoreboard players add *enumerate.index _six 1
data remove storage six:in enumerate.list[-1]
execute if data storage six:in enumerate.list[0] run function six:_/impl/list/enumerate/each
