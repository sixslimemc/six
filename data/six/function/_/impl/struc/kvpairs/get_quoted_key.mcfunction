# IMPL > six:struc/kvpairs
# get_quoted_key
#--------------------
# ./bufloop
#--------------------

data merge storage six:in {find_char:{do_inner_escape:true}}
execute if score *kvpairs.quoted _six matches 1 run data merge storage six:in {find_char:{char:"'"}}
execute if score *kvpairs.quoted _six matches 2 run data merge storage six:in {find_char:{char:'"'}}
data modify storage six:in find_char.str set string storage six:_ v.kvpairs.buffer 1
execute store result score *x _six run function six:str/find_char
scoreboard players add *x _six 1
data merge storage six:_ {x:{1:"data modify storage six:_ v.kvpairs.entry.key set string storage six:_ v.kvpairs.buffer 1 "}}
execute store result storage six:_ x.2 int 1 run scoreboard players get *x _six
function six:-/mline/2 with storage six:_ x

execute store result score *kvpairs.consumelength _six run data get storage six:_ v.kvpairs.entry.key
# quotes plus ':'
scoreboard players add *kvpairs.consumelength _six 3