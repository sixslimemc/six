#> six:_/impl/list/initialize/each
#--------------------
# ./main
#--------------------

data modify storage six:out initialize.result append from storage six:in initialize.value
scoreboard players remove *initialize.left _six 1
execute if score *initialize.left _six matches 1.. run function six:_/impl/list/initialize/each
