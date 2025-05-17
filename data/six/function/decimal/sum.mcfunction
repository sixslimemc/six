#> six : decimal/sum
#--------------------
# -> numbers[]: number
#--------------------
# <- result: number
#--------------------
# TODO: description
#--------------------
# 1: <numbers> contained at least 1 element.
# 0: <numbers> was empty; >result< = 0.
#--------------------

data remove storage six:out sum

execute store result score *x _six run function six:_/impl/decimal/sum/main
execute if score *x _six matches 0 run data merge storage six:out {sum:{result:0}}

data remove storage six:_ v.sum
data remove storage six:in sum

return run scoreboard players get *x _six