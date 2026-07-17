#> six : str/stringify

data remove storage six:out stringify

execute if score *statics _six matches 1 as 6bbbafcb-bcca-43f2-8528-91a6e98fa864 store result score *x _six run function six:_/impl/str/stringify/main
execute if score *statics _six matches 0 summon text_display store result score *x _six run function six:_/impl/str/stringify/main

data remove storage six:in stringify
data remove storage six:_ v.stringify
scoreboard players reset *stringify.quote_success

return run scoreboard players get *x _six