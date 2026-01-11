# IMPL > six:struc/kvpairs
# bufloop
#--------------------
# ./main
#--------------------

data modify storage six:_ v.kvpairs.entry set value {key:"", value:""}

# check quoted key
data modify storage six:_ v.kvpairs.start_char set string storage six:_ v.kvpairs.buffer 0 1
scoreboard players set *kvpairs.quoted _six 0
execute if data storage six:_ v.kvpairs{start_char:"'"} run scoreboard players set *kvpairs.quoted _six 1
execute if data storage six:_ v.kvpairs{start_char:'"'} run scoreboard players set *kvpairs.quoted _six 2

# get {..entry.key} and *consumelength
# {*consumelength} includes ':'
execute if score *kvpairs.quoted _six matches 1.. run function six:_/impl/struc/kvpairs/get_quoted_key
execute unless score *kvpairs.quoted _six matches 1.. run function six:_/impl/struc/kvpairs/get_unquoted_key

# get {..entry.value}
function six:_/impl/struc/kvpairs/get_value with storage six:_ v.kvpairs.entry

# add value length to *consumelength
data modify storage six:in stringify.object.val set from storage six:_ v.kvpairs.entry.value
function six:str/stringify
execute store result score *x _six run data get storage six:out stringify.result
scoreboard players operation *kvpairs.consumelength _six += *x _six
# subtract '{val:' and '}', but add ',' (-6 + 1)
scoreboard players remove *kvpairs.consumelength _six 5

# append result:
data modify storage six:out kvpairs.result append from storage six:_ v.kvpairs.entry

# consume buffer:
execute store result storage six:_ x.consumelength int 1 run scoreboard players get *kvpairs.consumelength _six
function six:_/impl/struc/kvpairs/consume_buffer with storage six:_ x
scoreboard players operation *kvpairs.buflength _six -= *kvpairs.consumelength _six

execute if score *kvpairs.buflength _six matches 1.. run function six:_/impl/struc/kvpairs/bufloop