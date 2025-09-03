# IMPL > six:string/find_char
# charloop
#--------------------
# ./main
#--------------------

data modify storage six:_ v.find_char.compare set string storage six:in find_char.string 0 1
execute store success score *x _six run data modify storage six:_ v.find_char.compare set from storage six:in find_char.char
execute if score *x _six matches 0 run return 1

data modify storage six:in find_char.string set string storage six:in find_char.string 1
scoreboard players add *find_char.i _six 1
execute if score *find_char.i _six < *find_char.length _six run function six:_/impl/string/find_char/charloop