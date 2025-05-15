# IMPL > six : vector/add
# main

data modify storage six:_ v.add.xa set from storage six:in add.a[0]
data modify storage six:_ v.add.ya set from storage six:in add.a[1]
data modify storage six:_ v.add.za set from storage six:in add.a[2]

data modify storage six:_ v.add.xb set from storage six:in add.b[0]
data modify storage six:_ v.add.yb set from storage six:in add.b[1]
data modify storage six:_ v.add.zb set from storage six:in add.b[2]

execute summon marker run function six:_/impl/vector/add/proxy with storage six:_ v.add