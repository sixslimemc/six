#> six:_/util/quote_index
#--------------------
# {util.quote_index}
# -> string: string
#--------------------
# .
#--------------------
# 1..: quote index.
# 0: no end quote found / string did not start with quote.
#--------------------
#- finds the index of the ending quote of <string>, accounting for escapes and all that.
#- <string> must start with "'" or "'".

data modify storage six:_ v.quote_index.start set string storage six:_ util.quote_index.string 0 1

scoreboard players set *quote_index.type _six 0
execute if data storage six:_ v.quote_index{start:"'"} run scoreboard players set *quote_index.type _six 1
execute if data storage six:_ v.quote_index{start:'"'} run scoreboard players set *quote_index.type _six 2
execute if score *quote_index.type _six matches 0 run return 0

scoreboard players set *quote_index.result _six -1

scoreboard players set *quote_index.istart _six 1
scoreboard players set *quote_index.iend _six 9
scoreboard players set *quote_index.escape _six -1
execute store result storage six:_ v.quote_index.istart int 1 run scoreboard players get *quote_index.istart _six
execute store result storage six:_ v.quote_index.iend int 1 run scoreboard players get *quote_index.iend _six
function six:_/util/quote_index/bufloop with storage six:_ v.quote_index

execute if score *quote_index.result _six matches -1 run return 0

scoreboard players operation *quote_index.result _six += *quote_index.istart _six

data remove storage six:_ v.quote_index
data remove storage six:_ util.quote_index

return run scoreboard players get *quote_index.result _six