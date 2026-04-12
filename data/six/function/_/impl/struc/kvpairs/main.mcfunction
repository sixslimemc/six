# IMPL > six:struc/kvpairs
# main
kill @s

data modify storage six:out kvpairs.result set value []

data modify entity @s text set value {plain:true, storage:"six:in", nbt:"kvpairs.struc"}
data modify storage six:_ v.kvpairs.buffer set from entity @s text.extra

execute store result score *kvpairs.token_count _six if data storage six:_ v.kvpairs.buffer[]
scoreboard players set *kvpairs.key_index _six 2

execute store result storage six:_ v.kvpairs.key_index int 1 run scoreboard players get *kvpairs.key_index _six
execute if score *kvpairs.key_index _six < *kvpairs.token_count _six run function six:_/impl/struc/kvpairs/next_key with storage six:_ v.kvpairs

return 1