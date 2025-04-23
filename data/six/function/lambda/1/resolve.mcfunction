#> six : lambda/1/resolve
#--------------------
# -> lambda: Lambda<^T, ^R>
# -> direct: {in: $storage<^T>, out: $storage<^R>}
# => execute: bool = false
#--------------------
# -> result: Lamdar<^T, ^R>
#--------------------
# TODO
#--------------------
# ..:
#--------------------

data remove storage six:out resolve

data modify storage six:_ util.fill.in.lambda set from storage six:in resolve.lambda
function six:_/util/lambda/fill/main

data modify storage six:out resolve.result set from storage six:_ util.fill.out.result
data modify storage six:out resolve.result.from set from storage six:in resolve.direct.in
data modify storage six:out resolve.result.to set from storage six:in resolve.direct.out

scoreboard players set *x _six 1

execute if data storage six:in resolve{execute:true} store result score *x _six run function six:-/lambdar/1/execute with storage six:out resolve.result

data remove storage six:in resolve

return run scoreboard players get *x _six