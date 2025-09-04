# IMPL > six:compound/kvpairs
# get_quoted_key
#--------------------
# ./bufloop
#--------------------

data modify storage six:in find_char.string set from storage six:_ v.kvpairs.buffer
data merge storage six:in {find_char:{char:':'}}
execute store result score *x _six run function six:string/find_char
data merge storage six:_ {x:{1:"data modify storage six:_ v.kvpairs.this_key set string storage six:_ v.kvpairs.buffer 0 "}}
execute store result storage six:_ x.2 int 1 run scoreboard players get *x _six
function six:-/mline/2

scoreboard players add *x _six 1
execute store result storage six:_ v.kvpairs.key_length int 1 run scoreboard players get *x _six
