# IMPL > six : str/concat
# do
#--------------------
# ./main
#--------------------
# should always start on a quote character

# get {..quote}:
data modify storage six:_ v.concat.quote set from storage six:_ v.concat.buffer[-1]
data remove storage six:_ v.concat.buffer[-1]

# get {..string}:
data modify storage six:_ v.concat.string set from storage six:_ v.concat.buffer[-1]
data remove storage six:_ v.concat.buffer[-1]

# fix {..string} if wrong quote type:
data modify storage six:_ x.quote set from storage six:_ v.concat.quote
execute store result score *concat.fix_quote _six run data modify storage six:_ x.quote set from storage six:_ v.concat.acc_quote
execute if score *concat.fix_quote _six matches 1 run function six:_/impl/str/concat/fix_string with storage six:_ v.concat

# stupid freaking resolve {..acc}:
data modify entity @s text set value {plain:true, storage:"six:_", nbt:"v.concat.acc"}
data modify storage six:_ v.concat.acc set from entity @s text.extra[1]

# concat to {..acc}:
function six:_/impl/str/concat/concat with storage six:_ v.concat

# update {..acc_quote}:
execute if score *concat.fix_quote _six matches 1 run data modify entity @s text set value {plain:true, storage:"six:_", nbt:"v.concat.acc"}
execute if score *concat.fix_quote _six matches 1 run data modify storage six:_ v.concat.acc_quote set from entity @s text.extra[0]

# cycle to next quote:
function six:_/impl/str/concat/cycle_next

execute if data storage six:_ v.concat.buffer[0] run function six:_/impl/str/concat/bufloop