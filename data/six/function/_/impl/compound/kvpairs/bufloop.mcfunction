# IMPL > six:compound/kvpairs
# bufloop
#--------------------
# ./main
#--------------------

# check quoted key
data modify storage six:_ v.kvpairs.start_char set string storage six:_ v.kvpairs.buffer 0 1
scoreboard players set *kvpairs.quoted _six 0
execute if data storage six:_ v.kvpairs{start_char:"'"} run scoreboard players set *kvpairs.quoted _six 1
execute if data storage six:_ v.kvpairs{start_char:'"'} run scoreboard players set *kvpairs.quoted _six 2

# get {..this_key}
execute if score *kvpairs.quoted _six matches 1.. run function six:_/impl/compound/kvpairs/get_quoted_key
execute unless score *kvpairs.quoted _six matches 1.. run function six:_/impl/compound/kvpairs/get_unquoted_key