#> six : uuid/guuid
#--------------------
# -> uuid: Uuid
#--------------------
# <- result: Guuid
#--------------------
# TODO: description
#--------------------
# 1.
#--------------------

data modify storage six:out guuid set value {}

function six:_/impl/uuid/guuid/main

data remove storage six:_ v.guuid
data remove storage six:in guuid

return 1