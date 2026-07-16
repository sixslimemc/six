#> six:_/impl/set/difference/each
#--------------------
# ./main
#--------------------

# lambda:
data modify storage six:api difference append value {value:{}}
data modify storage six:api difference[-1].value set from storage six:_ eval[-1].in.a[-1]
execute store result score *x _six run function six:_/impl/set/difference/each.1 with storage six:_ eval[-1].in
data remove storage six:api difference[-1]

execute if score *x _six matches 1 run function six:_/impl/set/difference/try_match with storage six:_ eval[-1].v

data remove storage six:_ eval[-1].in.a[-1]
execute if data storage six:_ eval[-1].in.a[0] run function six:_/impl/set/difference/each