# IMPL > six:str/find_char
# charloop
#--------------------
# ./main
#--------------------

execute if function six:_/impl/str/find_char/check run return 1

data modify storage six:in find_char.str set string storage six:in find_char.str 1
scoreboard players add *find_char.i _six 1
execute if score *find_char.i _six < *find_char.length _six run function six:_/impl/str/find_char/charloop