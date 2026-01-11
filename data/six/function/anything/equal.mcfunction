#> six : anything/equal

execute store success score *a _six if data storage six:in equal.a
execute store success score *b _six if data storage six:in equal.b
execute if score *a _six matches 0 if score *b _six matches 0 run return 1
execute if score *a _six matches 1 if score *b _six matches 0 run return 0
execute if score *a _six matches 0 if score *b _six matches 1 run return 0

execute store success score *x _six run data modify storage six:in equal.a set from storage six:in equal.b

data remove storage six:in equal

execute if score *x _six matches 0 run return 1
return 0