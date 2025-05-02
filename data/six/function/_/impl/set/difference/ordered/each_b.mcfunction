#> six:_/impl/set/difference/ordered/each_b
#--------------------
# ./do
#--------------------


execute if data storage six:_ v.difference.b_buffer[-1].value run data modify storage six:out difference.b prepend from storage six:_ v.difference.b_buffer[-1].value

data remove storage six:_ v.difference.b_buffer[-1]
execute if data storage six:_ v.difference.b_buffer[0] run function six:_/impl/set/difference/ordered/each_b