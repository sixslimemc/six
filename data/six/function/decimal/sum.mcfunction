#> six : decimal/sum
#--------------------
# -> values[]: number
#--------------------
# <- result: number
#--------------------
# TODO: description
#--------------------
# 1: <values> contained at least 1 element.
# 0: <values> was empty; >result< = 0.
#--------------------

data remove storage six:out sum

execute if score *statics _six matches 1 store result score *x _six as 358a978f-e286-48d3-bcde-81106c020d2f run function six:_/impl/decimal/sum/main_static
execute unless score *statics _six matches 1 store result score *x _six positioned ~ 0.0 ~ summon marker run function six:_/impl/decimal/sum/main
execute if score *x _six matches 0 run data merge storage six:out {sum:{result:0}}

data remove storage six:_ v.sum
data remove storage six:in sum

return run scoreboard players get *x _six