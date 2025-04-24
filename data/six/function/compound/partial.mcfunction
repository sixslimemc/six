#> six : compound/partial
#--------------------
# -> compound: compound
# -> get? PartialCompoundSpecifier
#--------------------
# <- result: obj
#--------------------
# removes some keys from <compound> according to:
#- if <get.only> is specified, removes all other keys.
#- if <get.without> is specified, removes those keys.
#- if neither are specified, removes no keys, >result< is just <compound>.
#--------------------
# 1.
#--------------------
# specifying both <get.only> and <get.without> works as expected.
# if <get.only> is specified but empty, >result< will be an empty compound ({}).
#--------------------

data remove storage six:out partial

function six:_/impl/compound/partial/main

data remove storage six:_ v.partial
data remove storage six:in partial

return 1