#> six : string/enquote
#--------------------
# -> string: string
#--------------------
# <- result: string
#--------------------
# TODO: description
#--------------------
# 1.
#--------------------

data remove storage six:out enquote

execute store result score *x _six run function six:_/impl/string/enquote/main

data remove storage six:_ v.enquote
data remove storage six:in enquote

return run scoreboard players get *x _six