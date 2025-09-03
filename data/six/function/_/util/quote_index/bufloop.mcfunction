#> six:_/util/quote_index
# bufloop
#--------------------
# ./main
#--------------------

$execute store success score *quote_index.continue _six run data modify storage six:_ v.quote_index.buffer set string storage six:_ util.quote_index.string $(istart) $(iend)
$execute if score *quote_index.continue _six matches 0 run data modify storage six:_ v.quote_index.buffer set string storage six:_ util.quote_index.string $(istart)

scoreboard players set *x _six 0

# buffer[0]
execute unless score *quote_index.escape _six matches 0 run data modify storage six:_ v.quote_index.char set string storage six: v.quote_index.buffer 0 1
execute unless score *quote_index.escape _six matches 0 if score *quote_index.type _six matches 1 store success score *x _six if data storage six:_ v.quote_index{char:"'"}
execute if score *quote_index.type _six matches 2 store success score *x _six if data storage six:_ v.quote_index{char:"'"}
execute unless score *quote_index.escape _six matches 0 if score *x _six matches 1 run return run scoreboard players set *quote_index.result _six 0
execute unless score *quote_index.escape _six matches 0 if data storage six:_ v.quote_index{char:"\\"} run scoreboard players set *quote_index.escape _six 1

# buffer[1]
execute unless score *quote_index.escape _six matches 1 run data modify storage six:_ v.quote_index.char set string storage six: v.quote_index.buffer 1 2
execute unless score *quote_index.escape _six matches 1 if score *quote_index.type _six matches 1 store success score *x _six if data storage six:_ v.quote_index{char:"'"}
execute unless score *quote_index.escape _six matches 1 if score *quote_index.type _six matches 2 store success score *x _six if data storage six:_ v.quote_index{char:"'"}
execute unless score *quote_index.escape _six matches 1 if score *x _six matches 1 run return run scoreboard players set *quote_index.result _six 1
execute unless score *quote_index.escape _six matches 1 if data storage six:_ v.quote_index{char:"\\"} run scoreboard players set *quote_index.escape _six 2

# buffer[2]
execute unless score *quote_index.escape _six matches 2 run data modify storage six:_ v.quote_index.char set string storage six: v.quote_index.buffer 2 3
execute unless score *quote_index.escape _six matches 2 if score *quote_index.type _six matches 1 store success score *x _six if data storage six:_ v.quote_index{char:"'"}
execute unless score *quote_index.escape _six matches 2 if score *quote_index.type _six matches 2 store success score *x _six if data storage six:_ v.quote_index{char:"'"}
execute unless score *quote_index.escape _six matches 2 if score *x _six matches 1 run return run scoreboard players set *quote_index.result _six 2
execute unless score *quote_index.escape _six matches 2 if data storage six:_ v.quote_index{char:"\\"} run scoreboard players set *quote_index.escape _six 3

# buffer[3]
execute unless score *quote_index.escape _six matches 3 run data modify storage six:_ v.quote_index.char set string storage six: v.quote_index.buffer 3 4
execute unless score *quote_index.escape _six matches 3 if score *quote_index.type _six matches 1 store success score *x _six if data storage six:_ v.quote_index{char:"'"}
execute unless score *quote_index.escape _six matches 3 if score *quote_index.type _six matches 2 store success score *x _six if data storage six:_ v.quote_index{char:"'"}
execute unless score *quote_index.escape _six matches 3 if score *x _six matches 1 run return run scoreboard players set *quote_index.result _six 3
execute unless score *quote_index.escape _six matches 3 if data storage six:_ v.quote_index{char:"\\"} run scoreboard players set *quote_index.escape _six 4

# buffer[4]
execute unless score *quote_index.escape _six matches 4 run data modify storage six:_ v.quote_index.char set string storage six: v.quote_index.buffer 4 5
execute unless score *quote_index.escape _six matches 4 if score *quote_index.type _six matches 1 store success score *x _six if data storage six:_ v.quote_index{char:"'"}
execute unless score *quote_index.escape _six matches 4 if score *quote_index.type _six matches 2 store success score *x _six if data storage six:_ v.quote_index{char:"'"}
execute unless score *quote_index.escape _six matches 4 if score *x _six matches 1 run return run scoreboard players set *quote_index.result _six 4
execute unless score *quote_index.escape _six matches 4 if data storage six:_ v.quote_index{char:"\\"} run scoreboard players set *quote_index.escape _six 5

# buffer[5]
execute unless score *quote_index.escape _six matches 5 run data modify storage six:_ v.quote_index.char set string storage six: v.quote_index.buffer 5 6
execute unless score *quote_index.escape _six matches 5 if score *quote_index.type _six matches 1 store success score *x _six if data storage six:_ v.quote_index{char:"'"}
execute unless score *quote_index.escape _six matches 5 if score *quote_index.type _six matches 2 store success score *x _six if data storage six:_ v.quote_index{char:"'"}
execute unless score *quote_index.escape _six matches 5 if score *x _six matches 1 run return run scoreboard players set *quote_index.result _six 5
execute unless score *quote_index.escape _six matches 5 if data storage six:_ v.quote_index{char:"\\"} run scoreboard players set *quote_index.escape _six 6

# buffer[6]
execute unless score *quote_index.escape _six matches 6 run data modify storage six:_ v.quote_index.char set string storage six: v.quote_index.buffer 6 7
execute unless score *quote_index.escape _six matches 6 if score *quote_index.type _six matches 1 store success score *x _six if data storage six:_ v.quote_index{char:"'"}
execute unless score *quote_index.escape _six matches 6 if score *quote_index.type _six matches 2 store success score *x _six if data storage six:_ v.quote_index{char:"'"}
execute unless score *quote_index.escape _six matches 6 if score *x _six matches 1 run return run scoreboard players set *quote_index.result _six 6
execute unless score *quote_index.escape _six matches 6 if data storage six:_ v.quote_index{char:"\\"} run scoreboard players set *quote_index.escape _six 7

# buffer[7]
execute unless score *quote_index.escape _six matches 7 run data modify storage six:_ v.quote_index.char set string storage six: v.quote_index.buffer 7 8
execute unless score *quote_index.escape _six matches 7 if score *quote_index.type _six matches 1 store success score *x _six if data storage six:_ v.quote_index{char:"'"}
execute unless score *quote_index.escape _six matches 7 if score *quote_index.type _six matches 2 store success score *x _six if data storage six:_ v.quote_index{char:"'"}
execute unless score *quote_index.escape _six matches 7 if score *x _six matches 1 run return run scoreboard players set *quote_index.result _six 7
execute unless score *quote_index.escape _six matches 7 if data storage six:_ v.quote_index{char:"\\"} run scoreboard players set *quote_index.escape _six 8

# loop
execute if score *quote_index.continue _six matches 0 run return 0
execute unless score *quote_index.escape _six matches 8 run scoreboard players set *quote_index.escape _six -1
execute if score *quote_index.escape _six matches 8 run scoreboard players set *quote_index.escape _six 0
scoreboard players add *quote_index.istart _six 8
scoreboard players add *quote_index.iend _six 8
execute store result storage six:_ v.quote_index.istart int 1 run scoreboard players get *quote_index.istart _six
execute store result storage six:_ v.quote_index.iend int 1 run scoreboard players get *quote_index.iend _six
function six:_/util/quote_index/bufloop with storage six:_ v.quote_index