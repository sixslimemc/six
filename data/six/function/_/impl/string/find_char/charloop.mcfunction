# IMPL > six:string/find_char
# charloop
#--------------------
# ./main
#--------------------

execute if function six:_/impl/string/find_char/check run return 1

data modify storage six:in find_char.string set string storage six:in find_char.string 1
scoreboard players add *find_char.i _six 1
execute if score *find_char.i _six < *find_char.length _six run function six:_/impl/string/find_char/charloop