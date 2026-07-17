# IMPL > six : str/concat
# do
#--------------------
# ./main
#--------------------
execute if score *statics _six matches 0 run kill @s

# get {..buffer}:
data modify entity @s text set value {plain:true, storage:"six:in", nbt:"concat.str_parts"}
data modify storage six:_ v.concat.buffer set from entity @s text.extra

# remove "]":
data remove storage six:_ v.concat.buffer[-1]

data modify storage six:_ v.concat.acc set value ""
data modify storage six:_ v.concat.acc_quote set value '"'

# accumulate string into {..acc}:
execute if data storage six:_ v.concat.buffer[0] run function six:_/impl/str/concat/bufloop

# set out:
data modify storage six:out concat.result set from storage six:_ v.concat.acc

return 1