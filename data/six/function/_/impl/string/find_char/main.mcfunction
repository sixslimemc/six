# IMPL > six:string/find_char
# main

execute store result score *x _six run data get storage six:in find_char.char
execute unless score *x _six matches 1 run return -2

execute store result score *find_char.length _six run data get storage six:in find_char.string
scoreboard players set *find_char.i _six 0

execute if score *find_char.i _six < *find_char.length _six run function six:_/impl/string/find_char/charloop

execute if score *find_char.i _six >= *find_char.length _six run return -1
return run scoreboard players get *find_char.i _six
