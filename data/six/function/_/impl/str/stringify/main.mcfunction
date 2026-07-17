# IMPL > six : str/stringify
# main AS [text display]
execute if score *statics _six matches 0 run kill @s

# return if already string:
execute store success score *x _six run data modify storage six:_ v.stringify.check set string storage six:in stringify.object 0
execute if score *x _six matches 1 run data modify storage six:out stringify.result set from storage six:in stringify.object
execute if score *x _six matches 1 run return 1

# return if easy macro sub:
scoreboard players set *stringify.quote_success _six 0
function six:_/impl/str/stringify/check_squote with storage six:in stringify
execute if score *stringify.quote_success _six matches 1 run return 1
function six:_/impl/str/stringify/check_dquote with storage six:in stringify
execute if score *stringify.quote_success _six matches 1 run return 1

# ~ nuclear text concat:

data modify entity @s text set value {storage:'six:in', nbt:'stringify.object', plain:true}
data modify storage six:_ v.stringify.buffer set from entity @s text

data modify storage six:_ v.stringify.concat set value []
execute if data storage six:_ v.stringify.buffer[0] run function six:_/impl/str/stringify/buffer/loop

data modify storage six:in concat.parts set from storage six:_ v.stringify.concat
function six:str/concat
data modify storage six:out stringify.result set from storage six:out concat.result

return 1