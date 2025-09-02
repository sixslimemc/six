#> six:_/util/quote_index
# bufloop
#--------------------
# ./main
#--------------------

$execute store success score *quote_index.continue _six run data modify storage six:_ v.quote_index.buffer set string storage six:_ util.quote_index.string $(istart) $(iend)
$execute if score *quote_index.continue _six matches 0 run data modify storage six:_ v.quote_index.buffer set string storage six:_ util.quote_index.string $(istart)

scoreboard players set *x _six 0

# buffer[0]
data modify storage six:_ v.quote_index.char set string storage six: v.quote_index.buffer 0 1
execute if score *quote_index.type _six matches 1 store success score *x _six if data storage six:_ v.quote_index{char:"'"}
execute if score *quote_index.type _six matches 2 store success score *x _six if data storage six:_ v.quote_index{char:"'"}
execute if score *x _six matches 1 run return run scoreboard players set *quote_index.result _six 0

# buffer[1]
data modify storage six:_ v.quote_index.char set string storage six: v.quote_index.buffer 1 2
execute if score *quote_index.type _six matches 1 store success score *x _six if data storage six:_ v.quote_index{char:"'"}
execute if score *quote_index.type _six matches 2 store success score *x _six if data storage six:_ v.quote_index{char:"'"}
execute if score *x _six matches 1 run return run scoreboard players set *quote_index.result _six 1

# buffer[2]
data modify storage six:_ v.quote_index.char set string storage six: v.quote_index.buffer 2 3
execute if score *quote_index.type _six matches 1 store success score *x _six if data storage six:_ v.quote_index{char:"'"}
execute if score *quote_index.type _six matches 2 store success score *x _six if data storage six:_ v.quote_index{char:"'"}
execute if score *x _six matches 1 run return run scoreboard players set *quote_index.result _six 2

# buffer[3]
data modify storage six:_ v.quote_index.char set string storage six: v.quote_index.buffer 3 4
execute if score *quote_index.type _six matches 1 store success score *x _six if data storage six:_ v.quote_index{char:"'"}
execute if score *quote_index.type _six matches 2 store success score *x _six if data storage six:_ v.quote_index{char:"'"}
execute if score *x _six matches 1 run return run scoreboard players set *quote_index.result _six 3

# buffer[4]
data modify storage six:_ v.quote_index.char set string storage six: v.quote_index.buffer 4 5
execute if score *quote_index.type _six matches 1 store success score *x _six if data storage six:_ v.quote_index{char:"'"}
execute if score *quote_index.type _six matches 2 store success score *x _six if data storage six:_ v.quote_index{char:"'"}
execute if score *x _six matches 1 run return run scoreboard players set *quote_index.result _six 4

# buffer[5]
data modify storage six:_ v.quote_index.char set string storage six: v.quote_index.buffer 5 6
execute if score *quote_index.type _six matches 1 store success score *x _six if data storage six:_ v.quote_index{char:"'"}
execute if score *quote_index.type _six matches 2 store success score *x _six if data storage six:_ v.quote_index{char:"'"}
execute if score *x _six matches 1 run return run scoreboard players set *quote_index.result _six 5

# buffer[6]
data modify storage six:_ v.quote_index.char set string storage six: v.quote_index.buffer 6 7
execute if score *quote_index.type _six matches 1 store success score *x _six if data storage six:_ v.quote_index{char:"'"}
execute if score *quote_index.type _six matches 2 store success score *x _six if data storage six:_ v.quote_index{char:"'"}
execute if score *x _six matches 1 run return run scoreboard players set *quote_index.result _six 6

# buffer[7]
data modify storage six:_ v.quote_index.char set string storage six: v.quote_index.buffer 7 8
execute if score *quote_index.type _six matches 1 store success score *x _six if data storage six:_ v.quote_index{char:"'"}
execute if score *quote_index.type _six matches 2 store success score *x _six if data storage six:_ v.quote_index{char:"'"}
execute if score *x _six matches 1 run return run scoreboard players set *quote_index.result _six 7

# loop
execute if score *quote_index.continue _six matches 0 run return 0
scoreboard players add *quote_index.istart _six 8
scoreboard players add *quote_index.iend _six 8
execute store result storage six:_ v.quote_index.istart int 1 run scoreboard players get *quote_index.istart _six
execute store result storage six:_ v.quote_index.iend int 1 run scoreboard players get *quote_index.iend _six
function six:_/util/quote_index/bufloop with storage six:_ v.quote_index