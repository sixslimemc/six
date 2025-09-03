#> six : string/find_char
#--------------------
# -> string: string
# -> char: string
# => do_inner_escape: bool = false
#--------------------
# .
#--------------------
# TODO: description
# <do_inner_escape> is really only useful if <char> is " or '.
#--------------------
# 0..: <char> was found at this index in <string>
# -1: <string> did not contain <char>
# -2: <char> was not exactly 1 character
#--------------------

data remove storage six:out find_char

execute store result score *x _six run function six:_/impl/string/find_char/main

data remove storage six:_ v.find_char
data remove storage six:in find_char
scoreboard players reset *find_char.i
scoreboard players reset *find_char.length
scoreboard players reset *find_char.do_escape
scoreboard players reset *find_char.escaped

return run scoreboard players get *x _six