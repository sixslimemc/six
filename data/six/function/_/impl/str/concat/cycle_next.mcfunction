# IMPL > six : str/concat
# cycle_next
#--------------------
# ./do
#--------------------

execute unless data storage six:_ v.concat.buffer[0] run return 0

execute store result score *x _six run data modify storage six:_ v.concat.buffer[-1] set value ","

data remove storage six:_ v.concat.buffer[-1]
execute if score *x _six matches 1 run function six:_/impl/str/concat/cycle_next