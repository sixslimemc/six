# six : str/enquote

data remove storage six:out enquote

execute store result score *x _six run function six:_/impl/str/enquote/main

data remove storage six:_ v.enquote
data remove storage six:in enquote

return 1