# IMPL > six:struc/kvpairs
# main
kill @s

data modify storage six:out kvpairs.result set value []

data modify entity @s text set value {plain:true, storage:"six:in", nbt:"kvpairs.struc"}
data modify storage six:_ v.kvpairs.buffer set from entity @s text.extra
# remove last '}'
data remove storage six:_ v.kvpairs.buffer[-1]

scoreboard players set *kvpairs.brace_scope _six 0
scoreboard players set *kvpairs.bracket_scope _six 0

execute if data storage six:_ v.kvpairs.buffer[0] run function six:_/impl/struc/kvpairs/bufloop
