#> six:_/impl/set/intersection/main
#--------------------
# -> a[]: any
# -> b[]: any
#--------------------
# <- result[]: any
#--------------------
# # TODO: description
#--------------------
# 0..: count of items in >result<
#--------------------

scoreboard players set *intersection.count _six 0

data modify storage six:in map.items set from storage six:in intersection.a
data modify storage six:in map.transform set from storage six:in intersection.by