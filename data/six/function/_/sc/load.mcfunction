#> six:_/sc/load
# @ LOAD

scoreboard objectives add _six dummy

# DEBUG
scoreboard players reset *init _six

execute unless score *init _six matches 1 run function six:_/sc/init