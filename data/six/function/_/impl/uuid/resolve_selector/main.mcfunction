#> six:_/impl/uuid/resolve_selector/main
#--------------------
# -> selector: $selector
#--------------------
# <- result[]: {uuid: uuid}
#--------------------
# TODO: description
#--------------------
# 0..: length of <result>
#--------------------

$execute as $(selector) run function six:_/impl/uuid/resolve_selector/add
return run execute if data storage six:out resolve_selector.result[]