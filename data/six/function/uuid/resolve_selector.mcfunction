#> six : uuid/resolve_selector
#--------------------
# -> selector: $selector
#--------------------
# <- result[]: {uuid: uuid}
#--------------------
# TODO: description
#--------------------
# 0..: length of <result>
#--------------------

data remove storage six:out resolve_selector

execute store result score *x _six run function six:_/impl/uuid/resolve_selector/main with storage six:in resolve_selector

data remove storage six:in resolve_selector

return run scoreboard players get *x _six