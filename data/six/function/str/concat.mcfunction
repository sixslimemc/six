#> six : str/concat

data remove storage six:out concat

execute if score *statics _six matches 1 as 6bbbafcb-bcca-43f2-8528-91a6e98fa864 store result score *x _six run function six:_/impl/str/concat/main
execute if score *statics _six matches 0 summon text_display store result score *x _six run function six:_/impl/str/concat/main

data remove storage six:_ v.concat
data remove storage six:in concat

return run scoreboard players get *x _six