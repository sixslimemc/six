# IMPL > six:compound/kvpairs
# bufloop
#--------------------
# ./main
#--------------------

data modify storage six:_ v.kvpairs.cchar set string storage six:_ v.kvpairs.buffer 0 1
scoreboard players set *kvpairs.quotedkey _six 0
execute if data storage six:_ v.kvpairs{cchar:'"'} run scoreboard players set *kvpairs.quotedkey _six 1
execute if data storage six:_ v.kvpairs{cchar:"'"} run scoreboard players set *kvpairs.quotedkey _six 1

# {..this_key}
execute if score *kvpairs.quotedkey _six matches 1 run function six:_/impl/compound/kvpairs/get_quoted_key
execute unless score *kvpairs.quotedkey _six matches 1 run function six:_/impl/compound/kvpairs/get_unquoted_key