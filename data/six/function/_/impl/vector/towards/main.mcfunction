# IMPL > six : vector/towards
# main

data modify storage six:in towards.xrot set from storage six:in towards.rotation[0]
data modify storage six:in towards.yrot set from storage six:in towards.rotation[1]

execute summon marker run function six:_/impl/vector/towards/proxy with storage six:in towards