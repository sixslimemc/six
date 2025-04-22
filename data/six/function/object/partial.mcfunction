#> six : object/partial
#--------------------
# -> object: obj
# -> get: PartialObjectSpecifier
#--------------------
# <- result: obj
#--------------------
# removes some keys from <object> according to:
#- if <get.only> is specified, removes all other keys.
#- if <get.without> is specified, removes those keys.
#- if neither are specified, removes no keys, >result< is just <object>.
#--------------------
# 1: N/A
#--------------------
# specifying both <get.only> and <get.without> works as expected.
# if <get.only> is specified but empty, >result< will be an empty object ({}).
#--------------------

data remove storage six:out partial

function six:_/impl/object/partial/main

data remove storage six:_ impl.partial
data remove storage six:in partial

return 1