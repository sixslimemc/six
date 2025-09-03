#> six : string/find_char
#--------------------
# -> string: string
# -> char: string
#--------------------
# .
#--------------------
# TODO: description
#--------------------
# 0..: <char> was found at this index in <string>
# -1: <string> did not contain <char>, or <char> was not exactly 1 character.
#--------------------

data remove storage six:out find_char

execute store result score *x _six run function six:_/impl/string/find_char/main

data remove storage six:_ v.find_char
data remove storage six:in find_char

return run scoreboard players get *x _six