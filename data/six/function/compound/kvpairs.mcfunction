#> six : compound/kvpairs
#--------------------
# -> compound: compound
#--------------------
# <- result[]: {key: string, value: any}
#--------------------
# TODO: description
#--------------------
# 1.
#--------------------

data remove storage six:out kvpairs

function six:_/impl/compound/kvpairs/main

data remove storage six:_ v.kvpairs
data remove storage six:in kvpairs
scoreboard players reset *kvpairs.quotedkey _six

return 1