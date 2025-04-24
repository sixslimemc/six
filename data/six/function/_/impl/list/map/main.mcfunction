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

scoreboard players set *map.return _six 0

# resolve lambda
data modify storage lambda:in resolve.lambda set from storage six:in map.transform
data merge storage lambda:in {resolve:{direct:{in: 'six:in map.items[-1]', out:'six:out map.result[0]'}}}
function lambda:1/resolve
data modify storage six:_ v.map.lambdar set from storage lambda:out resolve.result

execute if data storage six:in map.items[0] run function six:_/impl/list/map/each

return run scoreboard players get *map.return _six