#> six:_/impl/set/difference/ordered/each
#--------------------
# ./do
#--------------------

# lambda:
data modify storage six:api difference append value {value:{}}
data modify storage six:api difference[-1].value set from storage six:_ eval[-1].in.a[0]
execute store result score *x _six run function six:_/impl/set/difference/ordered/each.1 with storage six:_ eval[-1].in
data remove storage six:api difference[-1]

execute if score *x _six matches 1 run function six:_/impl/set/difference/ordered/try_match with storage six:_ eval[-1].v

data remove storage six:_ eval[-1].in.a[0]
execute if data storage six:_ eval[-1].in.a[0] run function six:_/impl/set/difference/ordered/each