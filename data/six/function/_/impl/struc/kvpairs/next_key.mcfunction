# IMPL > six : struc/kvpairs
# next_key
#--------------------
# ./main
#--------------------

data remove storage six:_ v.kvpairs.key_token
$execute store success score *x _six run data modify storage six:_ v.kvpairs.key_token set from storage six:_ v.kvpairs.buffer[$(key_index)]
execute if score *x _six matches 0 run return 0

data modify storage six:_ v.kvpairs.result_entry set value {key:"", key_quote_type:"'", value:true}

# check if quoted key:
execute store success score *x _six if data storage six:_ v.kvpairs.key_token.extra
execute if score *x _six matches 0 run data modify storage six:_ v.kvpairs.result_entry.key set from storage six:_ v.kvpairs.key_token
execute if score *x _six matches 1 run data modify storage six:_ v.kvpairs.result_entry.key set from storage six:_ v.kvpairs.key_token.extra[0]
execute if score *x _six matches 1 run data modify storage six:_ v.kvpairs.result_entry.key_quote_type set from storage six:_ v.kvpairs.text

# set {..result_entry.value}
function six:_/impl/struc/kvpairs/get_value with storage six:_ v.kvpairs.result_entry

data modify storage six:out kvpairs.result append from storage six:_ v.kvpairs.result_entry

# count and skip elements that are part of the key's value:
data modify entity @s text set value {plain:true, storage:"six:_", nbt:"v.kvpairs.result_entry.value"}
execute store result score *x _six if data entity @s text.extra[]
scoreboard players operation *kvpairs.key_index _six += *x _six

# skip ':', ',', ' ', and '' tokens:
scoreboard players add *kvpairs.key_index _six 4

# return if no more tokens:
execute unless score *kvpairs.key_index _six < *kvpairs.token_count _six run return 0

execute store result storage six:_ v.kvpairs.key_index int 1 run scoreboard players get *kvpairs.key_index _six
function six:_/impl/struc/kvpairs/next_key with storage six:_ v.kvpairs