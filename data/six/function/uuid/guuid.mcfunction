#> six : uuid/guuid
#--------------------
# -> uuid: uuid
#--------------------
# <- result: $guuid
#--------------------
# TODO: description
#--------------------
# 1.
#--------------------

data remove storage six:out guuid

function six:_/impl/uuid/guuid/main

data remove storage six:_ v.guuid
data remove storage six:in guuid

return 1