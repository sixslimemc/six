# IMPL > six:str/find_char
# check
#--------------------
# ./charloop
#--------------------

execute if score *find_char.escaped _six matches 1 run return run function six:_/impl/str/find_char/descape

data modify storage six:_ v.find_char.this_char set string storage six:in find_char.str 0 1

execute if score *find_char.do_escape _six matches 1.. if data storage six:_ v.find_char{this_char:"\\"} run scoreboard players set *find_char.escaped _six 1
execute if score *find_char.escaped _six matches 1 run return 0

execute store success score *x _six run data modify storage six:_ v.find_char.this_char set from storage six:in find_char.char
execute if score *x _six matches 0 run return 1

return 0