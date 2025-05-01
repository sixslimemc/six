#> six:_/impl/set/intersection/ordered/each_b
#--------------------
# ./do
#--------------------


execute if data storage six:_ v.intersection.b_buffer[-1].value run data modify storage six:out intersection.b prepend from storage six:_ v.intersection.b_buffer[-1].value

data remove storage six:_ v.intersection.b_buffer[-1]
execute if data storage six:_ v.intersection.b_buffer[0] run function six:_/impl/set/intersection/ordered/each_b