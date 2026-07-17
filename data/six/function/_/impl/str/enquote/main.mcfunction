# IMPL > six : str/enquote
# main AS [text display]
execute if score *statics _six matches 0 run kill @s

data modify storage six:_ v.enquote.ptext.key set from storage six:in enquote.str
data modify entity @s text set value {storage:"six:_", nbt:"v.enquote.ptext", plain:true}

data modify storage six:_ v.enquote.text set from entity @s text
data modify storage six:_ v.enquote.quote set from storage six:_ v.enquote.text.extra[5]
data modify storage six:_ v.enquote.string set from storage six:_ v.enquote.text.extra[6]
function six:_/impl/str/enquote/set with storage six:_ v.enquote