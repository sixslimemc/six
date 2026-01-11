# IMPL > six:struc/kvpairs
# get_quoted_key
#--------------------
# ./bufloop
#--------------------

data modify storage six:in find_char.str set from storage six:_ v.kvpairs.buffer
data merge storage six:in {find_char:{char:':'}}
execute store result score *kvpairs.consumelength _six run function six:str/find_char
data merge storage six:_ {x:{1:"data modify storage six:_ v.kvpairs.entry.key set string storage six:_ v.kvpairs.buffer 0 "}}
execute store result storage six:_ x.2 int 1 run scoreboard players get *kvpairs.consumelength _six
function six:-/mline/2 with storage six:_ x

scoreboard players add *kvpairs.consumelength _six 1
