#> six:_/impl/list/map/main
# ^ T
# ^ R
#--------------------
# -> list[]: ^T
# -> transform: Lambda<^T, ^R>
#--------------------
# <- result[]: ^R
#--------------------
# 
#--------------------
# 1.
#--------------------

# resolve lambda
data modify storage six:in resolve.lambda set from storage six:in map.transform
data merge storage six:in {resolve:{direct:{in: 'six:in map.items[-1]', out:'six:out map.result[0]'}}}
function six:lambda/1/resolve
data modify storage six:_ impl.map.lambdar set from storage six:out resolve.result

execute if data storage six:in map.items[0] run function six:_/impl/list/map/each
