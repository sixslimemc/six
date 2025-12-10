#> six:_/load
# @ LOAD

scoreboard objectives add _six dummy

execute if score *o _ohenuhent matches 1 run say hi
say six loaded

# DEBUG
scoreboard players reset *init _six

execute unless score *init _six matches 1 run function six:_/init